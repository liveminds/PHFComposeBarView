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

        let composeBar = app.otherElements["PHFComposeBar"]

        let composeBarTextViewButton = composeBar.buttons.element(boundBy: 1)
        composeBarTextViewButton.tap()

        app.typeText("Here is some sample text.")
    }

}
