//
//  Webtoon.swift
//  MyWebtoon
//
//  Created by 2013011781 on 2017. 3. 28..
//  Copyright © 2017년 2013011781. All rights reserved.
//

import Foundation


class MyBestWebtoon {
    var name: String
    var character: [String]
    var story: String
    init(name:String, character:[String], story:String){
        self.name = name
        self.character = character
        self.story = story
    }
}
class dailyWebtoon: MyBestWebtoon{
    class episode {
        var ep_name: String
        var main_char: [String]
        var ep_story: String
        init(ep_name:String, main_char:[String], ep_story:String){
            self.ep_name = ep_name
            self.main_char = main_char
            self.ep_story = ep_story
            
        }
    }
    var Ep = episode(ep_name: "", main_char: [], ep_story: "")
    var weekday = ""
    override init(name:String, character:[String], story:String) {
        Ep.main_char = []
        Ep.ep_story = ""
        weekday = ""
        super.init(name: name, character: character, story: story)
    }
}
func showDummyEpisode() {
    let GOH = dailyWebtoon(name : "갓 오브 하이스쿨", character : ["진모리, 한대위, 유미라, 박무봉"], story : "진모리가 제천대성이 되는 이야기")
    let ep1 = dailyWebtoon.episode(ep_name : "전국대회", main_char : ["진모리, 박일표, 제갈택"], ep_story : "진모리는 탐이 된 제갈택을 박살내고 제천대성이 되었다")
    //GOH.Ep.ep_name = "전국대회"
    //GOH.Ep.main_char = ["진모리, 제갈택, 박일표"]
    //GOH.Ep.ep_story = "진모리가 탐이된 제갈택을 박살내고 제천대성이 되었다"
    GOH.Ep = ep1
    GOH.weekday = "금요일"
    print(GOH.name,GOH.character,GOH.story,GOH.weekday)
    print(GOH.Ep.ep_name,GOH.Ep.main_char,GOH.Ep.ep_story)
}
