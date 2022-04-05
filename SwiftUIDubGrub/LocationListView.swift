//
//  LocationListView.swift
//  SwiftUIDubGrub
//
//  Created by Richard Price on 29/03/2022.
//

import SwiftUI


struct LocationListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) { item in
                    HStack {
                        Image("default-square-asset")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .padding(.vertical, 8)
         
                        VStack(alignment: .leading) {
                            Text("Test Location")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                           
                            HStack {
                                AvatarImage(size: 35)
                                AvatarImage(size: 35)
                               
                            }
                        }.padding(.leading)
                    }
                }
            }.navigationTitle("Food Locations")
        }
    }
}
//step 9 add a size for the avatar making it flexible
struct AvatarImage: View {
    var size: CGFloat
    var body: some View {
            Image("default-avatar")
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .clipShape(Circle())
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
