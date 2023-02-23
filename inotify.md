https://github.com/guard/listen/blob/master/README.md

## Temp fix
You can set a new limit temporarily with:

$ sudo sysctl fs.inotify.max_user_watches=524288
$ sudo sysctl -p



