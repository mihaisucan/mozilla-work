= Introduction =

This repository holds the scripts I wrote to aid automating some tasks when I 
work for Mozilla.

All code is GPLv3 unless otherwise noted.

All code quality is bad, it's all just hacks. :) Fork and push your changes. Ask 
for pull requests if you have improvements!

This is published because it might be useful for others.

= mozconfig =

The mozconfig folder holds the .mozconfig files I use to build my firefox.

= My setup =

~/bin is in PATH.
~/bin/mozilla-tools
~/bin/mozdevenv

When I start to work I just type mozdevenv which adds ~/bin/mozilla-tools to 
PATH. Then I can use moztests, mozmake-build and so on. These scripts need to be 
run in your mozilla source code root. I have multiple mozilla source code 
repositories/clones. Scripts are made such that I can use them within any 
mozilla repo I want.

In `~/.bash_aliases` I have:
  alias mozdevenv='. ~/bin/mozdevenv'

= Test pages =

I also have some test pages I wrote for devtools. Switch to the gh-pages branch 
and check them out.

