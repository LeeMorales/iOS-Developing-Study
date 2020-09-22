//
//  CircleImage.swift
//  SwiftUI Tutorials
//
//  Created by Miles on 4/28/20.
//  Copyright © 2020 成都祥琳机电设备有限公司. All rights reserved.
//

import SwiftUI

struct CircleImage: View
{
    var body: some View
    {
        Image("turtlerock")
          .clipShape(Circle())
          .overlay(Circle().stroke(Color.white, lineWidth: 4))
          .shadow(radius:10)
    }
}

struct CircleImage_Previews: PreviewProvider
{
    static var previews: some View
    {
        CircleImage()
    }
}
