//
//  RecipeData.swift
//  Cookcademy
//
//  Created by fjunior on 17/10/22.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
