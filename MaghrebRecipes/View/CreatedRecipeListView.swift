//
//  CreatedRecipeListView.swift
//  MaghrebRecipes
//
//  Created by Elliot Knight on 12/08/2022.
//

import SwiftUI

struct CreatedRecipeListView: View {
	@EnvironmentObject public var createdRecipeVM: CreateRecipeViewModel
	@State private var showSheet = false
	var body: some View {
		NavigationView {
			VStack {
				if createdRecipeVM.recipes.isEmpty {
					EmptyView(information: "Aucune création !")
					Button(action: {
						showSheet.toggle()
					}, label: {
						Text("Créer une recette")
							.font(.largeTitle)
					})
					.buttonStyle(.borderedProminent)
					.buttonBorderShape(.roundedRectangle(radius: 10))
					.tint(.green)
					.sheet(isPresented: $showSheet) {
						RecipeFormView()
					}
				} else {
					List {
						ForEach(createdRecipeVM.recipes) { recipe in
							NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
								ListRowCellView(formImage: recipe.formImage, recipeName: recipe.name, recipeDescription: recipe.description)
							}
						}
						.onDelete(perform: createdRecipeVM.deletCreation)
						.onMove(perform: createdRecipeVM.moveCreation)
					}
				}
			}
			.navigationTitle("Mes créations")
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					Button(action: {
						showSheet.toggle()
					}, label: {
						Label("Create your recipe", systemImage: "plus.circle.fill")
							.font(.title2)
					})
					.sheet(isPresented: $showSheet) {
						RecipeFormView()
					}
					.tint(.green)
				}

				ToolbarItem(placement: .navigationBarLeading) {
					if !createdRecipeVM.recipes.isEmpty {
						EditButton()
							.foregroundColor(.green)
					}
				}

			}
		}
	}
}

struct CreatedRecipeListView_Previews: PreviewProvider {
	static var previews: some View {
		CreatedRecipeListView()
			.environmentObject(CreateRecipeViewModel())
	}
}
