//
//  DetailsViewController.swift
//  CulinaryCraft
//
//  Created by Nazar Dremach on 29/12/23.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var recipesLabel: 
        UILabel!
    
    @IBOutlet weak var recipeImg: UIImageView!
    
    var recipe: Recipe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillDefaultValues()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UILabel else { return }
        print (sender.tag)
    }
    
    func fillDefaultValues() {
        recipesLabel.text = recipe?.recipet
        recipeImg.image = recipe?.image
        
    }
    
}


