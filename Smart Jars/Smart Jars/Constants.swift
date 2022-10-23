//
//  Constants.swift
//  Smart Jars
//
//  Created by Ashutosh Mane on 23/10/22.
//




import Foundation
import UIKit

struct API{
    
}

struct Design{
    
         

    
    struct Fonts{
        static var Title:UIFont{
            guard let customFont = UIFont(name: "Montserrat-Bold", size: 28.7) else {
                fatalError("""
                    Failed to load the "CustomFont-Light" font.
                    Make sure the font file is included in the project and the font name is spelled correctly.
                    """
                )}
            return customFont
        }
        
        static var Body:UIFont{
            guard let customFont = UIFont(name: "Montserrat-SemiBold", size: 19) else {
                fatalError("""
                    Failed to load the "CustomFont-Light" font.
                    Make sure the font file is included in the project and the font name is spelled correctly.
                    """
                )}
            return customFont
        }
        
    }
    
    struct Color{
        static let wise_blue:UIColor = UIColor(r: 55, g: 81, b: 126, a: 1)
        static let wise_backgroundGrey:UIColor = UIColor(r: 242, g: 245, b: 247, a: 1)
        
    }
}

