//
//  RecipeCategoryGridView.swift
//  Cookcademy
//
//  Created by fjunior on 19/10/22.
//

import SwiftUI

struct RecipeCategoryGridView: View {
  private var recipeData = RecipeData()
 
  var body: some View {
    NavigationView {
      ScrollView {
        let columns = [GridItem(), GridItem()]
        LazyVGrid(columns: columns, content: {
          ForEach(MainInformation.Category.allCases,
                  id: \.self) { category in
            ZStack {
              Image(category.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
              Text(category.rawValue)
                .font(.title)
            }
          }
        })
      }
      .navigationTitle("Categories")
    }
  }
}
struct RecipeCategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryGridView()
    }
}
