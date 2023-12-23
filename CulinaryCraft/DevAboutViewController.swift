//
//  DevAboutViewController.swift
//  CulinaryCraft
//
//  Created by Nazar Dremach on 23/12/23.
//

import UIKit

class DevAboutViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func OpenSITE(_ sender: Any) {
        let GitUrl = URL(string: "https://github.com/nazaruses")!
        
        UIApplication.shared.open(GitUrl)
    }
    
}
