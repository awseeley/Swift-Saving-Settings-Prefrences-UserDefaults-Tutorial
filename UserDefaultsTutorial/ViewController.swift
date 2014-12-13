//
//  ViewController.swift
//  UserDefaultsTutorial


import UIKit

class ViewController: UIViewController {

    @IBOutlet var segColour: UISegmentedControl!
    
    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    @IBAction func actColour(sender: UISegmentedControl) {
        println(segColour.selectedSegmentIndex)
        
        switch (segColour.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor = UIColor.redColor()
        case 1:
            self.view.backgroundColor = UIColor.blueColor()
        case 2:
            self.view.backgroundColor = UIColor.greenColor()
        default:
            self.view.backgroundColor = UIColor.redColor()
        }
        
    }
    
    @IBAction func btnSave(sender: UIButton) {
        let bgColourNo = segColour.selectedSegmentIndex
        userDefaults.setObject(bgColourNo, forKey: "bgColour")
        userDefaults.synchronize()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var bgColourNo: Int? = userDefaults.objectForKey("bgColour") as Int?
        if(bgColourNo == nil) {
            bgColourNo = 1
            userDefaults.setObject(bgColourNo, forKey: "bgColour")
        }
        
        switch (bgColourNo!) {
        case 0:
            self.view.backgroundColor = UIColor.redColor()
        case 1:
            self.view.backgroundColor = UIColor.blueColor()
        case 2:
            self.view.backgroundColor = UIColor.greenColor()
        default:
            self.view.backgroundColor = UIColor.redColor()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

