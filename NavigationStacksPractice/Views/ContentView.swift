//
//  ContentView.swift
//  NavigationStacksPractice
//
//  Created by Syed Raza on 7/8/23.
//

import SwiftUI

struct ContentView: View {
    let companies = Company.mock
    let categories = Category.mock
    
    var body: some View {
        NavigationView {
            List {
                Section("Industries") {
                    ForEach(categories) { category in
                        NavigationLink {
                            CategoryDetail(category: category)
                        } label: {
                            Text(category.name)
                                .foregroundColor(category.color)
                                .font(.title).bold()
                        }
                    }
                }
                
                Section("Companies") {
                    ForEach(companies) { company in
                        NavigationLink {
                            CompanyDetail(company: company)
                        } label: {
                            Text(company.name)
                                .font(.body)
                        }
                    }
                }
            }
            .navigationTitle("Tech World")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
