//
//  HolidayTableViewCell.swift
//  LearnToiOS-Lesson3
//
//  Created by Jack Spargo on 27/05/2018.
//  Copyright © 2018 Jack Spargo. All rights reserved.
//

import UIKit

class HolidayTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUpCell(withHoliday holiday: Holiday) {
        self.titleLabel.text = holiday.title
        self.emojiLabel.text = holiday.emoji
        self.currencyLabel.text = holiday.currency.rawValue
        setUpBackgroundImage(withName: holiday.title)
    }
    
    func setUpBackgroundImage(withName name: String) {
        guard let image = UIImage(named: name) else {
            self.photoImageView.image = UIImage(named: "notfound")
            return
        }
        self.photoImageView.image = image
    }
}
