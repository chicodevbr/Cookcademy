//
//  ContentView.swift
//  Cookcademy
//
//  Created by fjunior on 16/10/22.
//

import SwiftUI

struct RecipesListView: View {
    @StateObject var recipeData = RecipeData()
    
        
    var body: some View {
        NavigationView {
            List {
                ForEach(recipes) { recipe in
                    NavigationLink(destination: RecipeDetailView(recipe: recipe), label: {
                        Text(recipe.mainInformation.name)
                    })
                }

            }
            .navigationTitle(Text(navigationTitle))
        }
    }
}
extension RecipesListView {
    var recipes: [Recipe] {
        recipeData.recipes
    }
    
    var navigationTitle: String {
        "All Recipes"
    }
}

struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesListView()
    }
}
