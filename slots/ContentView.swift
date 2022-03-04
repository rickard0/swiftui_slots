//
//  ContentView.swift
//  slots
//
//  Created by Brian Rickard on 3/3/22.
//

import SwiftUI

struct ContentView: View {
    
    private let CreditsPrefix = "Credits: "
    private let ImageArray = ["apple", "star", "cherry"]
    @State private var Credits:Int = 1000
    @State private var Image1:String = "apple"
    @State private var Image2:String = "star"
    @State private var Image3:String = "cherry"
    
    
    var body: some View {
        VStack {
            Text("SwiftUI Slots").font(.title)
            Spacer()
            Text(CreditsPrefix + String(Credits))
            Spacer()
            HStack {
                Spacer()
                Image(Image1)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(Image2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(Image3)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Spacer()
            Button(action: {
                let rand1 = Int.random(in:0...2)
                let rand2 = Int.random(in:0...2)
                let rand3 = Int.random(in:0...2)
                
                Image1 = ImageArray[rand1]
                Image2 = ImageArray[rand2]
                Image3 = ImageArray[rand3]
                
                if rand1 == rand2 && rand2 == rand3 {
                    Credits += 50;
                }
                else {
                    Credits -= 10;
                }
                    
                
            }, label: {
                Text("Spin").foregroundColor(Color.white)
            })
                .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                .buttonStyle(.bordered)
                .background(Capsule().fill(.red))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
