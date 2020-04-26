# Crash In AVAudioRecorder init

## Project demonstrating a bug in AVFoundation


[AVAudioRecorder init](https://developer.apple.com/documentation/avfoundation/avaudiorecorder/1388386-init) is crashing when using invalid URL.

Expected behaviour: return error and nil value, as per documentation.

## Steps to reproduce:

  1. Open project in Xcode
  2. Run Tests
  3. Notice 2 passing tests for successful and error cases
  4. Notice crash in [test3ExpectingNilActualCrash](https://github.com/paulz/CrashInAVAudioRecorderInit/blob/90826ecc15560ef64e0e251b7fc65b0c6af7bec6/CrashInAVAudioRecorderInitTests/CrashInAVAudioRecorderInitTests.swift#L27)
