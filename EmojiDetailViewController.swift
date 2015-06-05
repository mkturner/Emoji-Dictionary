//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Marvin T. on 6/4/15.
//  Copyright (c) 2015 Marvin Turner. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "🔮"
    
    override func viewDidLoad() {
        self.emojiLabel.text = self.emoji
    }
    
}