//
//  AuthServices.swift
//  Twitter Clone
//
//  Created by Hanaf on 07/03/2024.
//

import Foundation
import SwiftUI

enum NetworkError: Error{
    case invalidURL
    case noData
    case decodingError
}

enum AuthenticationError: Error{
    case invalidCredential
    case custom(ErrorMessage: String)
}

public class AuthServices{
    
    public static var requestDomain = ""
    
    static func login(email: String, password: String, completion: @escaping(_ result: Result<Data?, AuthenticationError>) -> Void){
        let urlString = URL(string: "http://localhost:3000/users/login")!
        
        makerequest(urlString: urlString, requestBody: ["email": email, "password": password]) { result in
            switch result{
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(.invalidCredential))
            }
        }
    }
    
    static func register(email: String, username: String,name: String ,password: String, completion: @escaping (_ result: Result <Data?, AuthenticationError>) -> Void){
        let urlString = URL(string: "http://localhost:3000/users")!
        
        makerequest(urlString: urlString, requestBody: ["email": email,"username": username,"name": name, "password": password]) { result in
            switch result{
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(.invalidCredential))
            }
        }
    }
    
    static func makerequest(urlString: URL, requestBody: [String: Any], completion: @escaping (_ result: Result<Data?, NetworkError>) -> Void ){
            
            let session = URLSession.shared
            
            var request = URLRequest(url: urlString)
            
            request.httpMethod = "POST"
            
            do{
                request.httpBody = try JSONSerialization.data(withJSONObject: requestBody, options: .prettyPrinted)
            }
            
            catch let error{
                print(error)
            }
            
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("application/json", forHTTPHeaderField: "Accept")
            
            let task = session.dataTask(with: request) {data, res, err in
                guard err == nil else{
                    return
                }
                
                guard let data = data else{
                    completion(.failure(.noData))
                    return
                }
                do {
                    if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any]{
                        
                    }
                }
                catch let error {
                    completion(.failure(.decodingError))
                    print(error)
                }
            }
            task.resume()
        
    }
}
