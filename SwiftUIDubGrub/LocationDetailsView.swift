//
//  LocationDetailsView.swift
//  SwiftUIDubGrub
//
//  Created by Richard Price on 05/04/2022.
//

import SwiftUI

struct LocationDetailsView: View {
    var body: some View {
        //step 1 create vGrid ready
        let vGrid3ColumnLayout = [ GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
        //step 2 create a navigation view with vstack
        NavigationView {
            VStack(spacing: 16) {
                //step 3 default banner at top
                Image("default-banner-asset")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 120)
                //step 4 create location icon
                HStack {
                    Label("test", systemImage: "mappin.and.ellipse")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Spacer()
                }.padding(.horizontal)
                //step 5 create a some description text
                Text("this is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test")
                    .lineLimit(3)
                    .minimumScaleFactor(0.75)
                    .padding(.horizontal)
                //step 6 create capsual for contact
                ZStack {
                    Capsule()
                        .frame(height: 80)
                        .foregroundColor(Color(.secondarySystemBackground))
                    
                    HStack(spacing: 20) {
                        Button {
                            
                        } label: {
                            LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                        }
                        Link(destination: URL(string:"www.apple.com")!, label: {
                            LocationActionButton(color: .brandPrimary, imageName: "network")
                        })
                        Button {
                            
                        } label: {
                            LocationActionButton(color: .brandPrimary, imageName: "phone.fill")
                        }
                        
                        Button {
                            
                        } label: {
                            LocationActionButton(color: .brandPrimary, imageName: "person.fill.checkmark")
                        }
                    }
                }
                .padding(.horizontal)
                //step 7 create whos here section
                Text("Whos Here?")
                    .bold()
                    .font(.title)
                //step 10 create a lazy vgrid of avatars
                LazyVGrid(columns: vGrid3ColumnLayout) {
                    FirstNameAvatarView(firstName: "Richy")
                    FirstNameAvatarView(firstName: "Richy")
                    FirstNameAvatarView(firstName: "Richy")
                    FirstNameAvatarView(firstName: "Richy")
                    FirstNameAvatarView(firstName: "Richy")
                    FirstNameAvatarView(firstName: "Richy")
                    FirstNameAvatarView(firstName: "Richy")
                    FirstNameAvatarView(firstName: "Richy")
                    FirstNameAvatarView(firstName: "Richy")
                }
                
                
                Spacer()
            }
            .navigationTitle("Location Name")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LocationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailsView()
    }
}

struct LocationActionButton: View {
    var color: Color
    var imageName: String
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 60, height: 60)
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 22, height: 22)
            
            Spacer()
        }
    }
}

//step 8 create avatar image with a name string
struct FirstNameAvatarView: View {
    var firstName: String
    var body: some View {
        VStack {
            AvatarImage(size: 65)
            Text(firstName)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}
