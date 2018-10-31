//
//  ThirdViewController.swift
//  InstaCopy
//
//  Created by itisioslab on 29.09.2018.
//  Copyright © 2018 FirstGroupCompany. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let const = 2
    let images = [1, 2 ,3 ,4]
    let idintifier = "photosCollectionViewCell"
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return const
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: idintifier, for: indexPath) as! PhotosCollectionViewCell
        cell.myImage.image = UIImage(named: "imag")
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
