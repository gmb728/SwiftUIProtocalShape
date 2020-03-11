//
//  LeafGreenView.swift
//  SwiftUIProtocalShape
//
//  Created by Chang Sophia on 3/10/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct LeafGreenView: View {
   var positionX: CGFloat = 0
        var positionY: CGFloat = 0
        var rotationDegrees: Double = 0
        var width: CGFloat = 0
        
        var body: some View {
           Leaf()
            .fill(Color(red:0, green:100/255, blue:0))
            .frame(width:width, height: width * 9/8)
            .rotationEffect(.degrees(rotationDegrees))
            .offset(x:positionX, y:positionY)
            .shadow(radius:10)
        }
    }



struct LeafGreenView_Previews: PreviewProvider {
    static var previews: some View {
        LeafGreenView()
    }
}
