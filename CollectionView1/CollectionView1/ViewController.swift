//
//  ViewController.swift
//  CollectionView1
//
//  Created by trainee on 08/11/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet weak var collVw: UICollectionView!
    
    let arrFood = ["Burger","Fruits","Pizza","Vegetables"]
    let arrFoodImages : [UIImage] = [
        UIImage(named: "1")!,
        UIImage(named: "2")!,
        UIImage(named: "3")!,
        UIImage(named: "4")!,]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrFood.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for:indexPath) as! CollectionViewCell
        cell.imgVw.image = arrFoodImages[indexPath.item]
        cell.lblTxt.text = arrFood[indexPath.row]
        return cell
    }
    
}

