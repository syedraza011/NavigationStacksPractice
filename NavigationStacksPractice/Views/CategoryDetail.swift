//
//  CategoryDetail.swift
//  NavigationStacksPractice
//
//  Created by Syed Raza on 7/8/23.
//

import SwiftUI

struct CategoryDetail: View {
    let category: Category
    
    var body: some View {
        ZStack {
            category.color
                .ignoresSafeArea(.all)
            VStack(spacing: 20) {
                Text(category.name)
                    .font(.largeTitle.bold())
                    .padding()
                companyList
            }
        }
    }
    
    private var companyList: some View {
        List{
            ForEach(Company.mock.filter { $0.categoryType == category.categoryType }) { company in
                Text(company.name)
                    .font(.body)
            }
        }
    }
}

struct CategoryDetail_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetail(category: Category.mock.first!)
    }
}
