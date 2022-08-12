//
//  RecipeDetailView.swift
//  MaghrebRecipes
//
//  Created by Elliot Knight on 11/08/2022.
//

import SwiftUI

struct RecipeDetailView: View {
	let recipe: RecipeModel
    var body: some View {
		List {
			VStack {
			Image(recipe.image)
				.resizable()
				.scaledToFit()
				.frame(maxWidth: 350)
				.clipShape(RoundedRectangle(cornerRadius: 20))

				HStack {
					Text(recipe.name)
						.font(.title3.bold())
					Spacer()
					Text(recipe.recipeType.rawValue)
						.foregroundColor(.secondary)
						.font(.headline)
				}
			}
			HStack {
				IndicatorExtractedView(systemName: "timer.circle.fill", indicator: String(recipe.timeToCook) + "minutes")
				Spacer()
				IndicatorExtractedView(systemName: "eurosign.circle.fill", indicator: recipe.averagePrice.rawValue)
				Spacer()
				IndicatorExtractedView(systemName: "flag.circle.fill", indicator: recipe.difficulty.rawValue)

			}
			if !recipe.ingredients.isEmpty {
				HStack(alignment: .top) {
					Text("Ingrédients: ")
					VStack(alignment: .leading) {
						ForEach(recipe.ingredients, id: \.self) { ingredient in
							Text("• \(ingredient)")
						}
					}
				}
			}

			VStack(alignment: .leading, spacing: 10) {
				Text("Description: ")
					.font(.headline)
				Text(recipe.description)
			}
		}
		.listStyle(.plain)
		.navigationBarTitleDisplayMode(.inline)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView {
			RecipeDetailView(recipe: .recipeSample)
		}
    }
}

struct IndicatorExtractedView: View {
	var systemName: String
	var indicator: String
	var body: some View {
		VStack(spacing: 5) {
			Image(systemName: systemName)
				.foregroundColor(.green)
				.font(.title2)
			Text(indicator)
				.font(.headline)
		}

	}
}
