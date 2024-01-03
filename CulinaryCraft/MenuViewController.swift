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
        Recipes(name: "Мясо по-французски",
                recipet: ""),
        Recipes(name: "Курица в апельсиновом желе",
                recipet: ""),
        Recipes(name: "Фаршированные помидоры",
                recipet: ""),
        Recipes(name: "Цезарь",
                recipet: ""),
        Recipes(name: "Крабовый",
                recipet: ""),
        Recipes(name: "Оливье",
                recipet: ""),
        Recipes(name: "Рататуй",
                recipet: ""),
        Recipes(name: "Шоколадные маффины",
                recipet: ""),
        Recipes(name: "Тирамису",
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

