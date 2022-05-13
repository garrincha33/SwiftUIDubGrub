//
//  LocationDetailsView.swift
//  SwiftUIDubGrub
//
//  Created by Richard Price on 05/04/2022.
//

import SwiftUI

struct LocationDetailsView: View {
    var body: some View {
        
        let vGrid3ColumnLayout = [ GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

            VStack(spacing: 16) {
                
                Image("default-banner-asset")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 120)
                
                HStack {
                    Label("test", systemImage: "mappin.and.ellipse")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Spacer()
                }.padding(.horizontal)
                
                Text("this is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test")
                    .lineLimit(3)
                    .minimumScaleFactor(0.75)
                    .padding(.horizontal)
                
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
                
                Text("Whos Here?")
                    .bold()
                    .font(.title)
                ScrollView {
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
                }
                Spacer()
            }
            .navigationTitle("Location Name")
            .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct LocationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailsView()
        }
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
