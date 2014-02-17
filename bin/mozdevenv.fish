#!/usr/bin/fish
#alias mozaddons=". ${MY_DIR}/mozaddons"
alias adb-pull-omni="./adb pull /system/b2g/omni.ja; cp omni.ja omni.ja.orig"
alias unzip-omnijar="mkdir foo; cp omni.ja foo/omni.zip; cd foo; unzip omni.zip; rm omni.zip; cd .."
alias adb-push-omni="./adb push omni.ja /system/b2g/omni.ja"
alias adb-forward-dbg="./adb forward tcp:6000 localfilesystem:/data/local/debugger-socket"
alias b2grestart="./adb shell stop b2g; sleep 2s; ./adb shell start b2g"
alias adb-update-bin="cp ~/bin/android/* ."

complete -c mozbuild -o b2g -o fennec -o dbg -o both -o configure -o clobber -o smart -o nosmart -o package -o install
complete -c moztests \
       -o dbg \
       -o gdb \
       -o n \
       -o nofail \
       -o nox \
       -o target \
       -o xvfb \
       -o bbase \
       -o browser-console \
       -o browser-debugger \
       -o browser-devtools \
       -o consoleapi \
       -o devtools \
       -o devtools-framework \
       -o devtools-scratchpad \
       -o devtools-shared \
       -o dom-browser \
       -o dom-mochitest-general \
       -o dom-plugins \
       -o fontinspector \
       -o gcli \
       -o hud \
       -o inspector \
       -o jsdbg \
       -o layoutview \
       -o markupview \
       -o netmonitor \
       -o panorama \
       -o profiler \
       -o prompts \
       -o responsivedesign \
       -o scratchpad \
       -o sessionstore \
       -o sourceeditor \
       -o srced-all \
       -o styleeditor \
       -o styleinspector \
       -o tabview \
       -o tilt \
       -o toolkit-console \
       -o toolkit-console-chrome \
       -o toolkit-console-xpcshell \
       -o toolkit-content \
       -o toolkit-debugger \
       -o toolkit-debugger-mochitest \
       -o toolkit-debugger-xpcshell \
       -o toolkit-devtools \
       -o webconsole
complete -c mozff -o gdb -o dbg -o b2g -o jsconsole -o profile -o p -o safe-mode
