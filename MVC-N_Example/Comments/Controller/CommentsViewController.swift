//
//  ViewController.swift
//  MVC-N_Example
//
//  Created by test on 09.07.2022.
//

import UIKit

class CommentsViewController: UIViewController {

    @IBOutlet weak var tableView : UITableView!

    var comments = [Comment]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CommentsViewController")
        
        CommentNetworkService.getComments { response in
            self.comments = response.comments
            self.tableView.reloadData()
        }
    }
}

extension CommentsViewController : UITableViewDelegate{
    
}

extension CommentsViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CommentCell
        cell.configure(with: comments[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }
    
    
}

