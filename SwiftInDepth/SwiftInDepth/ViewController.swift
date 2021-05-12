//
//  ViewController.swift
//  SwiftInDepth
//
//  Created by nhatnt on 10/05/2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func logMessage(message: Message) {
        switch message {
        case let .text(userId: id, contents: contents, date: date):
            print("[\(date)] User \(id) sends message: \(contents)")
        case let .draft(userId: id, date: date):
            print("[\(date)] User \(id) is drafting a message")
        case let .join(userId: id, date: date):
            print("[\(date)] User \(id) has joined the chatroom")
        case let .leave(userId: id, date: date):
            print("[\(date)] User \(id) has left the chatroom")
        case let .balloon(userId: id, date: date):
            print("[\(date)] User \(id) is sending balloons")
        }
    }
    
    //matching on a single case
    func getTextMessage(message: Message) -> String? {
        if case let Message.text(_, contents: contents, _) = message {
            return contents
        }
        return nil
    }
    
    private func multipleTypesWithEnum() {
        //add multiple types to an array via an enum
        let now = Date()
        let hourFromNow = Date(timeIntervalSinceNow: 3600)
        
        let dates: [DateType] = [
            DateType.singleDate(now),
            DateType.dateRange(now..<hourFromNow)
        ]
        
        for dateType in dates {
            switch dateType {
            case .singleDate(let date): print("Date is \(date)")
            case .dateRange(let range): print("Range is \(range)")
            }
        }
    }
}

