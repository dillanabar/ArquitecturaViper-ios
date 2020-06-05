//
//  ModelTv.swift
//  AppConViper
//
//  Created by Daniel Illana Bargueño on 05/06/2020.
//  Copyright © 2020 Daniel Illana Bargueño. All rights reserved.
//

import Foundation

struct ModelTv: Codable {
    let totalPages: Int
    let listOfSeries: [TvSeries]
    
    enum CodingKeys: String, CodingKey {
        case totalPages = "total_pages"
        case listOfSeries = "results"
    }
}

struct TvSeries: Codable {
    
    let title: String
    let popularity: Double
    let vote: Double
    let sipnosis: String
    let image: String
    
    enum CodingKeys: String, CodingKey {
        case title = "name"
        case popularity
        case vote = "vote_average"
        case sipnosis = "overview"
        case image = "poster_path"

}
