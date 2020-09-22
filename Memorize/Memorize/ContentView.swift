//
//  ContentView.swift
//  Memorize
//
//  Created by Miles on 5/24/20.
//  Copyright © 2020 成都祥琳机电设备有限公司. All rights reserved.
//

import SwiftUI

struct ContentView: View
{
  var viewModel: EmojiMemoryGame
  
  var body: some View
  {
   HStack
    {
      ForEach(viewModel.cards)
      {
        card in CardView(card: card).onTapGesture
        {
          self.viewModel.chooseCard(card: card)
        }
      }
    }
   .padding()
   .foregroundColor(Color.orange)
   .font(Font.largeTitle)
  }
}

struct CardView: View
{
  
  var card: MemoryGame<String>.Card
  
  var body: some View
  {
    ZStack
    {
      if card.isFaceUp
      {
        RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
        RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth:3)
        Text(card.content) 
      }
      else
      {
       RoundedRectangle(cornerRadius: 10.0).fill()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel:  EmojiMemoryGame())
    }
}
