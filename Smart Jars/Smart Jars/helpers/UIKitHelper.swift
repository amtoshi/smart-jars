//
//  UIKitHelper.swift
//  Smart Jars
//
//  Created by Ashutosh Mane on 23/10/22.
//

import Foundation
import UIKit

extension UIColor {
     convenience init(r: CGFloat,g:CGFloat,b:CGFloat,a:CGFloat = 1) {
         self.init(
             red: r / 255.0,
             green: g / 255.0,
             blue: b / 255.0,
             alpha: a
         )
     }
 }
