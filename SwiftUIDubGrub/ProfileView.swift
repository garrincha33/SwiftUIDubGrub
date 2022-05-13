//
//  ProfileView.swift
//  SwiftUIDubGrub
//
//  Created by Richard Price on 29/03/2022.
//

import SwiftUI

struct ProfileView: View {
    //step 1 create local state vairables
    @State private var firstName = ""
    @State private var surname = ""
    @State private var companyName = ""
    @State private var bio = ""

    var body: some View {
        //step 2 create a vstack with a zstack
        VStack {
            ZStack {
                //step 3 choose color for background
                Color(.secondarySystemBackground)
                    .frame(height: 130)
                    .cornerRadius(12)
                    .padding(.horizontal)
                //step 4 hstack for avatar and info
                HStack(spacing: 15) {
                    AvatarImage(size: 84)
                        .padding(.leading, 14)
                    //step 5 zstack for pencil overlay
                    ZStack {
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 14, height: 14)
                            .offset(x: -62, y: 30)
                    }
                    //step 6 vstack for first, last and company name
                    VStack(spacing: 1) {
                        TextField("First Name", text: $firstName)
                            .font(.system(size: 32).bold())
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        TextField("Last Name", text: $surname)
                            .font(.system(size: 32).bold())
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        TextField("Company Name", text: $companyName)
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                    }.padding(.trailing, 16)
                    //step 7 add padding
                }.padding()
            }
            Spacer()
        }
        //step 2 navigation title (will show in preview for now)
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        //step 1 wrap in nav view
        NavigationView {
            VStack {
                ProfileView()
            }
        }
    }
}
