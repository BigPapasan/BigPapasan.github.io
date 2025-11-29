import SwiftUI

struct ItalyHomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Hero Section
                    ZStack(alignment: .bottomLeading) {
                        Image("italy_hero")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 400)
                            .clipped()
                            .overlay(
                                LinearGradient(gradient: Gradient(colors: [.clear, .black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                            )
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Benvenuti in Italia")
                                .font(.system(size: 32, weight: .bold, design: .serif))
                                .foregroundColor(.white)
                            Text("Family Trip 2025")
                                .font(.title3)
                                .foregroundColor(.white.opacity(0.9))
                        }
                        .padding()
                    }
                    .cornerRadius(20)
                    .padding(.horizontal)
                    .shadow(radius: 10)

                    Text("Destinations")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)

                    // Locations Grid
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 16)], spacing: 16) {
                        ForEach(TripDataSource.locations) { location in
                            NavigationLink(destination: LocationDetailView(location: location)) {
                                LocationCard(location: location)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom, 40)
            }
            .navigationBarHidden(true)
            .background(Color(UIColor.systemGroupedBackground))
        }
    }
}

struct LocationCard: View {
    let location: Location
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(location.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 120)
                .clipped()
            
            VStack(alignment: .leading, spacing: 4) {
                Text(location.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(location.dates)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding(12)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}
