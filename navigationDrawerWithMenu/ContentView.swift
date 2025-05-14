//
//  ContentView.swift
//  navigationDrawerWithMenu
//
//  Created by Aadish Jain on 14/05/25.
//
import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @State private var selectedScreen: String? = "Home"

    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack {
                Text("Home Page Placeholder")
                Spacer()
            }

            if showMenu {
                Color(.systemBackground)
                    .ignoresSafeArea()
                    .onTapGesture { showMenu.toggle() }
                    .zIndex(1)
            }

            SideMenuView(selectedScreen: $selectedScreen)
                .frame(width: 280)
                .offset(x: showMenu ? 0 : -300)
                .animation(.default, value: showMenu)
                .shadow(radius: showMenu ? 0.25 : 0)
                .zIndex(2)

            VStack {
                TopBarView(showMenu: $showMenu)
                Spacer()
            }
            .zIndex(3)
        }
    }
}


#Preview {
ContentView()
}
