//
//  ViewController.swift
//  CarPickerJohnG
//
//  Created by John Grasser on 9/12/20.
//  Copyright © 2020 John Grasser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var ColorVehicleLogo: UIImageView!
    @IBOutlet weak var ToyodaLogo: UIImageView!
    @IBOutlet weak var ColorChoice: UISegmentedControl!
    @IBOutlet weak var EngineChoice: UISlider!
    @IBOutlet weak var toggleLeatherSeats: UISwitch!
    @IBOutlet weak var toggleHyperdrive: UISwitch!
    
    
    @IBOutlet weak var SeatsOff: UILabel!
    
    @IBOutlet weak var SeatsOn: UILabel!
    
    
    @IBOutlet weak var GeneratorOff: UILabel!
    
    
    @IBOutlet weak var GeneratorOn: UILabel!
    
    @IBOutlet weak var engineType: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        SeatsOff.text = ""
        SeatsOn.text = "Yes"
        GeneratorOff.text = ""
        GeneratorOn.text = "Yes"
        
    }
    
    

    @IBAction func colorChanged(_ sender: UISegmentedControl) {
        let option = sender.selectedSegmentIndex
        
        if option == 0{
            //change to the black car pick
            let yourImage: UIImage = UIImage(named: "green")!
            ColorVehicleLogo.image = yourImage
        } else if option == 1{
            //change the picture to Silver
            let yourImage: UIImage = UIImage(named: "brown")!
            ColorVehicleLogo.image = yourImage
        } else {
            //change the picture to Olive
            let yourImage: UIImage = UIImage(named: "chrome")!
            ColorVehicleLogo.image = yourImage
        }    }
    
    @IBAction func engineSelect(_ sender: UISlider) {
        let option = lroundf(sender.value)
    
        if option == 0
        {
            engineType.text = "A walker will outrun you!"
            
        }
        else if option == 1
        
        {
            engineType.text = "You will be an average pilot!"
            
        }
        else if option == 2
        {
            engineType.text = "You will be king of Empire!"
            
        }
    
    }
    
    @IBAction func seatSelect(_ sender: UISwitch) {
        
        if (sender.isOn == true)
        {
            SeatsOn.text = "Yes"
            SeatsOff.text = ""        }
        else
        {
            SeatsOff.text = "No"
            SeatsOn.text = ""        }
    }
    
    
    @IBAction func generatorSelector(_ sender: UISwitch) {
   
     if (sender.isOn == true)
    {
        GeneratorOn.text = "Yes"
        GeneratorOff.text = ""
    }
    else
    {
       GeneratorOff.text = "No"
        GeneratorOn.text = ""
    }
    }
    
}

