//
//  MenuViewController.swift
//  CulinaryCraft
//
//  Created by Nazar Dremach on 14/12/23.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet var recipesButtons: [UIButton]!
    
    @IBOutlet var recipesNames: [UILabel]!
    
    var recipe = [
        Recipes(name: "Паэлья с креветками",
                recipet: ""),
        Recipes(name: "2",
                recipet: ""),
        Recipes(name: "3",
                recipet: ""),
        Recipes(name: "4",
                recipet: ""),
        Recipes(name: "5",
                recipet: ""),
        Recipes(name: "6",
                recipet: ""),
        Recipes(name: "7",
                recipet: ""),
        Recipes(name: "8",
                recipet: ""),
        Recipes(name: "9",
                recipet: ""),
        Recipes(name: "10",
                recipet: ""),
        Recipes(name: "11",
                recipet: ""),
]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        completeRecipes()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        print (sender.tag)
    }

    func completeRecipes() {
        for index in 0..<recipesNames.count {
            
            recipesNames[index].text =
            "\(recipe[index].name)"
            
        }
            
    }
}

