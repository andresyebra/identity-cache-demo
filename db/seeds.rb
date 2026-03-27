releases = [
  { name: "Thriller", description: "Michael Jackson's iconic album featuring Billie Jean and Beat It.", genre: "Pop", released_at: "1982-11-30", active: true, rating: 5.0, downloads_count: 70_000_000, featured: true },
  { name: "Back in Black", description: "AC/DC's legendary hard rock album and one of the best-selling records of all time.", genre: "Rock", released_at: "1980-07-25", active: true, rating: 4.9, downloads_count: 50_000_000, featured: true },
  { name: "The Dark Side of the Moon", description: "Pink Floyd's progressive rock masterpiece exploring conflict, greed, and mental illness.", genre: "Progressive Rock", released_at: "1973-03-01", active: true, rating: 5.0, downloads_count: 45_000_000, featured: true },
  { name: "Abbey Road", description: "The Beatles' final studio album featuring Come Together and Here Comes the Sun.", genre: "Rock", released_at: "1969-09-26", active: true, rating: 4.9, downloads_count: 31_000_000, featured: true },
  { name: "Rumours", description: "Fleetwood Mac's emotionally charged album with Dreams and Go Your Own Way.", genre: "Soft Rock", released_at: "1977-02-04", active: true, rating: 4.8, downloads_count: 40_000_000, featured: true },
  { name: "Born to Run", description: "Bruce Springsteen's breakout album capturing the spirit of youthful ambition.", genre: "Rock", released_at: "1975-08-25", active: true, rating: 4.7, downloads_count: 12_000_000, featured: false },
  { name: "Nevermind", description: "Nirvana's groundbreaking grunge album that defined a generation.", genre: "Grunge", released_at: "1991-09-24", active: true, rating: 4.8, downloads_count: 30_000_000, featured: true },
  { name: "21", description: "Adele's soulful sophomore album featuring Rolling in the Deep and Someone Like You.", genre: "Pop/Soul", released_at: "2011-01-24", active: true, rating: 4.6, downloads_count: 31_000_000, featured: false },
  { name: "The Miseducation of Lauryn Hill", description: "Lauryn Hill's genre-blending solo debut mixing hip-hop, soul, and R&B.", genre: "Hip-Hop/Soul", released_at: "1998-08-25", active: true, rating: 4.9, downloads_count: 20_000_000, featured: true },
  { name: "OK Computer", description: "Radiohead's ambitious album exploring technology, alienation, and modern anxiety.", genre: "Alternative Rock", released_at: "1997-05-21", active: true, rating: 4.8, downloads_count: 8_500_000, featured: false },
  { name: "Purple Rain", description: "Prince's iconic soundtrack album blending rock, pop, and funk.", genre: "Pop/Rock", released_at: "1984-06-25", active: false, rating: 4.7, downloads_count: 25_000_000, featured: false },
  { name: "Good Kid, M.A.A.D City", description: "Kendrick Lamar's cinematic coming-of-age hip-hop album set in Compton.", genre: "Hip-Hop", released_at: "2012-10-22", active: true, rating: 4.8, downloads_count: 10_500_000, featured: true },
  { name: "Random Access Memories", description: "Daft Punk's Grammy-winning tribute to live instrumentation and disco.", genre: "Electronic", released_at: "2013-05-17", active: true, rating: 4.5, downloads_count: 7_200_000, featured: false },
  { name: "Lemonade", description: "Beyoncé's visual album exploring infidelity, race, and female empowerment.", genre: "R&B/Pop", released_at: "2016-04-23", active: true, rating: 4.7, downloads_count: 5_800_000, featured: true },
  { name: "Is This It", description: "The Strokes' debut that sparked the garage rock revival of the 2000s.", genre: "Indie Rock", released_at: "2001-07-30", active: true, rating: 4.4, downloads_count: 3_500_000, featured: false },
  { name: "Blonde", description: "Frank Ocean's experimental and deeply personal R&B masterpiece.", genre: "R&B", released_at: "2016-08-20", active: true, rating: 4.6, downloads_count: 4_200_000, featured: false },
  { name: "A Night at the Opera", description: "Queen's theatrical rock album featuring the legendary Bohemian Rhapsody.", genre: "Rock", released_at: "1975-10-31", active: false, rating: 4.8, downloads_count: 12_000_000, featured: false },
  { name: "Homework", description: "Daft Punk's influential debut blending French house with techno and acid.", genre: "Electronic", released_at: "1997-01-20", active: true, rating: 4.3, downloads_count: 2_800_000, featured: false },
  { name: "DAMN.", description: "Kendrick Lamar's Pulitzer Prize-winning album merging hip-hop with raw storytelling.", genre: "Hip-Hop", released_at: "2017-04-14", active: true, rating: 4.7, downloads_count: 6_900_000, featured: true },
  { name: "Blue", description: "Joni Mitchell's confessional folk album, widely regarded as one of the greatest ever.", genre: "Folk", released_at: "1971-06-22", active: true, rating: 4.9, downloads_count: 3_200_000, featured: false },
]

Release.destroy_all
Release.create!(releases)

puts "Seeded #{Release.count} music releases."
