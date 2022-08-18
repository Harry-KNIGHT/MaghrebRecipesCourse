//
//  ContentView.swift
//  MaghrebRecipes
//
//  Created by Elliot Knight on 10/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		TabView {
			RecipesListView()
				.tabItem {
					Label("Recipes", systemImage: "list.bullet.circle.fill")
				}

			CreatedRecipeListView()
				.tabItem {
					Label("Creations", systemImage: "book.closed.circle.fill")
			}
			FavoritesRecipesListView()
				.tabItem {
					Label("Favorites", systemImage: "heart.circle.fill")
				}
		}.accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
