//
//  SettingsViewController.swift
//  Prework_Xay
//
//  Created by Xavier Hall on 1/21/22.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var Darkmode: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
       
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.Darkmode.setOn(UserDefaults.standard.bool(forKey: "toggleState"), animated: true)
    }
    
    @IBAction func Darkmodeswitchcode(_ sender: Any) {
            let appDelegate = UIApplication.shared.windows.first
            
        if Darkmode.isOn {
                appDelegate?.overrideUserInterfaceStyle = .dark
            
                return
        }else{
            appDelegate?.overrideUserInterfaceStyle = .light
        }
    }
    
}
