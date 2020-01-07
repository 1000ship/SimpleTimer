//
//  ContentView.swift
//  SimpleTimer
//
//  Created by 천성혁 on 2020/01/08.
//  Copyright © 2020 1000ship. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var cnt : Int = 0
    @State var sec : Int = 0
    
    var body: some View {
        NavigationView{
            ZStack(){
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
                Group{
                    VStack(){
                        Text("You touched me \(cnt) time\(cnt==1 ? "" : "s")")
                        Button(action: {self.cnt += 1}){
                            Text("Touch me!")
                        }.padding(.bottom, 40)
                        Stepper(value: $sec, in: 0...59,
                            label: {
                                Text("\(sec) seconds")
                            }
                        )
                        NavigationLink(destination: TimerView(sec: sec)) {
                            Text("Go On")
                        }
                        Image("apple").resizable().scaleEffect(0.3, anchor: .top)
                        Spacer()
                    }
                }
                .padding(20)
            }
        }.navigationBarTitle( "Touching & Timer" )
    }
}

struct TimerView: View {
    let sec : Int
    var body: some View {
        Text("HELLO \(sec)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        TimerView(sec:5)
    }
}
