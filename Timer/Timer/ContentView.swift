//
//  ContentView.swift
//  Timer
//
//  Created by Lee Morales on 2019/6/12.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Start");
        font(font:Systembold)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
