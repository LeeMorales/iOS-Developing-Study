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
    var body: some View {
        Image(room.imageName)
    }
}

#if DEBUG
struct RoomDetail_Previews : PreviewProvider {
    static var previews: some View {
        RoomDetail(room: testData[0])
    }
}
#endif
