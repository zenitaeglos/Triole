//
//  NetworkConnection.swift
//  Triole
//
//  Created by Alejandro Martinez Montero on 18/12/21.
//

import Foundation

protocol NetworkConnectionProtocol {
    func didReceiveRequest(request data: Data)
    func didNotReceiveRequest(error errorLog: String)
}


class NetworkConnection {
    var delegate: NetworkConnectionProtocol?
    
    
    func getRequest(url httpName: String) {
        let request = URLRequest(url: URL(string: httpName)!)
        let urlSession = URLSession.shared
        let task = urlSession.dataTask(with: request) { (data, response, error) in
            DispatchQueue.main.async {
                guard let data = data, let response = response as? HTTPURLResponse else {
                    if let error = error {
                        print("error")
                        print(error)
                    }
                    return
                }
                if response.statusCode == 200 {
                    print("\(data)")
                    self.delegate?.didReceiveRequest(request: data)
                    
                }
                else {
                    self.delegate?.didNotReceiveRequest(error: "error")
                }
            }
        }
        task.resume()
    }
}
