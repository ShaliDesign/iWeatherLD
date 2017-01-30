//
//  ViewController.swift
//  iWeatherLD
//
//  Created by Linh&ShawnD on 2017-01-26.
//  Copyright © 2017 Shali Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TempButton: UIButton!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBOutlet weak var CFlabel: UILabel!
    
    @IBOutlet weak var Background: UIImageView!
    
    
    var quotes = ["Since we cannot change reality, let us change the eyes which see reality.", "Without a struggle, there can be no progress.", "If you don't like something, change it. If you can't change it, change your attitude."]
    
    var city = ["Hanoi", "Vancouver", "Toronto"]
    
    var BackgroundImage = ["Blood", "Moon", "Sun"]
    
    var isCel : Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func changeTempAction(_ sender: Any) {
        
        isCel = !isCel
        
        var currentTemp = Double((TempButton.titleLabel?.text)!)
        
        if isCel {
            currentTemp = (currentTemp! - 32) / 1.8
            
            TempButton.setTitle(String(format: "%2.1f", currentTemp!), for: <#T##UIControlState#>)
            
            CFlabel.text = "C"
        }
        else
        {
            currentTemp = currentTemp! * 1.8 + 32
            
          TempButton.setTitle(String(format: "%2.1f", currentTemp!), for: <#T##UIControlState#>)
            
            CFlabel.text = "F"
            
        }
        
    }
    
    @IBAction func changeCAndF(_ sender: Any) {
        
        let cityIndex = Int(arc4random_uniform(UInt32(city.count)))
        
        cityLabel.text = city[cityIndex]
        
        let quoteIndex = Int(arc4random_uniform(UInt32(quotes.count)))
        
        quoteLabel.text = quotes[quoteIndex]
        
        let imageindex = Int(arc4random_uniform(UInt32(BackgroundImage.count)))
        
        Background.image = UIImage.init(named: BackgroundImage[imageindex])
        
        getTemp()
        
    }
    func getTemp() -> Void {
        
        let randomNumber = String(format: "%2.1f", TempRandom())
        
        tempButton.setTitle(Temp, for: UIControlState())
        
    }

    func randomTemp() -> Double {
        
        if isCel {
            return Double(arc4random_uniform(18) + 14) + Double(arc4random()) / Double(INT32_MAX)
        }else{
            return (Double(arc4random_uniform(18) + 14) + Double(arc4random()) / Double(INT32_MAX)) * 1.8 + 32
        }
        
    }
    

    }
    
    
































