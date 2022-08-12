//
//  FavoriteRecipeViewModel.swift
//  MaghrebRecipes
//
//  Created by Elliot Knight on 12/08/2022.
//

import Foundation

class FavoriteViewModel: ObservableObject {
	@Published public var favorites = [RecipeModel]()

	func moveRecipe(from offsets: IndexSet, to destination: Int) {
		self.favorites.move(fromOffsets: offsets, toOffset: destination)
	}
	func addFavorite(recipe: RecipeModel) {
		self.favorites.append(recipe)
	}

	func deletFavorite(at offsets: IndexSet) {
		self.favorites.remove(atOffsets: offsets)
	}

	func deletFavoriteInArray(recipe: RecipeModel) {
		self.favorites.removeAll { $0.id == recipe.id }
	}

	func deletOrRemoveFavorite(recipe: RecipeModel) {
		if favorites.contains(recipe) {
			deletFavoriteInArray(recipe: recipe)
		}else {
			addFavorite(recipe: recipe)
		}
	}
}
