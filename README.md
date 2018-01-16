# configs
## My personal configs (Bash, Vim, Git, etc)

### Installation
Install using `git clone --recursive`, or if you've already cloned the repo use `git submodule update --init --recursive` to instantiate the submodules.

Alternatively, you can run `./setupSubmodules` in the checkout directory, which will also get the latest version of each submodule.

Please execute setup scripts in the checkout directory

For now, manually copy each override each config file you want with one in the checkout. Vimdiff support to be added soon...

### Vimdiff
It's just a text editor, don't be afraid! Here's how to use Vimdiff to manually apply changes to your local config files.

`do` - Get changes from other window into the current window.

`dp` - Put the changes from current window into the other window.

`]c` - Jump to the next change.

`[c` - Jump to the previous change.

`zo` - open folded lines.

`zc` - close folded lines.

`Ctrl+w,w` - change window.

`:wq` - write and quit current window.

`:q!` - "AHHHH GET ME OUT OF HERE!!" (or, "I've made a mistake, let's quit out and try again")

### Troubleshooting

#### It keeps asking for my SSH key password?
You should add your key to the SSH forwarding agent. Use `ssh-add -K ~/.ssh/id_rsa`

#### I don't like Vimdiff, is there something else I can do?
Not at the moment. If you don't have anything important (or anything at all) in a local config, a brute force override might be the best option. I'll work on this soon.

#### I'm still confused / I found a bug!
Shoot me an email at incoming+ddowl/configs@gitlab.com . Gitlab automatically turns these emails into trackable/actionable issues :ok_hand:

### Feature List

- Use `vimdiff` or another method of selectively applying hunks of diffs to local configs
- Improve Troubleshooting section
- Style README
