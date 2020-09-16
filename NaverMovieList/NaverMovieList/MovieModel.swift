//
//  MovieModel.swift
//  NaverMovieList
//
//  Created by Sky Ashboun on 2020/09/14.
//  Copyright © 2020 Sky Ashboun. All rights reserved.
//

import Foundation

struct MovieModel:Codable {
    let lastBuildDate:String
    let total:Int
    let start:Int
    let display:Int
    let items:[MovieItem]
}

struct MovieItem:Codable {
    let title:String
    let link:String
    let image:String
    let subtitle:String
    let pubDate:String
    let director:String
    let actor:String
    let userRating:String
}
