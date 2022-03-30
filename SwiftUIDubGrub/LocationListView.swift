//
//  LocationListView.swift
//  SwiftUIDubGrub
//
//  Created by Richard Price on 29/03/2022.
//

import SwiftUI


struct LocationListView: View {
    var body: some View {
        //step 1 create a navigation view
        NavigationView {
            //step 2 add a list with a for loop
            List {
                ForEach(0..<10) { item in
                    //step 3 inside a hstack put your main image
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
                            //step 4 create a view which will
                            //be reused later for the avatar
                            HStack {
                                AvatarImage()
                                AvatarImage()
                               
                            }
                        }.padding(.leading)
                    }
                }
            }.navigationTitle("Food Locations")
        }
    }
}
//step 5 avatar implementation
struct AvatarImage: View {
    var body: some View {
            Image("default-avatar")
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .clipShape(Circle())
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
