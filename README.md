# Crash In AVAudioRecorder init

## Project demonstrating a bug in AVFoundation


[AVAudioRecorder init](https://developer.apple.com/documentation/avfoundation/avaudiorecorder/1388386-init) is crashing when using invalid URL.

Expected behaviour: return error and nil value, as per documentation.
