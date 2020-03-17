//
//  NameInput.swift
//  HelloBeautiful
//
//  Created by Mike  Van Amburg on 3/6/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct NameInput: View {
    @Binding var name: String
    @Binding var entered: Bool
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1))]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            
            RoundedRectangle(cornerRadius: 50)
                .fill(Color("CardColor"))
                .scaledToFit()
                .padding()
                
            VStack{
                VStack(alignment: .leading){
                Text("Hello,")
                    .font(.largeTitle)
                    
                Text("What is your name Human?")
                    .font(.title)
                    
                }
                .padding()
                
                TextField("What is your name", text: $name)
                    .frame(width: 230)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    self.entered.toggle()
                }) {
                    ZStack{
                        Capsule()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                            .frame(width: 100, height: 30)
                            
                        Text("Enter")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                    }
                }
            .padding()
            }
        }
    }
}

struct NameInput_Previews: PreviewProvider {
    static var previews: some View {
        NameInput(name: .constant("Mike"), entered: .constant(false))
    }
}
