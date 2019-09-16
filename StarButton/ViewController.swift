//
//  ViewController.swift
//  StarButton
//
//  Created by Rupika on 2019-03-25.
//  Copyright © 2019 Rupika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var starFirstButton : UIButton!
    @IBOutlet var starSecondButton : UIButton!
    @IBOutlet var starThirdButton : UIButton!
    @IBOutlet var starFourthButton : UIButton!
    @IBOutlet var starFifthButton : UIButton!
    @IBOutlet var slider : UISlider!
    @IBOutlet var label : UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func getButtonWithTag(_ tag : Int) -> UIButton?{
        
        if tag == 1 {return starFirstButton}
        
        if tag == 2 {return starSecondButton}
        
        if tag == 3 {return starThirdButton}
        
        if tag == 4 {return starFourthButton}
    
        if tag == 5 {return starFifthButton}
        
        return .none
    }
    
    func toggleButtonImage(_ btnTapped : UIButton){
        
        if (btnTapped.currentImage?.isEqual(UIImage(named: "filledstar")))!{
            
            let img = UIImage(named: "unfilledstar")
            btnTapped.setImage(img , for: .normal)
        }
        else{
            
            let img = UIImage(named: "filledstar")
            btnTapped.setImage(img , for: .normal)
        }
    }
    
    func makeFillBtn(_ btnTapped : UIButton){
        
            let img = UIImage(named: "filledstar")
            btnTapped.setImage(img , for: .normal)
    }
    
    func makeUnFillBtn(_ btnTapped : UIButton){
        
        let img = UIImage(named: "unfilledstar")
        btnTapped.setImage(img , for: .normal)
    }

    @IBAction func buttonClicked(btnTapped : UIButton){
 
//        if btnTapped.tag == 0 {
//
//            toggleButtonImage(starFirstButton)
//
//        }else if btnTapped.tag == 1{
//
//           toggleButtonImage(starSecondButton)
//        }
//        else if btnTapped.tag == 2{
//
//            toggleButtonImage(starThirdButton)
//        }
//        else if btnTapped.tag == 3{
//
//            toggleButtonImage(starFourthButton)
//        }
//        else if btnTapped.tag == 4{
//
//            toggleButtonImage(starFifthButton)
//        }
//        else
//        {
//            print("error")
//        }
        
       
        for i in 1..<(btnTapped.tag + 1) {
            
            if let btn = getButtonWithTag(i){
                    makeFillBtn(btn)
            }
        }
        
        for i in btnTapped.tag+1..<6 {
            
            if let btn = getButtonWithTag(i){
                makeUnFillBtn(btn)
            }
        }

        
        
        }
    @IBAction func sliderValueChanged(_ sender : Any){
        
        let currentValue = Int(slider.value)
       
        label.text = "\(slider.value)"
        
        print(currentValue)
        
        for i in 1..<(currentValue + 1) {
            
            if let btn = getButtonWithTag(i){
                makeFillBtn(btn)
            }
        }
        for i in (currentValue + 1)..<6 {
            
            if let btn = getButtonWithTag(i){
                    makeUnFillBtn(btn)
                    
            }
        }
        if currentValue == 0{
            
            if let btn = getButtonWithTag(1){
                makeUnFillBtn(btn)
            }
            
        }

    }

}

