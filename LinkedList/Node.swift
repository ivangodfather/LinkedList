//
//  Node.swift
//  LinkedList
//
//  Created by Ivan Ruiz Monjo on 01/11/2018.
//  Copyright © 2018 Ivan Ruiz Monjo. All rights reserved.
//

import Foundation

final class Node<T> {
    var data: T
    var next: Node?
    
    init(_ data: T, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        guard let next = next else {
            return "\(data)"
        }
        return "\(data) \(next)"
    }
}
