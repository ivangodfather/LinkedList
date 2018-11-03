//
//  LinkedList.swift
//  LinkedList
//
//  Created by Ivan Ruiz Monjo on 01/11/2018.
//  Copyright © 2018 Ivan Ruiz Monjo. All rights reserved.
//

import Foundation

struct LinkedList<T> {
    private(set) var head: Node<T>?
    private(set) var tail: Node<T>?
    
    init() {}
    
    var isEmpty: Bool {
        return head == nil
    }
    
    mutating func push(_ value: T) {
        head = Node(value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    mutating func append(_ value: T) {
        guard !isEmpty else {
            push(value)
            return
        }
        tail?.next = Node(value)
        tail = tail?.next
    }
    
    func node(at index: Int) -> Node<T>? {
        var currentNode = head
        var currentIndex = 0
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        return currentNode
    }
    
    @discardableResult
    mutating func insert(_ value: T, after node: Node<T>) -> Node<T> {
        guard tail !== node else {
            append(value)
            return tail!
        }
        node.next = Node(value, next: node.next)
        return node.next!
    }
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        return head?.description ?? "Empty list."
    }
}


