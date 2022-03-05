//
//  RadioCodable.swift
//  Triole
//
//  Created by Alejandro Martinez Montero on 5/3/22.
//

import Foundation



struct RadioStation: Codable {
    var changeuuid: String
    var name: String
    var url: String
    var homepage: String
    var favicon: String
    var tags: String
    var countrycode: String
    var languagescodes: String
    var votes: String
    var codec: String
}
