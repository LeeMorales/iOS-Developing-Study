//
//  ContentView.swift
//  Timer
//
//  Created by Lee Morales on 2019/6/12.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var rooms: [Room] = []
    var body: some View {
        List(rooms) { room in
            Image(systemName: "photo")
                .cornerRadius(16)
            VStack(alignment: .leading){
                Text(room.name)
                Text("\(room.capacity) People")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
    }
}
#endif
