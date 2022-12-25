//
//  Login.swift
//  VKSwiftUI
//
//  Created by Алексей Артамонов on 18.10.2022.
//

import SwiftUI

struct Login: View {
    
    @State private var login: String = ""
    @State var password: String = ""
    var welcome: String = "Добро пожаловать"
    
    var body: some View {
        ZStack {
            HStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Text(welcome)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .frame(alignment: .center)
                            .foregroundColor(.white)
                            .padding(10)
                            .background(Color.accentColor)
                            .cornerRadius(12)
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                        
                        Image("logo")
                            .resizable()
                            .frame(width: 80, height: 80, alignment: .center)
                            .padding(10)
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                    }
                    VStack(spacing: 10) {
                        Text("Введите логин и пароль")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(.accentColor)
                            .opacity(0.9)
                            .frame(alignment: .leading)
                        
                        TextField("Номер телефона или E-mail",
                                  text: $login)
                        .textFieldStyle(.roundedBorder)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Gradient(colors: [.blue, .green]))
                            
                        )
                        
                        TextField("Введите пароль", text: $password)
                            .textFieldStyle(.roundedBorder)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Gradient(colors: [.green, .blue]))
                            )
                        
                        Button {
                            //
                        } label: {
                            Text("Войти")
                                .padding(15)
                                .border(.secondary)
                                .buttonBorderShape(.roundedRectangle)
                        }

                    }
                    .padding(.horizontal, 25)
                }
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
