//
//  RecipeData.swift
//  Cookcademy
//
//  Created by fjunior on 17/10/22.
//

import Foundation

class RecipeData: ObservableObject {
  @Published var recipe = Recipe.testRecipes
 
  func recipes(for category: MainInformation.Category) -> [Recipe] {
    var filteredRecipes = [Recipe]()
    for recipe in recipeData.recipes {
      if recipe.mainInformation.category == category {
        filteredRecipes.append(recipe)
      }
    }
  }
}
