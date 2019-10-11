#!/usr/bin/env ruby
require 'bundler/setup'
require 'os'
require 'find'

VIM_DIR_REGEXP = /\/.vim\//
OH_MY_ZSH_DIR_REGEXP = /\/.oh-my-zsh\//

def is_blacklisted(file)
  # Blacklist regexs
  blacklist = [
    /\/iterm2\//,
    /\/sessions\//,
    /\/vendor\//,
    /\/liquidprompt\// # Need to just symlink binary, or sync to ~/.liquidprompt
  ]
  # Block mapping configs based on OS
  if OS.mac?
    blacklist << /\/debian\//
  else # OS.linux?
    blacklist << /\/mac\//
  end

  blacklist.select { |regex| regex =~ file }.any?
end

def is_vim(file)
  VIM_DIR_REGEXP.match(file)
end

def vim_path(vim_file)
  "~/.vim/#{vim_file.rpartition(VIM_DIR_REGEXP)[2]}"
end

def is_oh_my_zsh(file)
  OH_MY_ZSH_DIR_REGEXP.match(file)
end

def oh_my_zsh_path(oh_my_zsh_file)
  "~/.oh-my-zsh/#{oh_my_zsh_file.rpartition(OH_MY_ZSH_DIR_REGEXP)[2]}"
end


if OS.windows?
  puts "Haha, this won't work for Windows machines"
  exit 1
elsif Dir.pwd.split('/').last != 'configs'
  puts "Please run establish_symlinks in the 'configs' checkout directory"
  exit 1
end

immediate_child_dirs = Dir["#{Dir.pwd}/*/"]
_ = immediate_child_dirs.map do |dir|
  Find.find(dir) do |e|

    if File.file?(e)
      if is_blacklisted(e)
        next
      elsif is_vim(e)
        # files in the '.vim' dir belong in ~/.vim/ 
        target = vim_path(e)
      elsif is_oh_my_zsh(e)
        # files in the '.oh_my_zsh' dir belong in ~/.oh-my-zsh/ 
        target = oh_my_zsh_path(e)
      else
        # everything else belongs in ~/
        target = "~/#{File.basename(e)}"
      end
      source = e

      puts "Linking #{target} -> #{source}"

      target_dir = File.dirname(target)
      unless Dir.exists?(target_dir)
        `mkdir -p #{target_dir}`
      end
      `ln -sfv #{source} #{target}`
    end

  end
end
