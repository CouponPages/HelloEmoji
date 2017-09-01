//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Joe Crescenzi on 8/31/17.
//  Copyright © 2017 Joe Crescenzi. All rights reserved.
//

import UIKit
class EmojiTableViewController: UITableViewController {
    
    var Emojis = ["😀", "💩", "🏎", "💒", "🎁", "🛎", "❤️", "🥑"]
    var Titles = ["😀", "💩", "🏎", "💒", "🎁", "🛎", "❤️", "🥑"]
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
        MyEmoji.Title = Emojis[indexPath.row]
        
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

}
