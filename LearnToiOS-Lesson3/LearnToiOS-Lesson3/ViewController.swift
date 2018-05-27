//
//  ViewController.swift
//  LearnToiOS-Lesson3
//
//  Created by Jack Spargo on 27/05/2018.
//  Copyright © 2018 Jack Spargo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var holidays = [
        Holiday(title: "Paris", country: "France", currency: .EUR, emoji: "🥖"),
        Holiday(title: "Madrid", country: "Spain", currency: .EUR, emoji: "⚽️"),
        Holiday(title: "New York", country: "USA", currency: .USD, emoji: "🗽"),
        Holiday(title: "Los Angeles", country: "USA", currency: .USD, emoji: "🎥"),
        Holiday(title: "Moscow", country: "Russia", currency: .RUB, emoji: "🐻"),
        Holiday(title: "Sydney", country: "Australia", currency: .AUS, emoji: "🏖"),
        Holiday(title: "Tokyo", country: "Japan", currency: .JPY, emoji: "🗼")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.rowHeight = 64.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = holidays[indexPath.row]
        let dequeued = tableView.dequeueReusableCell(withIdentifier: "HolidayCell", for: indexPath) as! HolidayTableViewCell
        
        dequeued.setUpCell(withHoliday: data)
        return dequeued
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return holidays.count
    }
    
}

