//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Denis Bokov on 14.09.2022.
//

import SwiftUI

struct RegisterView: View {
    @AppStorage("person") var person = ""
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $person)
                    .frame(width: 150)
                    .multilineTextAlignment(.center)
                Text("\(person.count)")
                    .foregroundColor(color())
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }.disabled(person.count < 3)
        }
    }
    
    private func registerUser() {
        user.name = person
        user.isRegister.toggle()
    }
    
    private func color() -> Color {
        person.count >= 3 ? Color(.systemGreen) : Color(.gray)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}
