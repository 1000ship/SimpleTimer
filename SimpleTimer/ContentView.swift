//
//  ContentView.swift
//  SimpleTimer
//
//  Created by 천성혁 on 2020/01/08.
//  Copyright © 2020 1000ship. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var cnt = 0
    @State var sec = 0
    var body: some View {
        NavigationView{
            Group{
                VStack(){
                    Text("You touched me \(cnt) time\(cnt==1 ? "" : "s")")
                    Button("Touch me!"){
                        self.cnt += 1
                    }.padding(Edge.Set.bottom, 40)
                    Stepper(value: $sec, in: 0...59,
                        label: {
                            Text("\(sec) seconds")
                        }
                    )
                    Spacer()
                }
            }
            .navigationBarTitle( "Touching & Timer" )
            .padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
