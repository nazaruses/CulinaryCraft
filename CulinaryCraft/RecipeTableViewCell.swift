//
//  RecipeTableViewCell.swift
//  CulinaryCraft
//
//  Created by Nazar Dremach on 24/12/23.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var recipeName: UILabel!
    
    static let nib = UINib(nibName: "RecipeTableViewCell", bundle: nil)
    static let id = "RecipeTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
