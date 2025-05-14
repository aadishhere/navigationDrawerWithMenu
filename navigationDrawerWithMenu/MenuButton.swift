//
//  MenuButton.swift
//  navigationDrawerWithMenu
//
//  Created by Aadish Jain on 14/05/25.
//

import SwiftUI

struct MenuButton: View {
    var icon: String
    var label: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 16) {
                Image(systemName: icon)
                    .font(.headline)
                    .foregroundColor(isSelected ? .white : .blue)
                Text(label)
                    .font(.headline)
                    .foregroundColor(isSelected ? .white : .primary)
                Spacer()
            }
            .padding()
            .background(
                isSelected ? AnyView(LinearGradient(colors: [.blue, Color(.systemBackground)], startPoint: .leading, endPoint: .trailing)) : AnyView(Color.clear)
            )
            .cornerRadius(50)
        }
        .padding(.vertical, 4)
    }
}
