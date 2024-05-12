//
//  ToDoViewController.swift
//  mvvm-c-coordinator
//
//  Created by DSDEVMAC2 on 5/12/24.
//

import UIKit
import Combine

class ToDoViewController: UIViewController {

    var cancellable = Set<AnyCancellable>()
    let viewModel = TodoViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        viewModel.fetchTodos()
        bindViewModelWithView()
    }


    private func bindViewModelWithView(){
        viewModel.$todos
            .receive(on: DispatchQueue.main)
            .sink {[weak self] value in
                guard let self else {return}
                print(viewModel.todos)
            }
            .store(in: &cancellable)
    }

}
