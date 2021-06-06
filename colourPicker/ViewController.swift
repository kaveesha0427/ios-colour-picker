//
//  ViewController.swift
//  colourPicker
//
//  Created by Kaveesha Fernando on 2021-06-05.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelRed: UILabel!
    
    @IBOutlet weak var labelBlue: UILabel!
    
    @IBOutlet weak var labelGreen: UILabel!
    
    @IBOutlet weak var sliderRed: UISlider!
    
    @IBOutlet weak var sliderGreen: UISlider!
    
    @IBOutlet weak var sliderBlue: UISlider!
    
    @IBOutlet weak var colourView: UIImageView!
    
    var colour:Colour?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelRed.text = "0"
        labelGreen.text = "0"
        labelBlue.text = "0"
        colour = Colour(red: 0.0, green: 0.0, blue: 0.0)
    }
    
    @IBAction func redColourChange(_ sender: UISlider) {
        labelRed.text = String(format: "%.0f",sliderRed.value)
        colour?.redValue = sender.value
        colourView.backgroundColor = colour?.getColour()
    }
   
    @IBAction func greenValueChange(_ sender: UISlider) {
        labelGreen.text = String(format: "%.0f",sliderGreen.value)
        colour?.greenValue = sender.value
        colourView.backgroundColor = colour?.getColour()
    }
    
    @IBAction func blueColourChange(_ sender: UISlider) {
        labelBlue.text = String(format: "%.0f",sliderBlue.value)
        colour?.blueValue = sender.value
        colourView.backgroundColor = colour?.getColour()
    }
    
}

