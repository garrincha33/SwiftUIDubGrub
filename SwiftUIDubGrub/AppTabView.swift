//
//  AppTabView.swift
//  SwiftUIDubGrub
//
//  Created by Richard Price on 29/03/2022.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            LocationListView()
                .tabItem {
                    Label("Map", systemImage: "building")
                }
            ProfileView()
                .tabItem {
                    Label("Map", systemImage: "person")
                }
        }.accentColor(.brandPrimary)
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
