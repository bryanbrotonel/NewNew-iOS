//
//  ViewController.swift
//  New New
//
//  Created by Bryan Brotonel on 2018-03-23.
//  Copyright © 2018 Bryan Brotonel. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    struct Post {
        var Name : String;
        var Description : String;
        var Image: String;
        var Instagram: String;
        var SoundCloud: String;
    }
    
    var dbReference: DatabaseReference?
    var dbHandle: DatabaseHandle?
    
    var postData = [Post]()
    
    @IBOutlet weak var tableView: UITableView!
    
    let elements = ["first", "second", "third"]

    override func viewDidLoad() {
        
        dbReference = Database.database().reference()
        
        dbHandle = dbReference?.child("artists").child("posts").observe(.childAdded, with: { (DataSnapshot) in
            let enumerator = DataSnapshot.children
            
            while let child = enumerator.nextObject() as? DataSnapshot {

                print("\(child.key): \(child.value as! String)")
            }
            
        })
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.allowsSelection = false
        tableView.separatorStyle = .none
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell") as! PostViewCell
        
        cell.nameLabel.text = elements[indexPath.row]
        cell.artistImage.image = UIImage(named: "me")
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

