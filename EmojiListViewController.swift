//
//  EmojiListViewController.swift
//  Emoji Dictionary
//
//  Created by Marvin T. on 6/4/15.
//  Copyright (c) 2015 Marvin Turner. All rights reserved.
//

import Foundation
import UIKit

class EmojiEntry {
    private var emoji : Character
    private var definition : String
    private var name : String
    
    // init() funcs
    // must always init with emoji
    init(emoji: Character){
        self.emoji = emoji
        self.definition = "Emoji Definition"
        self.name = "Emoji Name"
    }
    
    init(emoji: Character, definition: String){
        self.emoji = emoji
        self.definition = definition
        self.name = "Emoji Name"
    }

    init(emoji: Character, name: String){
        self.emoji = emoji
        self.definition = "Emoji Definition"
        self.name = name
    }
    
    init(emoji: Character, name: String, definition: String){
        self.emoji = emoji
        self.definition = definition
        self.name = name
    }

    // getters and setters
    func getName() -> String {
        return self.name
    }
    
    func setName(nameToSet: String) {
        self.name = nameToSet
    }
    
    func getEmoji() -> Character {
        return self.emoji
    }
    
    func setEmoji(emojiToSet: Character) {
         self.emoji = emojiToSet
    }

    func getDefinition() -> String {
        return self.definition
    }
    
    func setDefinition(definitionToSet: String) {
        self.definition = definitionToSet
    }

}

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["😏","😑","😇","😢","😘","💸","🔮","🙈","💙","👿","💯","🎉","🍷","👀"]
    var emoji : String = ""
    
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        /* indexPath.row returns the number of the current row
            in the TableView
        */
        cell.textLabel!.text = self.emojis[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as! EmojiDetailViewController
        
        detailViewController.emoji = self.emoji
    }
    
}