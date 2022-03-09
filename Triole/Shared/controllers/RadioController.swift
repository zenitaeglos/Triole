//
//  RadioController.swift
//  Triole
//
//  Created by Alejandro Martinez Montero on 17/12/21.
//

import Foundation

struct RadioStationOld: Codable {
    var name: String
    var favicon: String
    var url: String
    var url_resolved: String
    var stationuuid: String
    var homepage: String
    var countrycode: String
}


class RadioController: ObservableObject {
    var network: NetworkConnection
    
    @Published var radioStationsList: [RadioStation] = []
    
    init() {
        network = NetworkConnection()
        network.delegate = self
    }
    
    //TODO: requestData with a string argument that comes from ui
    func requestData() {
        //https://nl1.api.radio-browser.info/json/stations/byname/ser
        self.network.getRequest(url: RadioStation.radioStationUrl() + "json/stations/byname/ser")
    }
}


extension RadioController: NetworkConnectionProtocol {
    func didReceiveRequest(request data: Data) {
        let radioStations = try? JSONDecoder().decode([RadioStation].self, from: data)
        print(radioStations ??  "one")
        if let radioStations = radioStations {
            self.radioStationsList = radioStations
        }
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
