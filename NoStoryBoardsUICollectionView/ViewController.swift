//
//  ViewController.swift
//  NoStoryBoardsUICollectionView
//
//  Created by Macbook on 03/05/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

     let images = ["1","2","3","4","5","6","7"]
     
     override func viewDidLoad() {
          super.viewDidLoad()
          
          collectionView?.backgroundColor = UIColor.white
          collectionView?.delegate = self
          collectionView?.dataSource = self
          collectionView?.register(ImageCell.self, forCellWithReuseIdentifier: "cell")
          
     }

     override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return images.count
     }
     
     override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImageCell
          
          cell.profileImageView.image = UIImage(named: images[indexPath.item])
          
          return cell
     }
     
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
     
          return CGSize(width: view.frame.width, height: 120)
          
     }
     
     override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
          print(images[indexPath.item])
          
     }

 
}

