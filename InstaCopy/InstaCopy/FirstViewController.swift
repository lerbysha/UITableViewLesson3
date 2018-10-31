//
//  FirstViewController.swift
//  InstaCopy
//
//  Created by itisioslab on 29.09.2018.
//  Copyright © 2018 FirstGroupCompany. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var imageArray:[UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageArray = [UIImage(named: "m1"),UIImage(named: "m2"),UIImage(named: "m3"),UIImage(named: "m4"),UIImage(named: "m5"),UIImage(named: "m6"),UIImage(named: "m7"),UIImage(named: "m8"),UIImage(named: "m9"),UIImage(named: "m10"),UIImage(named: "m11"),UIImage(named: "m12")] as! [UIImage]
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
        cell.myImage.image = imageArray[indexPath.row]
        return cell 
    }
}
