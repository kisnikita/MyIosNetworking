//
//  ArticlesEndpoint.swift
//  MyIosNetworking
//
//  Created by Никита Кислов on 15.12.2023.
//

import Foundation

enum ArticlesEndpoint: Endpoint {
    case news

    var compositePath: String {
        switch self {
            
        case .news:
            return "todos/3"
        }
    }
    
    var headers: HeaderModel { [:] }
}
