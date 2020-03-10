//
//  ContentView.swift
//  SwiftUIProtocalShape
//
//  Created by Chang Sophia on 3/10/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ZStack{
        Image("tree")
        .resizable()
        .scaledToFill()
            VStack{
                Leaf()
                .fill(Color.green)
                .frame(width:20, height: 25)
                .rotationEffect(.degrees(30))
                .offset(x:-40, y:-90)
                Leaf()
                .fill(Color.green)
                .frame(width:20, height: 25)
                .rotationEffect(.degrees(30))
                .offset(x:-70, y:-90)
                Leaf()
                .fill(Color.green)
                .frame(width:20, height: 25)
                .rotationEffect(.degrees(10))
                .offset(x:-90, y:-90)
                Leaf()
                .fill(Color.green)
                .frame(width:20, height: 25)
                .rotationEffect(.degrees(-40))
                .offset(x:-120, y:-70) //checked
                 
                    
            }
        }
    }

}


struct Leaf: Shape {
    func path(in rect: CGRect) -> Path {
        Path { (path) in //由參數rect控制大小，rect是Leaf的框框大小
            path.move(to: CGPoint(x:rect.width, y:0))
            path.addQuadCurve(to: CGPoint(x:0, y:rect.height), control: CGPoint(x: rect.width/5, y: rect.height/5))
            path.addQuadCurve(to: CGPoint(x:rect.width, y:0), control: CGPoint(x:rect.width * 17/20, y:rect.height * 13/15))
            path.closeSubpath()
        }
     
    }
     
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var body: some View {
        Leaf()
            .fill(Color.green)
            .frame(width:20, height: 25)
            .rotationEffect(.degrees(40))
            .offset(x:-40, y:-90)
    }
}
