//
//  TodoViewModel.swift
//  mvvm-c-coordinator
//
//  Created by DSDEVMAC2 on 5/12/24.
//

import Foundation
import Combine

class TodoViewModel: ObservableObject {
    
    private var cancellables = Set<AnyCancellable>()
    private let todoService = TodoService()
    @Published var todos: [Todo] = []
    
    func fetchTodos() {
        todoService.fetchTodos()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in }) { todos in
                self.todos = todos
            }
            .store(in: &cancellables)
    }
    
}
