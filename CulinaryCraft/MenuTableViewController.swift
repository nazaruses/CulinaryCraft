//
//  MenuTableViewController.swift
//  CulinaryCraft
//
//  Created by Nazar Dremach on 24/12/23.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    let recipes = Recipe.makeTestValues()
    
    var lastRecipeRow = IndexPath(row: 0, section: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Сulinary Craft"
        
        tableView.register(RecipeTableViewCell.nib,
                           forCellReuseIdentifier: RecipeTableViewCell.id)
    }
    
    private func getRecipes(for section: Int) -> [Recipe] {
        switch section {
        case 0:
            return recipes.filter{$0.type == .hot}
        case 1:
            return recipes.filter{$0.type == .salad}
        case 2:
            return recipes.filter{$0.type == .dessert}
        default:
            return []
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        getRecipes(for: section).count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UITableViewHeaderFooterView()
        let label = UILabel()
        
        let text: String
        switch section {
        case 0:
            text = "Горячие блюда   🍜"
        case 1:
            text = "Салаты   🥗"
        case 2:
            text = "Десерты   🧁"
        default:
            text = ""
        }
        
        label.text = text
        label.font = UIFont(name:"HelveticaNeue-Bold", size: 24.0)
        
        label.frame.size = CGSize(width: tableView.frame.size.width - 32, height: 65)
        label.frame.origin = CGPoint(x: 16, y: -30)
        
        header.frame.size = CGSize(width: tableView.frame.size.width, height: 86)
        header.frame.origin = CGPoint(x: 0, y: 0)
        
        header.addSubview(label)
        return header
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sectionRecipes = getRecipes(for: indexPath.section)
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RecipeTableViewCell.id, for: indexPath) as? RecipeTableViewCell,
              indexPath.row >= 0,
              indexPath.row < sectionRecipes.count
        else { return UITableViewCell() }
        
        cell.recipeName.text = sectionRecipes[indexPath.row].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        66
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        lastRecipeRow = indexPath
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "detail", sender: self)
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailsViewController else { return }
        
        let sectionRecipes = getRecipes(for: lastRecipeRow.section)
        
        guard lastRecipeRow.row >= 0,
              lastRecipeRow.row < sectionRecipes.count else { return }
        
        destination.recipe = sectionRecipes[lastRecipeRow.row]
    }
}
