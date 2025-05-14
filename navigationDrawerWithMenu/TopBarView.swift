//
//  TopBarView.swift
//  navigationDrawerWithMenu
//
//  Created by Aadish Jain on 14/05/25.
//

import SwiftUI

struct TopBarView: View {
    @Binding var showMenu: Bool

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue, .white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea(edges: .top)

            HStack(spacing: 16) {
                Button(action: {
                    withAnimation {
                        showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.3.horizontal")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color(.systemBackground))
                        .padding(10)
                        .background(Color(.systemBackground).opacity(0.15))
                        .clipShape(Circle())
                }
                VStack(alignment: .leading, spacing: 2) {
                    Text("BlueBex")
                        .font(.headline)
                        .foregroundColor(Color(.systemBackground))
                    Text("Stay Connected 🫱🏻‍🫲🏼")
                        .font(.caption)
                        .foregroundColor(Color(.systemBackground)).opacity(0.9)
                }
                Spacer()
                Image(systemName: "questionmark.circle.dashed")
                    .resizable()
                    .frame(width: 36, height: 36)
                    .foregroundColor(.blue).opacity(0.8)
            }
            .padding()
        }
        .frame(height: 70)
        .background(.ultraThinMaterial)
    }
}
