import SwiftUI

struct LocationDetailView: View {
    let location: Location

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                // Hero Image
                Image(location.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                    .clipped()
                    .overlay(
                        LinearGradient(gradient: Gradient(colors: [.clear, .black.opacity(0.6)]), startPoint: .center, endPoint: .bottom)
                    )
                    .overlay(
                        VStack(alignment: .leading) {
                            Spacer()
                            Text(location.name)
                                .font(.system(size: 40, weight: .bold, design: .serif))
                                .foregroundColor(.white)
                            Text(location.dates)
                                .font(.title3)
                                .foregroundColor(.white.opacity(0.9))
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    )

                VStack(alignment: .leading, spacing: 24) {
                    Text(location.description)
                        .font(.body)
                        .foregroundColor(.secondary)
                        .padding(.top)

                    ForEach(location.itinerary) { day in
                        VStack(alignment: .leading, spacing: 12) {
                            HStack {
                                Text("Day \(day.dayNumber)")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.primary)
                                
                                Spacer()
                                
                                Text(day.date)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            
                            if let title = day.title {
                                Text(title)
                                    .font(.headline)
                                    .foregroundColor(.accentColor)
                            }
                            
                            VStack(alignment: .leading, spacing: 0) {
                                ForEach(day.activities) { activity in
                                    ActivityRow(activity: activity)
                                }
                            }
                            .padding(.top, 8)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(16)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
                    }
                }
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.top)
        .background(Color(UIColor.systemGroupedBackground))
    }
}
