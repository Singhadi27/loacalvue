class EventM {
  final String imagePath, title, description, location, duration, punchLine1, punchLine2;
  final List categoryIds, galleryImages;

  EventM({
    this.imagePath = '',
    this.title = '',
    this.description = '',
    this.location = '',
    this.duration = '',
    this.punchLine1 = '',
    this.punchLine2 = '',
    this.categoryIds = const [],
    this.galleryImages = const [],
  });
}


/////////////////////////////////////////////////////////////////////
final ScreeningEvent1 = EventM(
    imagePath: "assets/event_images/Screening_Delhi_cskvsmi.jpg",
    title: "Screening of CSK vs MI IPL2024",
    description: "",
    location: "The Terrace, Ghaziabad",
    duration: "14 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [],
    categoryIds: [0,2]); // Remove the music category ID (1) from the list
// Associated only with the "All" category
final ScreeningEvent2 = EventM(
    imagePath: "assets/event_images/Screening_Delhi_rcbvsmi.jpg",
    title: "Screening of MI vs RCB IPL2024",
    description: "",
    location: "The Terrace, Ghaziabad",
    duration: "11 April",
    punchLine1: "",
    punchLine2: "",
    categoryIds: [0, 2],
    galleryImages: [""]);
////////////////////////////////////////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////
final musicConcert1 = EventM(
    imagePath: "assets/event_images/music_concert_deep_jandu.jpg",
    title: "Deep Jandu Live @White Delhi",
    description: "",
    location: "WHITE CLUB DELHI, Delhi",
    duration: "5April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 1]);
final musicConcert2 = EventM(
    imagePath: "assets/event_images/music_concert_chetas.jpg",
    title: "DJ CHETAS LIVE @Socho-Delhi",
    description: "",
    location: "Socho Club Delhi, Delhi",
    duration: "6 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 1]);
final musicConcert3 = EventM(
    imagePath: "assets/event_images/music_concert_kk.jpeg",
    title: "Tribute to KK",
    description: "",
    location: "Hard Rock Cafe, Delhi",
    duration: "5 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 1]);
final musicConcert4 = EventM(
    imagePath: "assets/event_images/music_concert_sufi.jpeg",
    title: "THE PROJECT RAAG",
    description: "",
    location: "VIP Lounge Club, Vasant Kunj",
    duration: "4 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 1]);
///////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////
final tourEvent1 = EventM(
    imagePath: "assets/event_images/tourEvent_BestTour.png",
    title: "Best tour of lifetime - Curate your trip",
    description: "",
    location: "Venue to be announced, Delhi",
    duration: "18 June",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 3]);
final tourEvent2 = EventM(
    imagePath: "assets/event_images/tourEvent_Manali.png",
    title: "Delhi to Manali by Volvo Bus",
    description: "",
    location: "rama krishna ashram marg, Delhi",
    duration: "4 Jan",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 3]);
final tourEvent3 = EventM(
    imagePath: "assets/event_images/tourEvent_delhiDarshan.jpg",
    title: "Delhi Darshan by Bus",
    description: "",
    location: "studifysuccess, Delhi",
    duration: "18 June",
    punchLine1: "Golf!",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 3]);
///////////////////////////////////////////////////////////////////////////////////////////////



/////////////////////////////////////////////////////////////////////////////////
final comedyEvent1 = EventM(
    imagePath: "assets/event_images/Comedy_jaspreet.jpg",
    title: "With Love jaspreet",
    description: "Punchliners comedy show",
    location: "Binge Central, Noida",
    duration: "13 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 4]);
final comedyEvent2 = EventM(
    imagePath: "assets/event_images/comedy_manish.png",
    title: "Punchliners ft Manish Tyagi",
    description: "Punchliners comedy show",
    location: "Doodle's Garden, Delhi",
    duration: "21 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 4]);
final comedyEvent3 = EventM(
    imagePath: "assets/event_images/Comedy_kanan.jpg",
    title: "Kanan Gill Experience",
    description: "Punchliners comedy show",
    location: "Kedarnath Sahni Auditorium, Delhi",
    duration: "4 may",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 4]);
//////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////
final workshopEvent1 = EventM(
    imagePath: "assets/event_images/workshopEvent_weavingdelhi.png",
    title: "Weaving Narratives",
    description: "",
    location: "KNMA Art & Craft Museum, Noida",
    duration: "6 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 5]);
final workshopEvent2 = EventM(
    imagePath: "assets/event_images/workshopEvent_colourdelhi.png",
    title: "Introduction to Colour Association",
    description: "",
    location: "Kiran Nadar Museum of art, Delhi",
    duration: "5 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 5]);
final workshopEvent3 = EventM(
    imagePath: "assets/event_images/workshopEvent_textileDelhi.jpg",
    title: "The Unexplored Texitile Hub of Delhi",
    description: "",
    location: "Hauz Khas Metro Gate4, delhi",
    duration: "13 Jan",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 5]);
////////////////////////////////////////////////////////////////////////////////////////




//////////////////////////////////////////////////////////////////////////////////////
final openmicEvent1 = EventM(
    imagePath: "assets/event_images/openmicEvent_Unheared.jpeg",
    title: "Unheared - Open Mic - Noida Chapter",
    description: "",
    location: "Comedy Country, Noida",
    duration: "6 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 6]);
final openmicEvent2 = EventM(
    imagePath: "assets/event_images/openmicEvent_Narela.png",
    title: "Narela Open Mic",
    description: "",
    location: "HSB Studio, Delhi",
    duration: "7 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 6]);
////////////////////////////////////////////////////////////////////////////////////////////////



final eventsM = [
  ScreeningEvent1,
  ScreeningEvent2,

  musicConcert1,
  musicConcert2,
  musicConcert3,
  musicConcert4,

  tourEvent1,
  tourEvent2,
  tourEvent3,


  comedyEvent1,
  comedyEvent2,
  comedyEvent3,


  workshopEvent1,
  workshopEvent2,
  workshopEvent3,


  openmicEvent1,
  openmicEvent2,
];