//
//  FavoritesRecipesListView.swift
//  MaghrebRecipes
//
//  Created by Elliot Knight on 12/08/2022.
//

import SwiftUI

struct FavoritesRecipesListView: View {
	@EnvironmentObject public var favoritesVM: FavoriteViewModel
    var body: some View {
		NavigationView {
			if favoritesVM.favorites.isEmpty {
				EmptyView()
			}else {
				List {
					ForEach(favoritesVM.favorites) { favori in
						NavigationLink(destination: RecipeDetailView(recipe: favori)) {
							ListRowCellView(recipeImage: favori.image, formImage: favori.formImage, recipeName: favori.name, recipeDescription: favori.description)
						}
					}
					.onDelete(perform: favoritesVM.deletFavorite)
					.onMove(perform: favoritesVM.moveRecipe)
				}.navigationTitle("Favoris")
			}
		}
    }
}

struct FavoritesRecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesRecipesListView()
			.environmentObject(FavoriteViewModel())
    }
}
