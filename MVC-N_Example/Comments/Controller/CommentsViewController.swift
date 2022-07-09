//
//  ViewController.swift
//  MVC-N_Example
//
//  Created by test on 09.07.2022.
//

import UIKit

class CommentsViewController: UIViewController {

    @IBOutlet weak var tableView : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CommentsViewController")
        
        NetworkService.shared.getDataTmp(url: URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments")!, completion: {
            (value) in
        })
    }
}

extension CommentsViewController : UITableViewDelegate{
    
}

extension CommentsViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    
}

