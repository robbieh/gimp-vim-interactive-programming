
Interactive Programming with GIMP's Script-Fu and Vim
=====================================================

This is what I did to set up a simple interactive programming environment. This
radically sped up how quickly I was able to write Script-Fu. It contains a simple
bash script to send commands to a Script-Fu server and a bit of Vimscript to help
make sending commands easy.

I usually run [Geeqie](www.geeqie.org) so that it shows the results immediately
after I save an output file.

Setup
-----

1. Install netcat
1. Copy send-gimp.sh to your $PATH
1. Add the contents of the vimrc file to your ~/.vimrc

Usage
-----

Start the Script-fu server either through the `Filters -> Script-Fu -> Start
Server` menu, or by executing this:

```
gimp -i -c -b '(plug-in-script-fu-server 1 "127.0.0.1" 10008 "/tmp/scriptfu.log")'
```

Then you can edit Scheme files and selectively execute expressions by
positioning your cursor at the start of the expression and then typing
`<leader>g`.

Bugs
----

Plenty.

Mainly the Vimscript selection logic isn't the best.

