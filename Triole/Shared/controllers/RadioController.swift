//
//  RadioController.swift
//  Triole
//
//  Created by Alejandro Martinez Montero on 17/12/21.
//

import Foundation

struct RadioStation: Codable {
    var name: String
}


class RadioController: ObservableObject {
    var network: NetworkConnection
    
    init() {
        network = NetworkConnection()
        network.delegate = self
    }
    
    func requestData() {
        self.network.getRequest(url: "https://de1.api.radio-browser.info/json/stations/byname/ser")
    }
}


extension RadioController: NetworkConnectionProtocol {
    func didReceiveRequest(request data: Data) {
        let radioStations = try? JSONDecoder().decode([RadioStation].self, from: data)
        print(radioStations ??  "one")
        /*
        print("\(data.count)")
        let xxx = ByteCountFormatter()
        xxx.allowedUnits = [.useMB]
        xxx.countStyle = .file
        let string = xxx.string(fromByteCount: Int64(data.count))
        let str = String(decoding: data, as: UTF8.self)
        print("\(str)")
        print("size of query: \(string)")
         */
    }
    
    func didNotReceiveRequest(error errorLog: String) {
        print("this is an error")
    }
    
    
}
