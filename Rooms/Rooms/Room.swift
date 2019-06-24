//
//  Room.swift
//  Timer
//
//  Created by Lee Morales on 2019/6/13.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

import SwiftUI

struct Room : Identifiable {
    var id = UUID()
    var name: String
    var capacity:Int
    var hasVideo:Bool = false
    
    var imageName:String {
        return name
    }
    var thumbnailName:String{
        return name + "Thumb"
    }
}

#if DEBUG
let testData = [
    Room(name:"Mavericks", capacity:9, hasVideo: false),
    Room(name:"Yosemite", capacity:8, hasVideo: true),
    Room(name:"EI Capitan", capacity:6, hasVideo: false),
    Room(name:"Sierra", capacity:3, hasVideo: true),
    Room(name:"High Sierra", capacity:5, hasVideo: false),
    Room(name:"Mojave", capacity:16, hasVideo: true),
    Room(name:"Catalina", capacity:18, hasVideo: true),
]
#endif
