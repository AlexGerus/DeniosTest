//
//  ContentView.swift
//  DeniosTest
//
//  Created by Alexander Gerus on 22.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationView {
            VStack {
                Text("content")
            }
            .navigationBarTitle("Заголовок")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button (action: {
                        // Действие, выполняемое при нажатии на кнопку "Поделиться"
                    }) {
                        Image(systemName: "arrowshape.turn.up.backward")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        //asd
                    }
                }
            }
            .searchable(text: $searchText)
            .searchSuggestions {
                    Text("🍎").searchCompletion("apple")
                    Text("🍐").searchCompletion("pear")
                    Text("🍌").searchCompletion("banana")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
