//
//  ViewControllerExtension.swift
//  Smart Jars
//
//  Created by Ashutosh Mane on 23/10/22.
//

import Foundation
import UIKit

extension ViewController:UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = 200
        let height = 200
        let itemSize = CGSize(width: (width), height: (height+30))
        return itemSize
        
    }
    
}
