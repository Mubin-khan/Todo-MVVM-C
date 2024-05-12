//
//  TodoModel.swift
//  mvvm-c-coordinator
//
//  Created by DSDEVMAC2 on 5/12/24.
//

import Foundation

struct Todo: Decodable {
    let id: Int
    let title: String
    let completed: Bool
}
