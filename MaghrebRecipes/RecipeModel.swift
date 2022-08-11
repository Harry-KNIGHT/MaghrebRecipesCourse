//
//  RecipeModel.swift
//  MaghrebRecipes
//
//  Created by Elliot Knight on 10/08/2022.
//

import Foundation

struct RecipeModel: Identifiable {
	var id = UUID()
	let image: String
	let name: String
	let recipeType: RecipeType
	let timeToCook: Int
	let averagePrice: RecipeAveragePrice
	let difficulty: RecipeDifficulty
	let ingredients: [String]
	let description: String

}

enum RecipeType: String, CaseIterable {
	case entry = "Entrée"
	case dish = "Plat"
	case dessert = "Dessert"
}

enum RecipeAveragePrice: String {
	case cheap = "Économique"
	case medium = "Moyen"
	case expensive = "Cher"
}

enum RecipeDifficulty: String {
	case easy = "Facile"
	case medium = "Moyenne"
	case hard = "Difficile"
}


