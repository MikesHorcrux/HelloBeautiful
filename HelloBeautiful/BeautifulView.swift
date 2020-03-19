//
//  BeautifulView.swift
//  HelloBeautiful
//
//  Created by Mike  Van Amburg on 3/14/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct BeautifulView: View {
    @Binding var name: String
    @Binding var entered: Bool
    var body: some View {
        ZStack(){
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1))]), startPoint: .top, endPoint: .trailing)
            .edgesIgnoringSafeArea(.all)
            
            RoundedRectangle(cornerRadius: 50)
            .fill(Color("CardColor"))
            .scaledToFit()
            .padding()
            
            VStack{
                VStack(alignment: .leading){
                    Text(name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom)
                        
                    Text("You are incredibly Beautiful!")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        
                    
                }
                .padding()
            
                
                Button(action: {
                    self.entered.toggle()
                    self.name = ""
                }) {
                    ZStack{
                        Capsule()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1))]), startPoint: .top, endPoint: .trailing))
                            .frame(width: 150, height: 34)
                            
                        Text("Thank You!")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            
                    }
                }
            
            }
        .padding()
            
        }
    }
}

struct BeautifulView_Previews: PreviewProvider {
    static var previews: some View {
        BeautifulView(name: .constant("Mike"), entered: .constant(false))
    }
}
