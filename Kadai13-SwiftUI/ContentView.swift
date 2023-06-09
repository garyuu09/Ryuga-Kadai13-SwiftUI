//
//  ContentView.swift
//  Kadai13-SwiftUI
//
//  Created by Ryuga on 2023/04/02.
//

import SwiftUI

struct Fruit {
    var code = UUID()
    var name: String
    var isChecked: Bool
}

struct ContentView: View {
    var fruits = [
        Fruit(name: "りんご", isChecked: false),
        Fruit(name: "みかん", isChecked: true),
        Fruit(name: "バナナ", isChecked: false),
        Fruit(name: "パイナップル", isChecked: true)
    ]

    var body: some View {
        NavigationView{
            List {
                ForEach(fruits, id: \.code) { fruit in
                    ZStack {
                        HStack{
                            Image(systemName: fruit.isChecked ? "checkmark" : "")
                                .foregroundColor(Color.orange)
                            Spacer()
                        }
                        HStack {
                            Spacer().frame(width: 30)
                            Text(fruit.name)
                            Spacer()
                        }
                    }
                }
            }
        }
        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
