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
        let app = XCUIApplication()
        app.launch()

        app.staticTexts["PHFComposeBarPlaceholderLabel"].tap()
        app.textViews["PHFComposeBarTextView"].typeText("Here is some sample text. It's a few lines long but not too long. I think that should do it.")
        app.buttons["PHFComposeBarUtilityButton"].tap()

        sleep(5)

    }

}
