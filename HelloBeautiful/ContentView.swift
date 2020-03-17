//
//  ContentView.swift
//  HelloBeautiful
//
//  Created by Mike  Van Amburg on 3/6/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var entered: Bool = false
    var body: some View {
        VStack{
            if entered {
                BeautifulView(name: $name, entered: $entered)

            }else{
                
                NameInput(name: $name, entered: $entered)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
