# Global search and replace

## We want our search to be case sensitive
`:set noignorecase`
## Search for the O object and put the results in a quickfix list
`:vimgrep /O\./gj **/*`
## Open the quickfix
`:copen`
## Replace the O object with LV.  Confirm every change
`:cfdo %s/O\./LV./gc`

# Vim shortcuts

## Jumplist/changelist

| Command         |       Description       |
| --------------- | :---------------------: |
| Ctrl-o / Ctrl-i |  #Cycle through :jumps  |
| g; / g          | #Cycle through :changes |

## Buffers

| Command          |            Description            |
| ---------------- | :-------------------------------: |
| :b {filename}    |      go to buffer {filename}      |
| :bd              |       delete current buffer       |
| :buffers         |     print out all the buffers     |
| :bufdo {cmd}     |   execute {cmd} for all buffers   |
| :n               |          go to next file          |
| :arga {filename} |   add { filename } to arg list    |
| :arg1 {files}    |   make a local copy via{files}    |
| :args            | make a local arg copy via {files} |

## Tabs

| Command |     Description      |
| ------- | :------------------: |
| gt      |    go to next tab    |
| gT      |   got to prev tab    |
| :tabc   |      close tab       |
| :tabe   |       open tab       |
| :tabo   | close all other tabs |

## Windows

| Command      |           Description            |
| ------------ | :------------------------------: |
| <Ctrl-w> s   |           split window           |
| <Ctrl-w> v   |     split window vertically      |
| <Ctrl-w> q   |           close window           |
| <Ctrl-w> w   |         alternate window         |
| <Ctrl-w> r   |          rotate windows          |
| :windo {cmd} |  execute {cmd} for all windows   |
| :sf {FILE}   |  split window and :find {FILE}   |
| :vert {cmd}  | make and split {cmd} be vertical |

## Search

| Command        |             Description              |
| -------------- | :----------------------------------: |
| /{patt}[/]<CR> |          search for {patt}           |
| /<CR>          |     search for last used pattern     |
| ?{patt}[?]<CR> |        search back for {patt}        |
| ?<CR>          |  search back for last used pattern   |
| [count]n       |   repeat last search [count] times   |
| [count]N       |  same as above, opposite direction   |
| \*             | search forward for word under cursor |
| #              |  same as above, opposite direction   |
| gd             |       got to local declaration       |
| :hls!          |      toggle search highlighting      |

| Command | Description |
| ------- | :---------: |
| `Vga*|` | Align tables with easy-align plugin.  Select the line you want with `V`, then `ga`(go align).  Then align by `* |`(all pipes) |
|         |             |
|         |             |
|         |             |
|         |             |
|         |             |
|         |             |
|         |             |
|         |             |
|         |             |

| Command | Description |
| ------- | :---------: |
|         |             |
|         |             |
|         |             |
|         |             |
|         |             |
|         |             |
|         |             |
|         |             |
|         |             |
|         |             |
