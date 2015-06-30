//
//  ViewController.swift
//  Fuel Density Calculator
//
//  Created by Max on 2/27/15.
//  Copyright (c) 2015 Gammon Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var two: UILabel!
    @IBOutlet var apiDensityView: UIView!
    @IBOutlet var relativeDensityView: UIView!
    @IBOutlet var densityConversionView: UIView!
    @IBOutlet var temperatureConverterView: UIView!
    
    var viewArray = NSArray();
    var titleArray = NSArray();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var view1 = UIView(frame: CGRectMake(30, 24, 260, 95))
        var view2 = UIView(frame: CGRectMake(30, 144, 260, 95))
        var view3 = UIView(frame: CGRectMake(30, 264, 260, 95))
        var view4 = UIView(frame: CGRectMake(30, 384, 260, 95))
        
        var label1 = UILabel(frame: CGRectMake(10, 10, 240, 30))
        label1.text = "API Gravity Calculator"
        var label2 = UILabel(frame: CGRectMake(10, 10, 240, 30))
        label2.text = "Relative Density Calculator"
        var label3 = UILabel(frame: CGRectMake(10, 10, 240, 30))
        label3.text = "Density Conversion Calculator"
        var label4 = UILabel(frame: CGRectMake(10, 10, 240, 30))
        label4.text = "Temperature Converter"
        
        //viewArray = [apiDensityView, relativeDensityView, densityConversionView, temperatureConverterView];
        
        viewArray = [view1, view2, view3, view4]
        titleArray = [label1, label2, label3, label4]
        
        self.setupViews()
        
    }
    
    func setupViews() {
        
        var delay = 0.0
        
        self.setupLabels()
        
        for var i = 0; i < viewArray.count; i++ {
            
            var someView : UIView = viewArray[i] as UIView
            
            someView.alpha = 0
            //someView.setTranslatesAutoresizingMaskIntoConstraints(false)
            someView.layer.masksToBounds = true
            someView.layer.cornerRadius = 5.0
            
            someView.backgroundColor = UIColor.groupTableViewBackgroundColor()

            self.view.addSubview(someView);
            
            [UIView .animateWithDuration(0.5, animations: { () -> Void in
                //
            }, completion: { (Bool) -> Void in
                //
            })]
            
            [UIView .animateWithDuration(0.5, delay: delay, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
                
                someView.alpha = 1.0
                
            }, completion: { (Bool) -> Void in
                //<#code#>
            })]
            
            delay += 0.1
        }
        
    }
    
    func setupLabels() {
        
        for var i = 0; i < viewArray.count; i++ {
            
            var someView = viewArray[i] as UIView
            var someLabel = titleArray[i] as UILabel
            
            someLabel.textColor = UIColor.darkTextColor()
            someLabel.font = UIFont(name:
                "Verdana", size: 15.0)
            someLabel.sizeToFit()
            
            someView.addSubview(someLabel);
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

