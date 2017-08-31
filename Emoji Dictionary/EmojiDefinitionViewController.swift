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
    
    @IBOutlet weak var EmojiLabel: UILabel!
    @IBOutlet weak var EmojiDefinitionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        EmojiLabel.text = Emoji
        
        print(Emoji)
        // Do any additional setup after loading the view.
    }




}
