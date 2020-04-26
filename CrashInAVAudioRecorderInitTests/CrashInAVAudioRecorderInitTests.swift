import XCTest
import AVFoundation

class CrashInAVAudioRecorderInitTests: XCTestCase {
    var validUrl: URL!
    
    override func setUp() {
        super.setUp()
        validUrl = URL(fileURLWithPath: "/tmp/record.caf")
    }

    func test1SuccessfulInitWithNoSetting() throws {
        XCTAssertNotNil(try AVAudioRecorder(url: self.validUrl,
                                            settings: [:]))
    }

    func test2InitNilWithInvalidFormat() throws {
        XCTAssertNil(try? AVAudioRecorder(url: self.validUrl,
                                          settings: [AVFormatIDKey: kAudioFormatMPEGLayer3]))
    }

    // Causing crash: *** CFEqual() called with NULL first argument ***
    // in CFEqual.cold.1 ()
    func test3ExpectingNilActualCrash() throws {
        let invalidUrlCausingCrash = URL(string: "mailto:bugreport@apple.com")!
        let recorder = try? AVAudioRecorder(url: invalidUrlCausingCrash, settings: [:])
        XCTAssertNil(recorder)
    }
}
