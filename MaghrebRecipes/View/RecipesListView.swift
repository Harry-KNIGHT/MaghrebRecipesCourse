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
							NavigationLink(destination: Text("ceci est une recette")) {
								HStack(alignment: .center) {
									Image(recipe.image)
										.resizable()
										.frame(width: 130, height: 80)
										.clipShape(RoundedRectangle(cornerRadius: 20))
									VStack(alignment: .leading, spacing: 10) {
										Text(recipe.name)
											.font(.headline)
										Text(recipe.description)
											.foregroundStyle(.secondary)
											.lineLimit(2)
									}
								}
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
