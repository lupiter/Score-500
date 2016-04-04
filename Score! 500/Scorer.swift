//
//  Scorer.swift
//  Score! 500
//
//  Created by Catherine Wise on 3/01/2015.
//  Copyright (c) 2015 Catherine Wise. All rights reserved.
//

import Foundation
import UIKit

class Scorer : UIPickerViewDelegate, UIPickerViewDataSource {
    let scores = [
        "6 ♠︎": 40,
        "6 ♣︎": 60,
        "6 ♦︎": 80,
        "6 ♥︎": 100,
        "6 No": 120,
        "7 ♠︎": 140,
        "7 ♣︎": 160,
        "7 ♦︎": 180,
        "7 ♥︎": 200,
        "7 No": 220,
        "Misère": 250,
        "8 ♠︎": 240,
        "8 ♣︎": 260,
        "8 ♦︎": 280,
        "8 ♥︎": 300,
        "8 No": 320,
        "Open Misère": 500,
        "9 ♠︎": 340,
        "9 ♣︎": 360,
        "9 ♦︎": 380,
        "9 ♥︎": 400,
        "9 No": 420,
        "10 ♠︎": 440,
        "10 ♣︎": 460,
        "10 ♦︎": 480,
        "10 ♥︎": 500,
        "10 No": 520
    ]
    
    let HEARTS = "♥︎"
    let DIAMONDS = "♦︎"
    let CLUBS = "♣︎"
    let SPADES = "♠︎"
    let NO_TRUMPS = "No"
    var SUITS: [String] {
        get {
            return [SPADES, CLUBS, DIAMONDS, HEARTS, NO_TRUMPS]
        }
    }
    let MISÈRE = "Misère"
    let OPEN_MISÈRE = "Open Misère"
    
    var labels: [String] {
        get {
            let vals = []
        }
    }
    
    var leftWin = true
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (leftWin && component == 0) || (!leftWin && component != 0) {
            return scores.count
        } else {
            return 11
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        if (leftWin && component == 0) || (!leftWin && component != 0) {
            return scores.keys
        } else {
            return String(row)
        }
    }
}