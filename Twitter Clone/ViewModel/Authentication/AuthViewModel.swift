//
//  AuthViewModel.swift
//  Twitter Clone
//
//  Created by Hanaf on 06/03/2024.
//

import SwiftUI

class AuthViewModel: ObservableObject {
    
    @Published var isAuthenticated = false
    @Published var currentUser: User?
    
    func logon(email: String, password: String){
        
        let defaults = UserDefaults.standard
        
        AuthServices.login(email: email, password: password) { result in
            switch result{
            case .success(let data):
                guard let user = try? JSONDecoder().decode(ApiResponse.self, from: data as! Data) else {
                    return
                }
                DispatchQueue.main.async {
                    defaults.set(user.token, forKey: "jsonwebtoken")
                    defaults.set(user.user, forKey: "userid")
                    self.isAuthenticated =  true
                    self.currentUser = user.user
                    print("Loged In")
                }
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }

    }
    
    func register(name: String, username: String, email: String, password: String){
        AuthServices.register(email: email, username: username, name: name, password: password) { result in
            switch result{
            case .success(let data):
                guard let user = try? JSONDecoder().decode(ApiResponse.self, from: data as! Data) else{
                    return
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func logout(){
        
        
    }
}
