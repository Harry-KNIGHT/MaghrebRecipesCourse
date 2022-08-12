//
//  RecipeModel.swift
//  MaghrebRecipes
//
//  Created by Elliot Knight on 10/08/2022.
//

import Foundation
import SwiftUI

struct RecipeModel: Identifiable, Equatable {

	static func ==(lhs: RecipeModel, rhs: RecipeModel) -> Bool {
		return lhs.id == rhs.id
	}
	
	var id = UUID()
	let image: String?
	let formImage: Image?
	let name: String
	let recipeType: RecipeType
	let timeToCook: String
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

enum RecipeAveragePrice: String, CaseIterable {
	case cheap = "Économique"
	case medium = "Moyen"
	case expensive = "Cher"
}

enum RecipeDifficulty: String, CaseIterable {
	case easy = "Facile"
	case medium = "Moyenne"
	case hard = "Difficile"
}


