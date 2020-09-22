//
//  ContentView.swift
//  SwiftUI Tutorials
//
//  Created by Miles on 4/28/20.
//  Copyright © 2020 成都祥琳机电设备有限公司. All rights reserved.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
      VStack {
        MapView()
          .edgesIgnoringSafeArea(.top)
          .frame(height: 300)
        
        CircleImage()
          .offset(y: -130)
          .padding(.bottom, -130)
        
        VStack(alignment: .leading)
         {
          Text("Turtle Rock")
            .font(.title)
          HStack {
            Text("Joshua Tree national Park")
              .font(.subheadline)
            Spacer()
            Text("California")
              .font(.subheadline)
          }
        }
        .padding()
        Spacer()
      }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
