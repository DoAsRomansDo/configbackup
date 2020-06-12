#set print style
set print pretty on
set print elements 0

#save history commandset 
set history filename ./.gdb_history
set history save on

#save log file
set logging file ./.log.txt
set logging on

# load scripts
# create a load.gdb use it to load all scripts in the directory
shell mkdir ./.gdbscripts | rm -rf ./.gdbscripts/load.gdb |ls ./.gdbscripts|grep "\.[gdb|py]" | sed "s/^/source .\/.gdbscripts\//g" > ./.gdbscripts/load.gdb

source ./.gdbscripts/load.gdb

define cleanfile
        shell rm -rf ./.gdb_history
        shell rm -rf ./.log.txt
        shell rm -rf ./.gdbscripts/load.gdb
end

