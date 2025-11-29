import Foundation

struct Activity: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let description: String?
    let time: String?
}

struct DailyItinerary: Identifiable, Hashable {
    let id = UUID()
    let dayNumber: Int
    let date: String
    let title: String?
    let activities: [Activity]
}

struct Location: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
    let dates: String
    let itinerary: [DailyItinerary]
}

struct TripDataSource {
    static let locations: [Location] = [
        Location(
            name: "Rome",
            imageName: "rome_hero",
            description: "The Eternal City, home to ancient ruins, world-class art, and vibrant street life.",
            dates: "June 11–15",
            itinerary: [
                DailyItinerary(dayNumber: 1, date: "June 11", title: "Arrival & Evening Stroll", activities: [
                    Activity(title: "Arrive in Rome / Check-in", description: "Settle into your home base for the next 4 nights.", time: nil),
                    Activity(title: "Evening Stroll", description: "Walk to Piazza Navona & Trevi Fountain.", time: "Evening"),
                    Activity(title: "Gelato Stop", description: "Gelateria del Teatro", time: nil),
                    Activity(title: "Dinner", description: "Da Francesco (family friendly)", time: nil)
                ]),
                DailyItinerary(dayNumber: 2, date: "June 12", title: "Ancient Rome & City Highlights", activities: [
                    Activity(title: "Golf Cart Tour of Rome", description: "See Colosseum exterior, Circus Maximus, Aventine Keyhole, Pantheon, Spanish Steps, Piazza Venezia. Family-friendly, minimal walking.", time: "3 hours"),
                    Activity(title: "Lunch", description: "Trastevere", time: nil),
                    Activity(title: "Afternoon Exploration", description: "Pantheon & Piazza Navona", time: "Afternoon"),
                    Activity(title: "Optional Rooftop Drink", description: "Sunset at Terrazza Borromini", time: "Sunset")
                ]),
                DailyItinerary(dayNumber: 3, date: "June 13", title: "Day Trip to Pompeii", activities: [
                    Activity(title: "Train to Naples", description: "Rome Termini → Naples (~1 hr 10 min)", time: "Morning"),
                    Activity(title: "Transfer to Pompeii", description: "~35 min transfer", time: nil),
                    Activity(title: "Guided Family Tour", description: "Explore the ancient ruins of Pompeii.", time: nil),
                    Activity(title: "Lunch", description: "Caupona Pompeii", time: nil),
                    Activity(title: "Return to Rome", description: "Dinner & rest", time: "Evening")
                ]),
                DailyItinerary(dayNumber: 4, date: "June 14", title: "Vatican & Villa Borghese", activities: [
                    Activity(title: "Vatican Museums", description: "Sistine Chapel & St. Peter’s Basilica.", time: "Morning"),
                    Activity(title: "Lunch", description: "Ginger Sapori e Salute (near Vatican)", time: nil),
                    Activity(title: "Villa Borghese Gardens", description: "Playground & row boats.", time: "Afternoon"),
                    Activity(title: "Optional Gallery", description: "Borghese Gallery timed tickets", time: nil),
                    Activity(title: "Evening in Trastevere", description: "Explore & casual dinner", time: "Evening")
                ])
            ]
        ),
        Location(
            name: "Florence",
            imageName: "florence_hero",
            description: "The Cradle of the Renaissance, famous for its art, architecture, and Tuscan cuisine.",
            dates: "June 15–19",
            itinerary: [
                DailyItinerary(dayNumber: 1, date: "June 15", title: "Arrival & Ponte Vecchio", activities: [
                    Activity(title: "Travel to Florence", description: "Fast train Rome → Florence (1 hr 30 min)", time: "Morning"),
                    Activity(title: "Check-in", description: "Home base for 4 nights.", time: nil),
                    Activity(title: "Evening Walk", description: "Ponte Vecchio", time: "Evening"),
                    Activity(title: "Dinner", description: "La Giostra", time: nil)
                ]),
                DailyItinerary(dayNumber: 2, date: "June 16", title: "Gelato & City Views", activities: [
                    Activity(title: "Family Gelato Making Class", description: "Includes making sorbet + Italian gelato tasting.", time: nil),
                    Activity(title: "Explore Florence", description: "Duomo (book climb if desired), Piazza della Signoria.", time: "Afternoon"),
                    Activity(title: "Sunset", description: "Piazzale Michelangelo", time: "Sunset")
                ]),
                DailyItinerary(dayNumber: 3, date: "June 17", title: "Tuscany Balloon Ride", activities: [
                    Activity(title: "Hot Air Balloon Ride", description: "Over Tuscany (near San Casciano or Chianti). Champagne breakfast included.", time: "Early Morning"),
                    Activity(title: "Relaxation", description: "Pool time or Boboli Gardens.", time: "Afternoon")
                ]),
                DailyItinerary(dayNumber: 4, date: "June 18", title: "Day Trip to Modena", activities: [
                    Activity(title: "Train to Modena", description: "Visit Ferrari Museum Maranello or Enzo Ferrari Museum.", time: nil),
                    Activity(title: "Experience", description: "Optional driving simulator.", time: nil),
                    Activity(title: "Lunch", description: "Try Tigelle & Lambrusco in Modena.", time: nil),
                    Activity(title: "Return to Florence", description: "Train back.", time: nil)
                ])
            ]
        ),
        Location(
            name: "Cinque Terre",
            imageName: "cinque_terre_hero",
            description: "A string of centuries-old seaside villages on the rugged Italian Riviera coastline.",
            dates: "June 19–22",
            itinerary: [
                DailyItinerary(dayNumber: 1, date: "June 19", title: "Arrival & Seaside Dinner", activities: [
                    Activity(title: "Travel to Cinque Terre", description: "Train Florence → La Spezia (~2 hr), then local train.", time: nil),
                    Activity(title: "Check-in", description: "Monterosso recommended for families.", time: nil),
                    Activity(title: "Relax", description: "Beach time.", time: "Afternoon"),
                    Activity(title: "Dinner", description: "Sunset dinner on the water in Monterosso.", time: "Sunset")
                ]),
                DailyItinerary(dayNumber: 2, date: "June 20", title: "Cooking Class & Vernazza", activities: [
                    Activity(title: "Family Cooking Class", description: "Pesto-making authentic Ligurian style + seafood or pasta course.", time: nil),
                    Activity(title: "Afternoon", description: "Beach or ferry ride to Vernazza.", time: "Afternoon")
                ]),
                DailyItinerary(dayNumber: 3, date: "June 21", title: "Boat Tour & Coastal Views", activities: [
                    Activity(title: "Boat Tour", description: "Cinque Terre Boat Tour / Swimming Coves.", time: nil),
                    Activity(title: "Explore", description: "Vernazza & Manarola by ferry.", time: nil),
                    Activity(title: "Optional Walk", description: "Manarola to Riomaggiore (Via dell’Amore) if open.", time: nil)
                ])
            ]
        ),
        Location(
            name: "Venice",
            imageName: "venice_hero",
            description: "The City of Canals, built on more than 100 small islands in a lagoon in the Adriatic Sea.",
            dates: "June 22–24",
            itinerary: [
                DailyItinerary(dayNumber: 1, date: "June 22", title: "Arrival & Gondola Ride", activities: [
                    Activity(title: "Travel to Venice", description: "Train La Spezia → Venice (~5 hrs, 1–2 transfers).", time: nil),
                    Activity(title: "Arrival", description: "Vaporetto to hotel.", time: nil),
                    Activity(title: "Gondola Ride", description: "Sunset ride.", time: "7-8pm"),
                    Activity(title: "Dinner", description: "Cannaregio district.", time: nil)
                ]),
                DailyItinerary(dayNumber: 2, date: "June 23", title: "St. Mark's & Glass Making", activities: [
                    Activity(title: "Sightseeing", description: "St. Mark’s Basilica & Doge’s Palace.", time: nil),
                    Activity(title: "Walk", description: "Bridge of Sighs & Rialto Market.", time: nil),
                    Activity(title: "Optional Workshop", description: "Murano glass workshop or Burano colorful village boat.", time: nil),
                    Activity(title: "Evening", description: "Dinner canalside & gelato night walk.", time: "Evening")
                ]),
                DailyItinerary(dayNumber: 3, date: "June 24", title: "Departure", activities: [
                    Activity(title: "Breakfast", description: "Last shopping.", time: "Morning"),
                    Activity(title: "Depart Venice", description: "Safe travels!", time: nil)
                ])
            ]
        )
    ]
}
