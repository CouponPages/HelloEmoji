//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Joe Crescenzi on 8/31/17.
//  Copyright © 2017 Joe Crescenzi. All rights reserved.
//

import UIKit
class EmojiTableViewController: UITableViewController {
    
    var Emojis = ["😀",
                  "💩",
                  "🏎",
                  "💒",
                  "🎁",
                  "🛎",
                  "❤️",
                  "🥑"]
    var Titles = ["😀 - The Smley Face",
                  "💩 - Poop (AKA Chocolate Ice Cream)",
                  "🏎 - The Swift Race Car",
                  "💒 - Church",
                  "🎁 - A Gift!",
                  "🛎 - You can Ring My Bell",
                  "I ❤️ Emojis",
                  "🥑 = Holy Guacamole!... It's an Avocado"]
    struct MyEmojis {
        
        var Symbol: String?
        var Title: String?
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Emojis.count
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // print("Tapped!")
        // let Emoji = Emojis[indexPath.row]
        let MyEmoji = EmojiClass()
        MyEmoji.Symbol = Emojis[indexPath.row]
        MyEmoji.Title = Titles[indexPath.row]
        
        performSegue(withIdentifier: "MySeque", sender: MyEmoji)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)

        cell.textLabel?.text = Emojis[indexPath.row]
        //,print(indexPath.row)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        let EmojiDefVC = segue.destination as! EmojiDefinitionViewController
        
        EmojiDefVC.ThisEmoji = sender as! EmojiClass
        // EmojiDefVC.Emoji = (sender? as! EmojiClass).Symbol as! String
    }

    
    // This function was created, but not used because Nick created a similar class method,
    // but it's used differently, so I'm just following his example for training purposes.
    func CreateEmojis() -> [EmojiClass]{
        let Smiley = EmojiClass()
        Smiley.BirthYear = 2012
        Smiley.Category = "Food"
        Smiley.Symbol = "🥑"
        Smiley.Title = "Holy Guacamole!  It's an Avocado!"
        
        return [Smiley, Smiley, Smiley]
    }
    
    
}
