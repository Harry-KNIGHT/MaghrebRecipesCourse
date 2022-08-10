//
//  RecipeRessources.swift
//  MaghrebRecipes
//
//  Created by Elliot Knight on 10/08/2022.
//

import Foundation

var recipes: [RecipeModel] = [

	// Entry
	RecipeModel(image: "maakouda", name: "Maakouda", recipeType: .entry, timeToCook: 23, averagePrice: .medium, difficulty: .medium, ingredients: ["4 pommes de terre", "sel", "3 œufs"], description: "La maaqouda, maqouda ou maakouda est un mets préparé et consommé en Algérie, au Maroc et en Tunisie, essentiellement pendant le mois de ramadan. Il s'agit d'une sorte de beignet de pommes de terre qui peut aussi se décliner avec du thon, de la viande hachée ou du fromage"),

	RecipeModel(image: "briouats", name: "Briouats fromage", recipeType: .entry, timeToCook: 45, averagePrice: .medium, difficulty: .hard, ingredients: ["10 vache qui rit", "Huile de friture"], description: "La briouate fromage est une entrée que l’on prépare pour le Ramadan et qui accompagne d’autres plats comme la chorba. La cuisson au four est idéale pour éviter que ce soit trop gras et permet d’avoir un côté croustillant délicieux avec le fondant du fromage : un vrai régal ! Cette recette est très facile et rapide à faire."),

	RecipeModel(image: "chaakouta", name: "Chaakouta", recipeType: .entry, timeToCook: 15, averagePrice: .cheap, difficulty: .easy, ingredients: [], description: "La chakchouka, tchektchouka, tchoukchouka, tchouchkaka ou tchoutchouka une spécialité culinaire de la cuisine maghrébine. Il s'agit d'une sorte de poêlée de poivrons ou de piments verts ou rouges, tomates, oignons et à laquelle s'ajoutent à la fin des œufs"),

	// Dishes
	RecipeModel(image: "tajine", name: "Tajine Poulet", recipeType: .dish, timeToCook: 60, averagePrice: .expensive, difficulty: .hard, ingredients: [], description: "Notre tajine au poulet parfumé aux épices du Maroc est fait avec amour par notre chef. Des légumes du jours ainsi que de belles pièces de poulet accompagneront votre repas."),

	RecipeModel(image: "couscou", name: "Couscous Royal", recipeType: .dish, timeToCook: 55, averagePrice: .medium, difficulty: .medium, ingredients: ["2 aubergines", "4 carottes", "Boeuf", "Merguez"], description: "Le couscous est d'une part une semoule de blé dur préparée à l'huile d'olive et d'autre part, une spécialité culinaire issue de la cuisine berbère, à base de couscous, de légumes, d'épices, d'huile d'olive et de viande ou de poisson."),

	RecipeModel(image: "falafel", name: "Falafel", recipeType: .dish, timeToCook: 45, averagePrice: .medium, difficulty: .medium, ingredients: ["800g pois chiche", "5 gousses d'ail"], description: "Les falafels ou ta‘amiyya sont une spécialité culinaire levantine très répandue au Proche-Orient, constituée de boulettes de pois chiches ou de fèves broyés et mélangés à diverses épices, frites dans l'huile. Depuis quelques années, on retrouve cette spécialité également dans les pays européens et occidentaux."),


	//Dessert
	RecipeModel(image:  "makrouts", name:  "Makrouts", recipeType: .dessert, timeToCook: 43, averagePrice: .cheap, difficulty: .easy, ingredients: ["Pincée de canelle", "100g de beurre", "1 pot de miel"], description: "Le makroud ou makrout, également orthographié maqroudh ou maqrouth, est une pâtisserie maghrébine, à base de semoule de blé et de pâte de dattes, reconnaissable à sa forme en losange. C'est une pâtisserie très populaire au Maghreb"),

	RecipeModel(image: "baklava", name: "Baklava", recipeType: .dessert, timeToCook: 60, averagePrice: .medium, difficulty: .hard, ingredients: ["240g de miel", "500cl d'eau"], description: "Le baklava, une pâtisserie du bassin méditerranéen à découvrir ou à redécouvrir. On le retrouve en Turquie, en Grèce mais aussi certains pays du moyen-Orient. C'est LE dessert pour les gourmands. Il se compose de très fines feuilles de pâte filo superposées au coeur desquelles on trouve des amandes, des noix, des pistaches ou d'autres fruits secs. On arrose cette pâtisserie d'un sirop de sucre ou de miel. Sa composition précise varie selon les pays."),

	RecipeModel(image: "gazelle", name: "Corne de gazelle", recipeType: .dessert, timeToCook: 13, averagePrice: .medium, difficulty: .hard, ingredients: ["Fleur d'oranger", "Farine"], description: "La corne de gazelle est une pâtisserie du Maroc en forme de petits croissants dont le cœur moelleux contient de la pâte d'amande, de la canelle et de l'eau de fleur d'oranger.")
]

extension RecipeModel {
	static var recipe = RecipeModel(image: "gazelle", name: "Corne de gazelle", recipeType: .dessert, timeToCook: 13, averagePrice: .medium, difficulty: .hard, ingredients: ["Fleur d'oranger", "Farine"], description: "La corne de gazelle est une pâtisserie du Maroc en forme de petits croissants dont le cœur moelleux contient de la pâte d'amande, de la canelle et de l'eau de fleur d'oranger.")
}
