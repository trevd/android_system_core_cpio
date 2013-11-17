Make Android Boot FileSystem for Windows
========================================

What?
=====
This is the windows version of the mkbootfs binary which is normally found
in the Android AOSP Source Tree @ system/core/cpio

Why not just use existing cpio implementation? 
==============================================
mkbootfs also sets the correct permissions on the input files to reduce
the risk of files being classed as unsafe 

What Windows Wants?
===================
In a word "Symlinks". 

COMPILE
=======
make 




