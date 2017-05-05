//
//  ImageCell.swift
//  NoStoryBoardsUICollectionView
//
//  Created by Macbook on 03/05/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class ImageCell: UICollectionViewCell {

     let profileImageView = UIImageView()

     override init(frame: CGRect) {
          super.init(frame: frame)
     
           setupViews()
     }
     
     func setupViews() {
          
          addSubview(profileImageView)
          profileImageView.translatesAutoresizingMaskIntoConstraints = false
          profileImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
          profileImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
          profileImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
          profileImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true

     }
     
     
     required init?(coder aDecoder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
     }
  }
