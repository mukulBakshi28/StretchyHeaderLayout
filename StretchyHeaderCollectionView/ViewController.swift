//
//  ViewController.swift
//  StretchyHeaderCollectionView
//
//  Created by MUKUL on 29/12/18.
//  Copyright © 2018 CoderWork. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionViewStrtch: UICollectionView!
    var hView:HeaderView!
    
    //MARK: LifeCycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerCell()
     }
    
    //MARK: Custom Methods
    func registerCell() {
        collectionViewStrtch.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionViewStrtch.register(UINib(nibName: "HeaderView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "hView")
      hView = HeaderView.loadNib()
        
    }
 
}

//MARK: CollectionView Delegates And DataSource
extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 320)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
       
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "hView", for: indexPath)
        return headerView
     }
     
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .red
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return  .init(width:collectionView.frame.width - 7,height:60)
        
    }
}
