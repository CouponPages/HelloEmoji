//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Joe Crescenzi on 8/31/17.
//  Copyright © 2017 Joe Crescenzi. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    var Emoji = ""
    var Title = ""
    var ThisEmoji = EmojiClass()
    
    @IBOutlet weak var EmojiLabel: UILabel!
    @IBOutlet weak var EmojiDefinitionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //EmojiLabel.text = Emoji
        EmojiLabel.text = ThisEmoji.Symbol
        EmojiDefinitionLabel.text = ThisEmoji.Title
        
        print(Emoji)
        // Do any additional setup after loading the view.
    }




}
