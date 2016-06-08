//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by HI Iberia on 1/6/16.
//
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
	// MARK: FoodTracker tests
	
	// Tests to confirm that the Meal initializer returns when no name or a negative rating is provided
	func testMealInitialization() {
		// Success case
		let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
		XCTAssertNotNil(potentialItem)
		
		// Failure cases
		let noName = Meal(name: "", photo: nil, rating: 0)
		XCTAssertNil(noName, "Empty name is invalid")
		
		let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
		XCTAssertNil(badRating, "Negative ratings are invalid, be positive")
	}
}
