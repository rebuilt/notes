Hello, thank you for your plugin.  It's amazing.

Highlighting has broken for me in the latest commit.  The broken highlighting looks just like the images posted on this issue https://github.com/phaazon/hop.nvim/issues/35

Reverting to commit e5eb06d fixes the issue

I've tested with the following colorschemes
- https://github.com/sainnhe/sonokai
- https://github.com/ChristianChiarulli/nvcode-color-schemes.vim
- https://github.com/navarasu/onedark.nvim

cd /home/nelson/.local/share/nvim/site/pack/packer/opt/hop.nvim && git checkout e5eb06d6f3caf
