const tripData = [
    {
        id: 'rome',
        name: 'Rome',
        imageName: 'images/rome_hero.png',
        description: 'The Eternal City, home to ancient ruins, world-class art, and vibrant street life.',
        dates: 'June 11–15',
        itinerary: [
            {
                dayNumber: 1,
                date: 'June 11',
                title: 'Arrival & Evening Stroll',
                activities: [
                    { title: 'Arrive in Rome / Check-in', description: 'Settle into your home base for the next 4 nights.' },
                    { title: 'Evening Stroll', description: 'Walk to Piazza Navona & Trevi Fountain.', time: 'Evening' },
                    { title: 'Gelato Stop', description: 'Gelateria del Teatro' },
                    { title: 'Dinner', description: 'Da Francesco (family friendly)' }
                ]
            },
            {
                dayNumber: 2,
                date: 'June 12',
                title: 'Ancient Rome & City Highlights',
                activities: [
                    { title: 'Golf Cart Tour of Rome', description: 'See Colosseum exterior, Circus Maximus, Aventine Keyhole, Pantheon, Spanish Steps, Piazza Venezia. Family-friendly, minimal walking.', time: '3 hours' },
                    { title: 'Lunch', description: 'Trastevere' },
                    { title: 'Afternoon Exploration', description: 'Pantheon & Piazza Navona', time: 'Afternoon' },
                    { title: 'Optional Rooftop Drink', description: 'Sunset at Terrazza Borromini', time: 'Sunset' }
                ]
            },
            {
                dayNumber: 3,
                date: 'June 13',
                title: 'Day Trip to Pompeii',
                activities: [
                    { title: 'Train to Naples', description: 'Rome Termini → Naples (~1 hr 10 min)', time: 'Morning' },
                    { title: 'Transfer to Pompeii', description: '~35 min transfer' },
                    { title: 'Guided Family Tour', description: 'Explore the ancient ruins of Pompeii.' },
                    { title: 'Lunch', description: 'Caupona Pompeii' },
                    { title: 'Return to Rome', description: 'Dinner & rest', time: 'Evening' }
                ]
            },
            {
                dayNumber: 4,
                date: 'June 14',
                title: 'Vatican & Villa Borghese',
                activities: [
                    { title: 'Vatican Museums', description: 'Sistine Chapel & St. Peter’s Basilica.', time: 'Morning' },
                    { title: 'Lunch', description: 'Ginger Sapori e Salute (near Vatican)' },
                    { title: 'Villa Borghese Gardens', description: 'Playground & row boats.', time: 'Afternoon' },
                    { title: 'Optional Gallery', description: 'Borghese Gallery timed tickets' },
                    { title: 'Evening in Trastevere', description: 'Explore & casual dinner', time: 'Evening' }
                ]
            }
        ]
    },
    {
        id: 'florence',
        name: 'Florence',
        imageName: 'images/florence_hero.png',
        description: 'The Cradle of the Renaissance, famous for its art, architecture, and Tuscan cuisine.',
        dates: 'June 15–19',
        itinerary: [
            {
                dayNumber: 1,
                date: 'June 15',
                title: 'Arrival & Ponte Vecchio',
                activities: [
                    { title: 'Travel to Florence', description: 'Fast train Rome → Florence (1 hr 30 min)', time: 'Morning' },
                    { title: 'Check-in', description: 'Home base for 4 nights.' },
                    { title: 'Evening Walk', description: 'Ponte Vecchio', time: 'Evening' },
                    { title: 'Dinner', description: 'La Giostra' }
                ]
            },
            {
                dayNumber: 2,
                date: 'June 16',
                title: 'Gelato & City Views',
                activities: [
                    { title: 'Family Gelato Making Class', description: 'Includes making sorbet + Italian gelato tasting.' },
                    { title: 'Explore Florence', description: 'Duomo (book climb if desired), Piazza della Signoria.', time: 'Afternoon' },
                    { title: 'Sunset', description: 'Piazzale Michelangelo', time: 'Sunset' }
                ]
            },
            {
                dayNumber: 3,
                date: 'June 17',
                title: 'Tuscany Balloon Ride',
                activities: [
                    { title: 'Hot Air Balloon Ride', description: 'Over Tuscany (near San Casciano or Chianti). Champagne breakfast included.', time: 'Early Morning' },
                    { title: 'Relaxation', description: 'Pool time or Boboli Gardens.', time: 'Afternoon' }
                ]
            },
            {
                dayNumber: 4,
                date: 'June 18',
                title: 'Day Trip to Modena',
                activities: [
                    { title: 'Train to Modena', description: 'Visit Ferrari Museum Maranello or Enzo Ferrari Museum.' },
                    { title: 'Experience', description: 'Optional driving simulator.' },
                    { title: 'Lunch', description: 'Try Tigelle & Lambrusco in Modena.' },
                    { title: 'Return to Florence', description: 'Train back.' }
                ]
            }
        ]
    },
    {
        id: 'cinque-terre',
        name: 'Cinque Terre',
        imageName: 'images/cinque_terre_hero.png',
        description: 'A string of centuries-old seaside villages on the rugged Italian Riviera coastline.',
        dates: 'June 19–22',
        itinerary: [
            {
                dayNumber: 1,
                date: 'June 19',
                title: 'Arrival & Seaside Dinner',
                activities: [
                    { title: 'Travel to Cinque Terre', description: 'Train Florence → La Spezia (~2 hr), then local train.' },
                    { title: 'Check-in', description: 'Monterosso recommended for families.' },
                    { title: 'Relax', description: 'Beach time.', time: 'Afternoon' },
                    { title: 'Dinner', description: 'Sunset dinner on the water in Monterosso.', time: 'Sunset' }
                ]
            },
            {
                dayNumber: 2,
                date: 'June 20',
                title: 'Cooking Class & Vernazza',
                activities: [
                    { title: 'Family Cooking Class', description: 'Pesto-making authentic Ligurian style + seafood or pasta course.' },
                    { title: 'Afternoon', description: 'Beach or ferry ride to Vernazza.', time: 'Afternoon' }
                ]
            },
            {
                dayNumber: 3,
                date: 'June 21',
                title: 'Boat Tour & Coastal Views',
                activities: [
                    { title: 'Boat Tour', description: 'Cinque Terre Boat Tour / Swimming Coves.' },
                    { title: 'Explore', description: 'Vernazza & Manarola by ferry.' },
                    { title: 'Optional Walk', description: 'Manarola to Riomaggiore (Via dell’Amore) if open.' }
                ]
            }
        ]
    },
    {
        id: 'venice',
        name: 'Venice',
        imageName: 'images/venice_hero.png',
        description: 'The City of Canals, built on more than 100 small islands in a lagoon in the Adriatic Sea.',
        dates: 'June 22–24',
        itinerary: [
            {
                dayNumber: 1,
                date: 'June 22',
                title: 'Arrival & Gondola Ride',
                activities: [
                    { title: 'Travel to Venice', description: 'Train La Spezia → Venice (~5 hrs, 1–2 transfers).' },
                    { title: 'Arrival', description: 'Vaporetto to hotel.' },
                    { title: 'Gondola Ride', description: 'Sunset ride.', time: '7-8pm' },
                    { title: 'Dinner', description: 'Cannaregio district.' }
                ]
            },
            {
                dayNumber: 2,
                date: 'June 23',
                title: 'St. Mark\'s & Glass Making',
                activities: [
                    { title: 'Sightseeing', description: 'St. Mark’s Basilica & Doge’s Palace.' },
                    { title: 'Walk', description: 'Bridge of Sighs & Rialto Market.' },
                    { title: 'Optional Workshop', description: 'Murano glass workshop or Burano colorful village boat.' },
                    { title: 'Evening', description: 'Dinner canalside & gelato night walk.', time: 'Evening' }
                ]
            },
            {
                dayNumber: 3,
                date: 'June 24',
                title: 'Departure',
                activities: [
                    { title: 'Breakfast', description: 'Last shopping.', time: 'Morning' },
                    { title: 'Depart Venice', description: 'Safe travels!' }
                ]
            }
        ]
    }
];
