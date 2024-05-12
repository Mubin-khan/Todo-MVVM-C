//
//  TodoServiceManager.swift
//  mvvm-c-coordinator
//
//  Created by DSDEVMAC2 on 5/12/24.
//

import Foundation
import Combine

class TodoService {
    private let baseURL = URL(string: "https://jsonplaceholder.typicode.com/todos")!
    func fetchTodos() -> AnyPublisher<[Todo], Error> {
        URLSession.shared.dataTaskPublisher(for: baseURL)
            .map(\.data)
            .decode(type: [Todo].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
