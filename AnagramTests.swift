//
//  AnagramTests.swift
//  AnagramTests
//
//  Created by Lingostar on 2016. 2. 13..
//  Copyright © 2016년 CodersHigh. All rights reserved.
//

import XCTest
@testable import Anagram


class Anagram {
    var word: String
    init(word: String){
        self.word = word
    }
    
    
    func match(words:[String]) -> ([String]) {
        
            var test = word
            var alpabet:Array<Int> = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
            for index in test.characters.indices {
                switch "\(test[index])" {
                case "a": alpabet[0] += 1 case "A": alpabet[0] += 1
                case "b": alpabet[1] += 1 case "B": alpabet[1] += 1
                case "c": alpabet[2] += 1 case "C": alpabet[2] += 1
                case "d": alpabet[3] += 1 case "D": alpabet[3] += 1
                case "e": alpabet[4] += 1 case "E": alpabet[4] += 1
                case "f": alpabet[5] += 1 case "F": alpabet[5] += 1
                case "g": alpabet[6] += 1 case "G": alpabet[6] += 1
                case "h": alpabet[7] += 1 case "H": alpabet[7] += 1
                case "i": alpabet[8] += 1 case "I": alpabet[8] += 1
                case "j": alpabet[9] += 1 case "J": alpabet[9] += 1
                case "k": alpabet[10] += 1 case "K": alpabet[10] += 1
                case "l": alpabet[11] += 1 case "L": alpabet[11] += 1
                case "m": alpabet[12] += 1 case "M": alpabet[12] += 1
                case "n": alpabet[13] += 1 case "N": alpabet[13] += 1
                case "o": alpabet[14] += 1 case "O": alpabet[14] += 1
                case "p": alpabet[15] += 1 case "P": alpabet[15] += 1
                case "q": alpabet[16] += 1 case "Q": alpabet[16] += 1
                case "r": alpabet[17] += 1 case "R": alpabet[17] += 1
                case "s": alpabet[18] += 1 case "S": alpabet[18] += 1
                case "t": alpabet[19] += 1 case "T": alpabet[19] += 1
                case "u": alpabet[20] += 1 case "U": alpabet[20] += 1
                case "v": alpabet[21] += 1 case "V": alpabet[21] += 1
                case "w": alpabet[22] += 1 case "W": alpabet[22] += 1
                case "x": alpabet[23] += 1 case "X": alpabet[23] += 1
                case "y": alpabet[24] += 1 case "Y": alpabet[24] += 1
                case "z": alpabet[25] += 1 case "Z": alpabet[25] += 1
                default:
                    break
                }
            }
            var reword:[String] = []
            for i in 0..<words.count{
                var test = words[i]
                var betabet:Array<Int> = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
                for index in test.characters.indices {
                    switch "\(test[index])" {
                    case "a": betabet[0] += 1 case "A": betabet[0] += 1
                    case "b": betabet[1] += 1 case "B": betabet[1] += 1
                    case "c": betabet[2] += 1 case "C": betabet[2] += 1
                    case "d": betabet[3] += 1 case "D": betabet[3] += 1
                    case "e": betabet[4] += 1 case "E": betabet[4] += 1
                    case "f": betabet[5] += 1 case "F": betabet[5] += 1
                    case "g": betabet[6] += 1 case "G": betabet[6] += 1
                    case "h": betabet[7] += 1 case "H": betabet[7] += 1
                    case "i": betabet[8] += 1 case "I": betabet[8] += 1
                    case "j": betabet[9] += 1 case "J": betabet[9] += 1
                    case "k": betabet[10] += 1 case "K": betabet[10] += 1
                    case "l": betabet[11] += 1 case "L": betabet[11] += 1
                    case "m": betabet[12] += 1 case "M": betabet[12] += 1
                    case "n": betabet[13] += 1 case "N": betabet[13] += 1
                    case "o": betabet[14] += 1 case "O": betabet[14] += 1
                    case "p": betabet[15] += 1 case "P": betabet[15] += 1
                    case "q": betabet[16] += 1 case "Q": betabet[16] += 1
                    case "r": betabet[17] += 1 case "R": betabet[17] += 1
                    case "s": betabet[18] += 1 case "S": betabet[18] += 1
                    case "t": betabet[19] += 1 case "T": betabet[19] += 1
                    case "u": betabet[20] += 1 case "U": betabet[20] += 1
                    case "v": betabet[21] += 1 case "V": betabet[21] += 1
                    case "w": betabet[22] += 1 case "W": betabet[22] += 1
                    case "x": betabet[23] += 1 case "X": betabet[23] += 1
                    case "y": betabet[24] += 1 case "Y": betabet[24] += 1
                    case "z": betabet[25] += 1 case "Z": betabet[25] += 1
                    default:
                        break
                    }
                }
                var same_count = 0
                if(word.uppercased() == words[i].uppercased()){
                   same_count = 1
                }
                if(alpabet==betabet && same_count != 1){
                    reword += [words[i]]
                }
            }
        return reword
    }
}


class AnagramTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNoMatches() {
        let anagram = Anagram(word: "diaper")
        let results = anagram.match(words: ["hello","world","zombies","pants"])
        let expected: [String] = []
        XCTAssertEqual(results, expected)
    }
    
    
    func testDetectSimpleAnagram() {
        let anagram = Anagram(word: "ant")
        let results = anagram.match(words: ["tan","stand","at"])
        let expected = ["tan"]
        XCTAssertEqual(results, expected)
    }
    
    func testDetectMultipleAnagrams() {
        let anagram = Anagram(word: "master")
        let results = anagram.match(words: ["stream","pigeon","maters"])
        let expected = ["stream","maters"]
        XCTAssertEqual(results, expected)
    }
    
    func testDoesNotConfuseDifferentDuplicates() {
        let anagram = Anagram(word: "galea")
        let results = anagram.match(words: ["eagle"])
        let expected: [String] = []
        XCTAssertEqual(results, expected)
    }
    
    func testIdenticalWordIsNotAnagram() {
        let anagram = Anagram(word: "corn")
        let results = anagram.match(words: ["corn", "dark", "Corn", "rank", "CORN", "cron", "park"])
        let expected = ["cron"]
        XCTAssertEqual(results, expected)
    }
    
    func testEliminateAnagramsWithSameChecksum() {
        let anagram = Anagram(word: "mass")
        let results = anagram.match(words: ["last"])
        let expected: [String] = []
        XCTAssertEqual(results, expected)
    }
    
    func testEliminateAnagramSubsets() {
        let anagram = Anagram(word: "good")
        let results = anagram.match(words: ["dog","goody"])
        let expected: [String] = []
        XCTAssertEqual(results, expected)
    }
    
    func testDetectAnagram() {
        let anagram = Anagram(word: "listen")
        let results = anagram.match(words: ["enlists","google","inlets","banana"])
        let expected = ["inlets"]
        XCTAssertEqual(results, expected)
    }
    
    func testMultipleAnagrams() {
        let anagram = Anagram(word: "allergy")
        let results = anagram.match(words: ["gallery","ballerina","regally","clergy","largely","leading"])
        let expected = ["gallery","regally","largely"]
        XCTAssertEqual(results, expected)
    }
    
    func testAnagramsAreCaseInsensitive() {
        let anagram = Anagram(word: "Orchestra")
        let results = anagram.match(words: ["cashregister","Carthorse","radishes"])
        let expected = ["Carthorse"]
        XCTAssertEqual(results, expected)
    }

    
}
