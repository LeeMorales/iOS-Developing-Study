//
//  RoomDetail.swift
//  Rooms
//
//  Created by Lee Morales on 2019/6/13.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

import SwiftUI

struct RoomDetail : View {
    let room: Room
    @State private var zoomed = false
    var body: some View {
        Image(room.imageName)
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .navigationBarTitle(Text(room.name), displayMode:.inline)
            .tapAction {
                self.zoomed.toggle()
        }
    }
}

#if DEBUG
struct RoomDetail_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {RoomDetail(room: testData[0])}
    }
}
#endif
