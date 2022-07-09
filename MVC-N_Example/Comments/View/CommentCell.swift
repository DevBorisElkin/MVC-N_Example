//
//  CommentCell.swift
//  MVC-N_Example
//
//  Created by test on 09.07.2022.
//

import UIKit

class CommentCell : UITableViewCell{
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment){
        label.text = comment.name
        textView.text = comment.body
    }
}
