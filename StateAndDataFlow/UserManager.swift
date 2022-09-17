//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Denis Bokov on 14.09.2022.
//

import Foundation

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
