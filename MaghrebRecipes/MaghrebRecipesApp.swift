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
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(favoriteVM)
        }
    }
}
