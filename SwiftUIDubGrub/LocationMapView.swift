//
//  LocationMapView.swift
//  SwiftUIDubGrub
//
//  Created by Richard Price on 29/03/2022.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    //step 1 create a state property which is for local state
    //to create your map region
    @State private var region  = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.53683, longitude: -3.14053), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
  
    var body: some View {
        //step 2 inside a z stack add image over the map region
        //span is for how far you want to zoom in or out
        ZStack {
            Map(coordinateRegion: $region).ignoresSafeArea()
            VStack {
                Image("ddg-map-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                Spacer()
            }
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
