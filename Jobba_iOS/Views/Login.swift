//
//  Login.swift
//  Jobba_iOS
//
//  Created by Ozgur Ozturk on 11.07.2020.
//  Copyright © 2020 Ozgur Ozturk. All rights reserved.
//

import SwiftUI

struct Login: View {
    @ObservedObject private var keyboard = KeyboardResponder()
    @State var userName: String = ""
    @State var password: String = ""
    var body: some View {
        
        VStack(alignment: .center) {
            Spacer()
            Image("icon")
                .resizable()
                .scaledToFit()
                .frame(width:128)
                .shadow(radius: 24)
                .offset(y: -64)
            VStack(alignment: .leading){
                Text("User Name")
                    .font(.subheadline)
                TextField("User Name", text: $userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.bottom, 16)
                Text("Password")
                    .font(.subheadline)
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.foregroundColor(.white)
            Spacer()
        }
        .padding(.bottom, keyboard.currentHeight)
        .animation(.easeInOut)
        .padding(.horizontal)
        .background(LinearGradient(gradient: Gradient(colors: [Color(UIColor.systemBlue), Color(UIColor.systemIndigo)]), startPoint: .topTrailing, endPoint: .bottomLeading))
        .edgesIgnoringSafeArea(.all)
        .preferredColorScheme(.light)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login().environmentObject(KeyboardResponder())
    }
}
