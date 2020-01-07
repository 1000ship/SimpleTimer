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
    var body: some View {
        NavigationView{
            Form{
                Text("You touched me \(cnt) time\(cnt==1 ? "" : "s")")
                Button("Touch me!"){
                    self.cnt += 1
                }
            }.navigationBarTitle( "Touching" )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
