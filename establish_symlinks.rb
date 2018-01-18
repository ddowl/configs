#!/usr/bin/env ruby
require 'bundler/setup'
require 'os'
require 'find'

VIM_DIR_REGEXP = /\/.vim\//

def is_blacklisted(file)
  # Blacklist regexs
  blacklist = [/\/iterm2\//, /\/sessions\//, /\/vendor\//]
  # Block mapping configs based on OS
  if OS.mac?
    blacklist << /\/debian\//
  else # OS.linux?
    blacklist << /\/mac\//
  end

  blacklist.select { |regex| regex =~ file }.any?
end

def is_vim_package(file)
  VIM_DIR_REGEXP.match(file)
end

def vim_package_path(vim_package_file)
  "~/.vim/#{vim_package_file.rpartition(VIM_DIR_REGEXP)[2]}"
end


if OS.windows?
  puts "Haha, this won't work for Windows machines"
  exit 1
elsif Dir.pwd.split('/').last != 'configs'
  puts "Please run establish_symlinks in the 'configs' checkout directory"
  exit 1
end

immediate_child_dirs = Dir["#{Dir.pwd}/*/"]
all_config_files = immediate_child_dirs.map do |dir|
  Find.find(dir) do |e|

    if File.file?(e)
      if is_blacklisted(e)
        next
      elsif is_vim_package(e)
        # files in the '.vim' dir belong in ~/.vim/ 
        target = vim_package_path(e)
      else
        # everything else belongs in ~/
        target = "~/#{File.basename(e)}"
      end
      source = e

      #puts "Linking #{target} -> #{source}"

      target_dir = File.dirname(target)
      unless Dir.exists?(target_dir)
        `mkdir -p #{target_dir}`
      end
      `ln -sfv #{source} #{target}`
    end

  end
end
