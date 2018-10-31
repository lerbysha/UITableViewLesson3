//
//  SecondViewController.swift
//  InstaCopy
//
//  Created by itisioslab on 29.09.2018.
//  Copyright © 2018 FirstGroupCompany. All rights reserved.
//

import UIKit

struct Person {
    var image: UIImage
    var likeCount: String
    var nick: String
    var pubCount: String
    var folCount: String
    var myFolCount: String
    var status: String
}


class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dataArray: [Person]!
    var imageArray:[UIImage] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageArray = [UIImage(named: "m1"),UIImage(named: "m2"),UIImage(named: "m3"),UIImage(named: "m4"),UIImage(named: "m5"),UIImage(named: "m6"),UIImage(named: "m7"),UIImage(named: "m8"),UIImage(named: "m9"),UIImage(named: "m10"),UIImage(named: "m11"),UIImage(named: "m12")] as! [UIImage]
        
        let petya = Person(image:UIImage(named: "imag")!, likeCount: "123", nick: "RealMedvedev", pubCount: "12", folCount:"345", myFolCount:"143", status: "I'M HAPPY ")
        dataArray = [petya,petya,petya,petya,petya,petya,petya,petya,petya,petya,petya,petya]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        
        let person = dataArray[indexPath.row]
        cell.configurecell(with: person)
        cell.avatarImageView.image = imageArray[indexPath.row]
        return cell
    }
    

    

   

}
