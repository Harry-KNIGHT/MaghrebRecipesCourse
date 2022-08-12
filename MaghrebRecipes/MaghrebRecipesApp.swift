//
//  MaghrebRecipesApp.swift
//  MaghrebRecipes
//
//  Created by Elliot Knight on 10/08/2022.
//

import SwiftUI

@main
struct MaghrebRecipesApp: App {
	@StateObject public var favoriteVM = FavoriteViewModel()
	@StateObject public var createVM = CreateRecipeViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(favoriteVM)
				.environmentObject(createVM)
        }
    }
}
