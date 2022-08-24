//
//  CreateRecipeViewModel.swift
//  MaghrebRecipes
//
//  Created by Elliot Knight on 12/08/2022.
//

import Foundation
import SwiftUI

class CreateRecipeViewModel: ObservableObject {
	@Published public var recipes = [RecipeModel]()
	@Published public var selectedImage: Image?
	@Published public var isEditing: Bool = false
	
	func addRecipe(image: String?, formImage: Image?, name: String, recipeType: RecipeType, timeToCook: String, averagePrice: RecipeAveragePrice, difficulty: RecipeDifficulty, ingredients: [String], description: String) {

		self.recipes.append(RecipeModel(image: image, formImage: formImage, name: name, recipeType: recipeType, timeToCook: timeToCook, averagePrice: averagePrice, difficulty: difficulty, ingredients: ingredients, description: description))

		selectedImage = .none
	}

	func deletCreation(at offset: IndexSet) {
		self.recipes.remove(atOffsets: offset)
	}

	func moveCreation(from offset: IndexSet, to destination: Int) {
		self.recipes.move(fromOffsets: offset, toOffset: destination)
	}
}



