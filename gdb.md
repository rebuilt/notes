# GDB
## Starting and Running the Program

| Command       | Description                          |
| ---           | ---                                  |
| gdb ./program | Start GDB with your program.         |
| run or r      | Start your program inside GDB.       |
| run arg1 arg2 | Run with command-line arguments.     |
| start         | Begin execution and break at main(). |
| quit or q     | Exit GDB.                            |

## Breakpoints

| Command              | Description                  |
| ---           | ---                                  |
| break main or b main | Break at function main.      |
| break 42 or b 42     | Break at line 42.            |
| break file.c:20      | Break at line 20 in file.c.  |
| delete               | Remove all breakpoints.      |
| disable 1            | Disable breakpoint number 1. |
| enable 1             | Re-enable breakpoint 1.      |
| info breakpoints     | List all breakpoints.        |

## Stepping Through Code

| Command       | Description                             |
| ---           | ---                                  |
| next or n     | Execute the next line (step over).      |
| step or s     | Step into function calls.               |
| finish        | Run until the current function returns. |
| continue or c | Resume execution after break.           |

## Inspecting State

| Command         | Description                           |
| ---           | ---                                  |
| print x or p x  | Print the value of variable x.        |
| display x       | Automatically show x after each step. |
| info locals     | Show all local variables.             |
| info args       | Show function arguments.              |
| info registers  | Show CPU register values.             |
| backtrace or bt | Show call stack (backtrace).          |
| frame or f      | Show current stack frame.             |

## Changing State

| Command       | Description                         |
| ---           | ---                                  |
| set var x = 5 | Change variable x to 5.             |
| return        | Force the function to return early. |

## Navigating Code

| Command   | Description                                  |
| ---           | ---                                  |
| list or l | Show source code around current line.        |
| list 30   | Show code around line 30.                    |
| jump 50   | Set execution to line 50 (use with caution). |

##  Watchpoints

| Command          | Description                               |
| ---              | ---                                       |
| watch x          | Break when variable x changes.            |
| rwatch x         | Break when variable x is read.            |
| awatch x         | Break when variable x is read or written. |
| info watchpoints | List active watchpoints.                  |

##  Miscellaneous

| Command            | Description                          |
| ---           | ---                                  |
| help               | Show help on commands.               |
| set pagination off | Disable paging for output.           |
| set args ...       | Set command-line arguments.          |
| source script.gdb  | Run GDB commands from a file.        |
| shell              | Run a shell command from inside GDB. |
