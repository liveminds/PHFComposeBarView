//
//  PHFComposeBarViewExampleUITests.swift
//  PHFComposeBarViewExampleUITests
//

import XCTest

class PHFComposeBarViewExampleUITests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }

    func testComposeBar() {
        let message = "Here is some sample text. It's a few lines long but not too long. I think that should do it."

        let app = XCUIApplication()
        app.launch()

        app.staticTexts["PHFComposeBarPlaceholderLabel"].tap()
        app.textViews["PHFComposeBarTextView"].typeText(message)
        app.buttons["PHFComposeBarButton"].tap()

        let output = app.textViews["PHFComposeBarViewExampleTextView"].value as! String
        XCTAssert(output.contains(message), "Message text not found in output.")
    }

}
