//
//  RecipesListView.swift
//  MaghrebRecipes
//
//  Created by Elliot Knight on 11/08/2022.
//

import SwiftUI

struct RecipesListView: View {
	var body: some View {
		NavigationView {
			List {
				ForEach(RecipeType.allCases, id: \.self) { section in
					Section(header: Text(section.rawValue)) {
						ForEach(recipes.filter({ $0.recipeType == section })) { recipe in
							NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
								ListRowCellView(recipeImage: recipe.image, recipeName: recipe.name, recipeDescription: recipe.description)
							}
						}
					}

				}
				.navigationBarTitle("Recettes")
			}
		}
	}
}

struct RecipesListView_Previews: PreviewProvider {
	static var previews: some View {
		RecipesListView()
	}
}

struct ListRowCellView: View {
	var recipeImage: String
	var recipeName: String
	var recipeDescription: String
	var body: some View {
		HStack(alignment: .center) {
			Image(recipeImage)
				.resizable()
				.frame(width: 130, height: 80)
				.clipShape(RoundedRectangle(cornerRadius: 20))
			VStack(alignment: .leading, spacing: 10) {
				Text(recipeName)
					.font(.headline)
				Text(recipeDescription)
					.foregroundStyle(.secondary)
					.lineLimit(2)
			}
		}
	}
}
