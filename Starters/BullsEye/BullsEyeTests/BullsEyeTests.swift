//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Ou Bdw on 17/8/2561 BE.
//  Copyright © 2561 Ray Wenderlich. All rights reserved.
//

import XCTest
@testable import BullsEye
//
//var gameUnderTest: BullsEyeGame!
var gameUnderTest: BullsEyeGame!

class BullsEyeTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        gameUnderTest = BullsEyeGame()
        gameUnderTest.startNewGame()
        

    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        gameUnderTest = nil
        super.tearDown()
    }

    func testScoreIsComputedWhenGuessLTTarget() {
        // 1. given
        let guess = gameUnderTest.targetValue - 5

        // 2. when
        _ = gameUnderTest.check(guess: guess)

        // 3. then
//        continueAfterFailure = false
        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")

    }


    // XCTAssert to test model
    func testScoreIsComputedWhenGuessGTTarget() {
        // 1. given
        let guess = gameUnderTest.targetValue + 5

        // 2. when
        _ = gameUnderTest.check(guess: guess)

        // 3. then
        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
    }


    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
