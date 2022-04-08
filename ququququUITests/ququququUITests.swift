//
//  ququququUITests.swift
//  ququququUITests
//
//  Created by Buratsakorn Petchdee on 21/2/2565 BE.
//

import XCTest

class ququququUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    func testLaunchScreen(){
//
//        let app = XCUIApplication()
//        app.launch()
        let app = XCUIApplication()
        app.launch()
        app.buttons["MapID"].tap()
        let mueangSaraBuriMap = XCUIApplication()/*@START_MENU_TOKEN@*/.maps.containing(.other, identifier:"Mueang Sara Buri").element/*[[".maps.containing(.other, identifier:\"Pattaya\").element",".maps.containing(.other, identifier:\"Ko Sichang\").element",".maps.containing(.other, identifier:\"Si Racha\").element",".maps.containing(.other, identifier:\"Chon Buri\").element",".maps.containing(.other, identifier:\"Bang Pakong\").element",".maps.containing(.other, identifier:\"Mueang Samut Sakhon\").element",".maps.containing(.other, identifier:\"Ban Phaeo\").element",".maps.containing(.other, identifier:\"Amphoe Mueang Samut Prakan\").element",".maps.containing(.other, identifier:\"Suvarnabhumi Airport (BKK)\").element",".maps.containing(.other, identifier:\"Bangkok\").element",".maps.containing(.other, identifier:\"Mueang Nakhon Pathom\").element",".maps.containing(.other, identifier:\"Mueang Nonthaburi\").element",".maps.containing(.other, identifier:\"Don Tum\").element",".maps.containing(.other, identifier:\"Sai Noi\").element",".maps.containing(.other, identifier:\"Mueang Pathum Thani\").element",".maps.containing(.other, identifier:\"Bang Len\").element",".maps.containing(.other, identifier:\"Khlong Luang\").element",".maps.containing(.other, identifier:\"Ongkharak\").element",".maps.containing(.other, identifier:\"Lat Bua Luang\").element",".maps.containing(.other, identifier:\"Bang Pa-in\").element",".maps.containing(.other, identifier:\"Wang Noi\").element",".maps.containing(.other, identifier:\"Wihan Daeng\").element",".maps.containing(.other, identifier:\"Ayutthaya\").element",".maps.containing(.other, identifier:\"Bang Ban\").element",".maps.containing(.other, identifier:\"Nakhon Luang\").element",".maps.containing(.other, identifier:\"Mueang Suphan Buri\").element",".maps.containing(.other, identifier:\"Mueang Sara Buri\").element"],[[[-1,26],[-1,25],[-1,24],[-1,23],[-1,22],[-1,21],[-1,20],[-1,19],[-1,18],[-1,17],[-1,16],[-1,15],[-1,14],[-1,13],[-1,12],[-1,11],[-1,10],[-1,9],[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        mueangSaraBuriMap.tap()
        mueangSaraBuriMap.tap()
        let elementsQuery = app.scrollViews.otherElements
        elementsQuery.textFields["nameInputID"].tap()
        elementsQuery.textFields["nameInputID"].typeText("testing")
        let doneButton = app.toolbars["Toolbar"].buttons["Done"]
        let descriptioninputidTextField = elementsQuery.textFields["descriptionInputID"]
        descriptioninputidTextField.tap()
        descriptioninputidTextField.typeText("open new account")
        doneButton.tap()
        app/*@START_MENU_TOKEN@*/.buttons["Booking"]/*[[".scrollViews.buttons[\"Booking\"]",".buttons[\"Booking\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["Booking"].tap()
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.cells.containing(.staticText, identifier:"Open mutual fund account ")/*[[".cells.containing(.staticText, identifier:\"10:20AM\")",".cells.containing(.staticText, identifier:\"CIMB BANK: Bangbon Branch\")",".cells.containing(.staticText, identifier:\"Open mutual fund account \")"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["Waiting"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.cells.containing(.staticText, identifier:"Booking Bond")/*[[".cells.containing(.staticText, identifier:\"14:22PM\")",".cells.containing(.staticText, identifier:\"CIMB BANK: Mall Bangkae Branch\")",".cells.containing(.staticText, identifier:\"Booking Bond\")"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["Completed"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.cells.containing(.staticText, identifier:"House Loan").element/*[[".cells.containing(.staticText, identifier:\"11:21AM\").element",".cells.containing(.staticText, identifier:\"CIMB BANK: Central Pinklao\").element",".cells.containing(.staticText, identifier:\"House Loan\").element"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
                       
        
        
        
       
                      
                        
    }
}
