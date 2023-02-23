Useful commands when troubleshooting

:checkhealth :checkhealth <pluginname> , eg :checkhealth
nvim_treesitter

Checks neovim version nvim -v

Verbose output on start and for every key press nvim -V

– You must run this or `PackerSync` whenever you make changes to your
plugin configuration :PackerCompile

– Only install missing plugins :PackerInstall

– Update and install plugins :PackerUpdate

– Remove any disabled or unused plugins :PackerClean

– Performs `PackerClean` and then `PackerUpdate` :PackerSync

:PackerStatus

:LspInstall lua

    :LspInfo shows the status of active and configured language servers.

The following support tab-completion for all arguments:

    :LspStart <config_name> Start the requested server name. Will only succesfully start if the command detects a root directory matching the current config. Pass autostart = false to your .setup{} call for a language server if you would like to launch clients solely with this command. Defaults to all servers matching current buffer filetype.
    :LspStop <client_id> Defaults to stopping all buffer clients.
    :LspRestart <client_id> Defaults to restarting all buffer clients.

:nmap for normal mode mappings
:vmap for visual mode mappings
:imap for insert mode mappings
dlqwx

    :verbose imap <C-y>

:messages

You could use :scriptnames which list all sourced files.

Another option is to check for the variable indicating if the plugin was
loaded, as it is recommended practice to allow the user to disable the
loading of a given plugin.. You usually can find g:loaded\_… variable
inside the <plugin_name>/plugin folder. For the plugin you mentioned you
could use echo exists(“loaded_libList”).

    and activated when I open the appropriate file?

If it is a filetype plugin it should be activated automatically when the
‘filetype’ option is set. You can check if the option is correct for the
current buffer:

:set filetype?

    Another popular editor would indicate that the relevant "minor mode" is active. What's the vim equivalent?

You could customize your statusline to show such indication, either
using plugins or directly through options, as explained in :help
‘statusline’ and at vi-improved.org.

:TSBufEnable {module} " enable module on current buffer :TSBufDisable
{module} " disable module on current buffer :TSEnableAll {module}
\[{ft}\] " enable module on every buffer. If filetype is specified,
enable only for this filetype. :TSDisableAll {module} \[{ft}\] " disable
module on every buffer. If filetype is specified, disable only for this
filetype. :TSModuleInfo \[{module}\] " list information about modules
state for each filetype
