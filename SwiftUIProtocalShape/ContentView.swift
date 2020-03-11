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
        
       Image("green tree")
              .resizable()
              .scaledToFit()
              .frame(width:400)
              .offset(x:0, y:55)
                  
        
            Group{
            LeafView(positionX:-30, positionY: -145, rotationDegrees: 40 ,width:35)
            LeafGreenView(positionX:-40, positionY: -130, rotationDegrees: 50 ,width:30)
            LeafView(positionX:-55, positionY: -120, rotationDegrees: 40,width:30)
            LeafLightGreenView(positionX:-55, positionY: -115, rotationDegrees: 40 ,width:20)
            LeafView(positionX:-70, positionY: -105, rotationDegrees: 40 ,width:20)
            LeafGreenView(positionX:-80, positionY: -95, rotationDegrees: 35 ,width:20)
            LeafView(positionX:-85, positionY: -85, rotationDegrees: 40 ,width:20)
            LeafLightGreenView(positionX:-90, positionY: -75, rotationDegrees: 40 ,width:20)
            LeafView(positionX:-100, positionY: -65, rotationDegrees: 40 ,width:18)
            LeafGreenView(positionX:-105, positionY: -55, rotationDegrees: 20 ,width:18)
             
            }
            Group{
             LeafView(positionX:-15, positionY: -130, rotationDegrees: 150 ,width:30)
             LeafGreenView(positionX:-25, positionY: -115, rotationDegrees: 150 ,width:25)
             LeafView(positionX:-35, positionY: -110, rotationDegrees: 150 ,width:20)
             LeafLightGreenView(positionX:-45, positionY: -105, rotationDegrees: -20 ,width:20)
             LeafView(positionX:-60, positionY: -95, rotationDegrees: 155 ,width:20)
             LeafGreenView(positionX:-65, positionY: -84, rotationDegrees: -40 ,width:20)
             LeafView(positionX:-70, positionY: -75, rotationDegrees: -45 ,width:20)
             LeafLightGreenView(positionX:-75, positionY: -65, rotationDegrees: -45 ,width:20)
             LeafView(positionX:-85, positionY: -55, rotationDegrees: -45 ,width:18)
            LeafGreenView(positionX:-92, positionY: -46, rotationDegrees: -50 ,width:18)
                        }
            Group{
             LeafView(positionX:-110, positionY: -45, rotationDegrees: 10 ,width:16)
             LeafView(positionX:-100, positionY: -40, rotationDegrees: -50 ,width:16)
             LeafGreenView(positionX:-110, positionY: -35, rotationDegrees: 10 ,width:16)
             LeafLightGreenView(positionX:-120, positionY: -35, rotationDegrees: 20 ,width:16)
             LeafGreenView(positionX:-130, positionY: -25, rotationDegrees: -10 ,width:16)
             LeafView(positionX:-130, positionY: -10, rotationDegrees: -40 ,width:16)
             LeafGreenView(positionX:-120, positionY: -10, rotationDegrees: -60 ,width:18)
             LeafView(positionX:-100, positionY: 15, rotationDegrees: -50 ,width:10)
             LeafView(positionX:-95, positionY: 15, rotationDegrees: -10 ,width:10)
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
 
