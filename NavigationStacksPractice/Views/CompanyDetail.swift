//
//  CompanyDetail.swift
//  NavigationStacksPractice
//
//  Created by Syed Raza on 7/8/23.
//

import SwiftUI

struct CompanyDetail: View {
    let company: Company
    
    var body: some View {
        VStack {
            Text(company.name)
            buttons
        }
    }
    
    private var buttons: some View {
        VStack {
            Button {
                print("category added")
            } label: {
                Text("Add Category")
            }
            
            Button(action: {
                print("company added")
            }, label: {
                Text("Add Company")
            })
        }
        
    }
    
}

struct CompanyDetail_Previews: PreviewProvider {
    static var previews: some View {
        CompanyDetail(company: Company.mock.first!)
    }
}
