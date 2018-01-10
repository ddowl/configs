# configs
## My personal configs (Bash, Vim, Git, etc)

### Installation
Install using `git clone --recursive`, or if you've already cloned the repo use `git submodule update --init --recursive` to instantiate the submodules.

Alternatively, you can run `./setupSubmodules` in the checkout directory, which will also get the latest version of each submodule.

For now, manually copy each override each config file you want with one in the checkout. 

### Troubleshooting

#### It keeps asking for my SSH key password?
You should add your key to the SSH forwarding agent. Use `ssh-add -K ~/.ssh/id_rsa`

#### I'm still confused / I found a bug!
Shoot me an email at incoming+ddowl/configs@gitlab.com . Gitlab automatically turns these emails into trackable/actionable issues :ok_hand:

### Feature List

- Use `vimdiff` or another method of selectively applying hunks of diffs to local configs
- Improve Troubleshooting section
- Style README
