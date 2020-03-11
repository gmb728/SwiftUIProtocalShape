//
//  LeafView.swift
//  SwiftUIProtocalShape
//
//  Created by Chang Sophia on 3/10/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct LeafView: View {
    var positionX: CGFloat = 0
    var positionY: CGFloat = 0
    var rotationDegrees: Double = 0
    var width: CGFloat = 0
    
    var body: some View {
       Leaf()
        .fill(Color.green)
        .frame(width:width, height: width * 9/8)
        .rotationEffect(.degrees(rotationDegrees))
        .offset(x:positionX, y:positionY)
        .shadow(radius:10)
    }
}

struct LeafView_Previews: PreviewProvider {
    static var previews: some View {
        LeafView()
    }
}
