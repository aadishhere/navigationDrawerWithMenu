//
//  SideMenuView.swift
//  navigationDrawerWithMenu
//
//  Created by Aadish Jain on 14/05/25.
//

import SwiftUI

struct SideMenuView: View {
    
    let usersName: String = "Aadish Jain"
    let employeeId: String = "BB000012"
    let userEmail: String = "aadishjain@bluebex.com"
    
    @Binding var selectedScreen: String?

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 12) {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color(.systemBackground))
                    .padding(10)
                    .background(Circle().fill(LinearGradient(colors: [.blue, Color(.systemBackground)], startPoint: .topLeading, endPoint: .bottomTrailing)))
                VStack(alignment: .leading) {
                    Text(usersName).font(.headline)
                    Text(employeeId).font(.caption)
                    Text(userEmail).font(.caption)
                }
            }
            .padding(.top, 100)
            .padding(.bottom, 1)
            .padding(.horizontal)

            Divider()

            VStack(alignment: .leading, spacing: 0) {
                MenuButton(icon: "list.bullet.rectangle", label: "All Tasks", isSelected: selectedScreen == "allTasks") { selectedScreen = "allTasks" }
                MenuButton(icon: "calendar", label: "Today", isSelected: selectedScreen == "todayTask") { selectedScreen = "todayTask" }
                MenuButton(icon: "clock.arrow.circlepath", label: "Upcoming", isSelected: selectedScreen == "upcomingTask") { selectedScreen = "upcomingTask" }
                MenuButton(icon: "checkmark.circle", label: "Completed", isSelected: selectedScreen == "completedTask") { selectedScreen = "completedTask" }
                MenuButton(icon: "star", label: "Important", isSelected: selectedScreen == "importantTask") { selectedScreen = "importantTask" }
                Divider()
                MenuButton(icon: "gear", label: "Settings", isSelected: selectedScreen == "settingView") { selectedScreen = "settingView" }
                MenuButton(icon: "arrowshape.backward", label: "Logout", isSelected: selectedScreen == "loginView") { selectedScreen = "loginView" }
            }
            .padding(.top, 10)
            .padding(.horizontal)

            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemBackground))
    }
}
