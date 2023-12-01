//
//  TodoEndpoint.swift
//  MyIosNetworking
//
//  Created by Никита Кислов on 01.12.2023.
//

import Foundation

enum TodoEndpoint: Endpoint {
    case todo(Int)
    
    var compositePath: String {
        switch self {
            
        case . todo(let number):
            return "/todos/\(number)"
        }
    }
    
    var headers: HeaderModel { [:] }
}

struct Todo: Codable {
    let userID, id: Int
    let title: String
    let completed: Bool
    
    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, completed
    }
}

final class TodoWorker {
    private let networking: Networking = Networking(
        baseUrl: "https://jsonplaceholder.typicode.com"
    )
    
    typealias ToDoResult = (Result<Todo, Error>) -> Void
    
    func fetchTodos() {
        let endpoint = TodoEndpoint.todo(1)
        let request = Request(endpoint: endpoint, method: .get)
        networking.executeRequest(with: request) { result in
            switch result {
                
            case .success(let model):
                if let data = model.data{
                    print(String(data: data, encoding: .utf8))
                }
            case .failure(let error):
                break
//                complition(.failure(error))
            }
        }
    }
}
