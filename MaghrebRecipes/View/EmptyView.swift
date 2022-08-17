//
//  EmptyView.swift
//  MaghrebRecipes
//
//  Created by Elliot Knight on 12/08/2022.
//

import SwiftUI

struct EmptyView: View {
	var information: String = "Aucun favoris !"
    var body: some View {
		VStack {
			Image(systemName: "xmark.seal")
			Text(information)
		}
		.font(.largeTitle)
		.foregroundColor(.secondary)
    }
}

struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
