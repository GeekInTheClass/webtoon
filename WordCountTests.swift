//
//  WordCountTests.swift
//  WordCountTests
//
//  Created by Lingostar on 2016. 1. 24..
//  Copyright © 2016년 CodersHigh. All rights reserved.
//

import XCTest
@testable import WordCount

class WordCount {
    var words: String
    init(words: String){
        self.words = words
    }
    func count() -> ([String:Int]) {
        var temp=0, mode=0
        var s_point=0, f_point=0
        var ret:[String:Int] = [:]
        while (true) {
            if(temp==words.characters.count) {
                break
            }
            if (mode == 0) {
                if ((
                    words[words.index(words.startIndex, offsetBy: temp)]>="0" &&
                        words[words.index(words.startIndex, offsetBy: temp)]<="9") || (
                            words[words.index(words.startIndex, offsetBy: temp)]>="A" &&
                                words[words.index(words.startIndex, offsetBy: temp)]<="Z") || (
                                    words[words.index(words.startIndex, offsetBy: temp)]>="a" &&
                                        words[words.index(words.startIndex, offsetBy: temp)]<="z")) {
                    s_point=temp
                    mode=1
                }
                else{
                    temp+=1
                }
            }
            else if (mode==1) {
                if(temp != words.characters.count-1){
                    if ((
                        words[words.index(words.startIndex, offsetBy: temp)]>="0" &&
                            words[words.index(words.startIndex, offsetBy: temp)]<="9") || (
                                words[words.index(words.startIndex, offsetBy: temp)]>="A" &&
                                    words[words.index(words.startIndex, offsetBy: temp)]<="Z") || (
                                        words[words.index(words.startIndex, offsetBy: temp)]>="a" &&
                                            words[words.index(words.startIndex, offsetBy: temp)]<="z")) {
                        temp+=1
                    }
                    else{
                        f_point=temp-1
                        //str copy
                        var tempstr = ""
                        for temp2 in s_point..<(f_point+1) {
                            tempstr += "\(words[words.index(words.startIndex, offsetBy: temp2)])"
                            
                        }
                        /*
                        if(ret?[tempstr] == nil){
                            ret?[tempstr] = 1
                        }
                        else{
                            ret?[tempstr] = (ret?[tempstr])!+1
                        }
                        */
                        tempstr = tempstr.lowercased()
                        if let str = ret[tempstr] {
                            //ret[tempstr] = ret[tempstr]! + 1
                            ret[tempstr] = str + 1
                        }
                        else{
                            ret[tempstr] = 1;
                        }
                        
                        
                        
                        
                        
                        mode=0
                    }
                }
                else{
                    if ((
                        words[words.index(words.startIndex, offsetBy: temp)]>="0" &&
                            words[words.index(words.startIndex, offsetBy: temp)]<="9") || (
                                words[words.index(words.startIndex, offsetBy: temp)]>="A" &&
                                    words[words.index(words.startIndex, offsetBy: temp)]<="Z") || (
                                        words[words.index(words.startIndex, offsetBy: temp)]>="a" &&
                                            words[words.index(words.startIndex, offsetBy: temp)]<="z")) {
                        f_point=temp
                        //str copy
                        var tempstr = ""
                        for temp2 in s_point..<(f_point+1) {
                            tempstr += "\(words[words.index(words.startIndex, offsetBy: temp2)])"
                            
                        }
                        tempstr = tempstr.lowercased()
                        if let str = ret[tempstr] {
                            //ret[tempstr] = ret[tempstr]! + 1
                            ret[tempstr] = str + 1
                        }
                        else{
                            ret[tempstr] = 1;
                        }



                    }
                    temp+=1
                }
            }
            
        }
        return ret
    }
}
class WordCountTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCountOneWord() {
        let words = WordCount(words: "word")
        let expected = ["word": 1]
        let result = words.count()
        
        XCTAssertEqual(expected, result)
    }
    
    func testCountOneOfEeach() {
        let words = WordCount(words: "one of each")
        let expected = ["one" : 1, "of" : 1, "each" : 1 ]
        let result = words.count();
        
        XCTAssertEqual(expected, result)
    }
    
    func testCountMultipleOccurrences() {
        let words = WordCount(words: "one fish two fish red fish blue fish")
        let expected = ["one" : 1, "fish" : 4, "two" : 1, "red" : 1, "blue" : 1 ]
        let result = words.count()
        
        XCTAssertEqual(expected, result)
    }
    
    func testIgnorePunctation() {
        let words = WordCount(words: "car : carpet as java : javascript!!&$%^&")
        let expected = ["car" : 1, "carpet" : 1, "as" : 1, "java" : 1, "javascript" : 1 ]
        let result = words.count()
        
        XCTAssertEqual(expected, result)
    }
    
    func testIncludeNumbers() {
        let words = WordCount(words: "testing, 1, 2 testing")
        let expected = [ "testing" : 2, "1" : 1, "2" : 1 ]
        let result = words.count()
        
        XCTAssertEqual(expected, result)
    }
    
    func testNormalizeCase() {
        let words = WordCount(words:"go Go GO")
        let expected = [ "go" : 3]
        let result = words.count()
        
        XCTAssertEqual(expected, result)
    }
    
}
