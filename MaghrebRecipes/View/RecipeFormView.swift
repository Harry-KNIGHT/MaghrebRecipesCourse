//
//  RecipeFormView.swift
//  MaghrebRecipes
//
//  Created by Elliot Knight on 12/08/2022.
//

import SwiftUI
import PhotosUI

struct RecipeFormView: View {
	@EnvironmentObject public var recipeVM: CreateRecipeViewModel
	@State private var selectedItem: PhotosPickerItem?

	@State private var textFieldName = ""
	@State private var timeToCook = ""

	@State private var recipeTypePicker: RecipeType = .entry
	@State private var averagePicker: RecipeAveragePrice = .cheap
	@State private var difficultyPicker: RecipeDifficulty = .easy

	@State private var textFieldIngredients = ""
	@State private var ingredients = [String]()
	@State private var textfieldDescription = ""
	@Environment(\.presentationMode) var presentationMode
	@FocusState private var isKeyboardFocused: Bool

	var isButtonDisbaled: Bool {
		 textFieldName.count > 3
	}

	var body: some View {
		NavigationView {

			VStack {
				Form {
					Section {
						TextField("Tajine Zeitoune", text: $textFieldName)
							.focused($isKeyboardFocused)
						TextField("45min", text: $timeToCook)
							.focused($isKeyboardFocused)

						Picker("Type de recette", selection: $recipeTypePicker) {
							ForEach(RecipeType.allCases, id: \.self) { type in
								Text(type.rawValue)
							}
						}

						Picker("Prix moyen", selection:  $averagePicker) {
							ForEach(RecipeAveragePrice.allCases, id: \.self) { price in
								Text(price.rawValue)
							}
						}

						Picker("Difficulté", selection: $difficultyPicker) {
							ForEach(RecipeDifficulty.allCases, id: \.self) { difficulty in
								Text(difficulty.rawValue)
							}
						}
					}

					Section {
						TextField("4 cuisses de poulet", text: $textFieldIngredients)
							.focused($isKeyboardFocused)

						Button(action: {
							if textFieldIngredients.count > 2 {
								ingredients.insert(textFieldIngredients, at: 0)
							}
							textFieldIngredients = ""
						}, label: {
							Label( "Ingrédient", systemImage: "plus.circle.fill")
								.foregroundColor(.white)
						})
						.buttonStyle(.borderedProminent)
						.tint(textFieldIngredients.count > 2 ? .blue : .gray)

						if !ingredients.isEmpty {
							ForEach(ingredients, id: \.self) { ingredient in
								Text(ingredient)
							}
						}
					}

					Section(header: Text("Description")) {
						TextEditor(text: $textfieldDescription)
							.focused($isKeyboardFocused)

					}
					Section {
						PhotosPicker(selection: $selectedItem) {
							Label("Select image", systemImage: "photo.artframe")
						}
						.onChange(of: selectedItem) { newValue in
							Task {
								if let imageData = try? await newValue?.loadTransferable(type: Data.self), let image = UIImage(data: imageData) {
									recipeVM.selectedImage = Image(uiImage: image)
								}
							}
						}
						if let selectedImage = recipeVM.selectedImage {
							selectedImage
								.resizable()
								.scaledToFill()
								.frame(maxWidth: .infinity, maxHeight: .infinity)
								.cornerRadius(10)
						}
					}

				}
				.navigationTitle("Créer une recette")
				.navigationBarTitleDisplayMode(.inline)
				.toolbar {
					ToolbarItem(placement: .navigationBarTrailing) {
						Button(action: {
							recipeVM.addRecipe(image: nil, formImage: recipeVM.selectedImage, name: textFieldName, recipeType: recipeTypePicker, timeToCook: timeToCook, averagePrice: averagePicker, difficulty: difficultyPicker, ingredients: ingredients, description: textfieldDescription)
							presentationMode.wrappedValue.dismiss()
						}, label: {
							Text("Créer")
								.foregroundColor(.white)
						})
						.disabled(!isButtonDisbaled)
						.buttonStyle(.borderedProminent)
						.foregroundColor(.green)
					}

					ToolbarItemGroup(placement: .keyboard) {
						Spacer()

						Button(action: {
							isKeyboardFocused.toggle()
						}, label: {
							Text("OK")
								.foregroundColor(.green)
						})
					}
				}
			}

		}

	}
}

struct RecipeFormView_Previews: PreviewProvider {
	static var previews: some View {
		RecipeFormView()
			.environmentObject(CreateRecipeViewModel())
	}
}
