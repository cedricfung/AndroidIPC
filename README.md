AndroidIPC
==========

Samples for various Android IPC mechanisms


Build and run
-------------

You need ROOT permission from the adb

    $ ndk-build
    $ adb push libs/armeabi-v7a/ipc /data/local/
    $ adb shell /data/local/ipc   # start the service

Then just use your Eclipse in the regular way.
