//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Denis Bokov on 14.09.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = "" 
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .frame(width: 150)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .foregroundColor(color())
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }.disabled(name.count < 3)
        }
    }
    
    private func registerUser() {
        user.name = name
        user.isRegister.toggle()
    }
    
    private func color() -> Color {
        name.count >= 3 ? Color(.systemGreen) : Color(.black)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}
