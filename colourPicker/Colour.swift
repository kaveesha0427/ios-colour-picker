//
//  Colour.swift
//  colourPicker
//
//  Created by Kaveesha Fernando on 2021-06-07.
//

import Foundation
import UIKit

class Colour
{
    var redValue: Float = 0.0
    var greenValue: Float = 0.0
    var blueValue: Float = 0.0
    
    init(red:Float,green:Float,blue:Float) {
        self.redValue = red
        self.blueValue = blue
        self.greenValue = green
    }
    
    
    func getColour() -> UIColor {
        
        let newColour = UIColor(red: CGFloat( redValue/255.0), green:CGFloat (greenValue/255.0), blue: CGFloat (blueValue/255.5), alpha: 1.0)
        
        return newColour
        
    }
    
}
