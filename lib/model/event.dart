import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Event {
  final String imagePath, title, description, location, duration, punchLine1, punchLine2, time ;
  final List categoryIds, galleryImages;

  Event({
    this.time= '',
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

 // Associated only with the "All" category
final ScreeningEvent2 = Event(
    imagePath: "assets/event_images/delhi_events/Screening_Delhi_rcbvsrh.jpg",
    title: "Screening of SRH vs RCB IPL2024",
    description: "SRH vs RCB IPL 2024 Tickets for Live Screening at The Terrace, Ghaziabad",
    location: "The Terrace, Ghaziabad",
    duration: "25April",
    punchLine1: "TATA IPL 2024",
    punchLine2: "Royal Challengers Bangalore vs Sunrisers Hyderabad",
    time: "7:00 PM",
    categoryIds: [0, 2],

    galleryImages: []);
final ScreeningEvent3 = Event(
    imagePath: "assets/event_images/delhi_events/Screening_Delhi_rcbvsrh2.jpg",
    title: "Screening of SRH vs RCB IPL2024",
    description: "Live Screening at KTG Banquet Hall, Sec 62, Noida.",
    location: "KTG Banquet Hall, Noida",
    duration: "15April",
    punchLine1: "TATA IPL 2024",
    punchLine2: "Royal Challengers Bangalore vs Sunrisers Hyderabad",
    time: "7:00 PM",
    categoryIds: [0, 2],

    galleryImages: []);
////////////////////////////////////////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////
final musicConcert1 = Event(
    imagePath: "assets/event_images/delhi_events/indienight_music_delhi.png",
    title: "Indie Music House Concert",
    description: "Join us for an intimate mini house concert Graveyard Sessions on April 13th in Chattarpur. ✨",
    location: "Chattarpur, Delhi ",
    duration: "14April",
    punchLine1: "Indie Music House Concert",
    punchLine2: "by Graveyard Sessions calling all Indie music lovers in Delhi!",
    time: "8:00 PM",
    galleryImages: ["assets/event_images/delhi_events/gallery1_music_indienight_delhi.webp","assets/event_images/delhi_events/gallery2_music_indienight_delhi.webp.webp","assets/event_images/delhi_events/gallery3_music_indienight_delhi.webp.webp"],
    categoryIds: [0, 1]);
final musicConcert2 = Event(
    imagePath: "assets/event_images/delhi_events/nemo_music_delhi.webp",
    title: "Linkin Park Tribute By Nemophilis",
    description: "After a year of thrilling performances and accomplishments, Nemophilis is back in town with a bang!",
    location: "Connaught Place, New Delhi",
    duration: "14April",
    time: "6:30 PM",
    punchLine1: "Linkin Park Tribute",
    punchLine2: "By Nemophilis ft. Rishin Dharap",

    galleryImages: [],
    categoryIds: [0, 1]);
final musicConcert3 = Event(
    imagePath: "assets/event_images/delhi_events/sufi_music_delhi.png",
    title: "Vandana Ki Sufi Baithak",
    description: "Come to Tahia, Noida on April 19 from 8 pm onwards to experience Vandana Pal's sublime melodies as they take the spotlight in the entrancing world of Sufi music. Let the magical allure of their music completely engulf you.",
    location: "Hazipur, Sector 104, Noida",
    duration: "19April",
    punchLine1: "Vandana Ki Sufi Baithak",
    punchLine2: "Sitaron ke Aashiyaane mei Vandana ki Sufi Baithak",

    galleryImages: ["assets/event_images/delhi_events/gallery1_music_sufi_delhi.webp","assets/event_images/delhi_events/gallery2_music_sufi_delhi.webp","assets/event_images/delhi_events/gallery3_music_sufi_delhi.webp"],
    categoryIds: [0, 1]);
final musicConcert4 = Event(
    imagePath: "assets/event_images/delhi_events/timethrot_music_delhi.jpg",
    title: "TIME THROTTLE",
    description: "Time Throttle is a progressive rock band that has existed since 2019. It was only after 2 years of rigorous practice and refining their product that Time Throttle made its debut performance with a 75 min setlist. ",
    location: "Hard Rock Cafe, Delhi",
    duration: "12April",
    punchLine1: "The last Tool Tribute tour by Time Throttle",
    punchLine2: "After 23 shows across 11 cities over 18 months, Time Throttle is concluding its Tool tribute tour. ",

    galleryImages: ["assets/event_images/delhi_events/gallery1_music_throttle_delhi.webp","assets/event_images/delhi_events/gallery2_music_throttle_delhi.webp","assets/event_images/delhi_events/gallery3_music_throttle_delhi.webp"],
    categoryIds: [0, 1]);
///////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////
final tourEvent1 = Event(
    imagePath: "assets/event_images/delhi_events/tourEvent_BestTour.png",
    title: "Best tour of lifetime - Curate your trip",
    description: "",
    location: "Venue to be announced, Delhi",
    duration: "18 June",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 3]);
final tourEvent2 = Event(
    imagePath: "assets/event_images/delhi_events/tourEvent_Manali.png",
    title: "Delhi to Manali by Volvo Bus",
    description: "",
    location: "rama krishna ashram marg, Delhi",
    duration: "4 Jan",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 3]);
final tourEvent3 = Event(
    imagePath: "assets/event_images/delhi_events/tourEvent_delhiDarshan.jpg",
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
final comedyEvent1 = Event(
    imagePath: "assets/event_images/delhi_events/Comedy_delhi_jaspreet.jpg",
    title: "With Love jaspreet",
    description: "Punchliners comedy show",
    location: "Binge Central, Noida",
    duration: "13 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 4]);
final comedyEvent2 = Event(
    imagePath: "assets/event_images/delhi_events/comedy_delhi_manish.png",
    title: "Punchliners ft Manish Tyagi",
    description: "Punchliners comedy show",
    location: "Doodle's Garden, Delhi",
    duration: "21 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 4]);
final comedyEvent3 = Event(
    imagePath: "assets/event_images/delhi_events/Comedy_delhi_kanan.jpg",
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
final workshopEvent1 = Event(
    imagePath: "assets/event_images/workshopEvent_weavingdelhi.png",
    title: "Weaving Narratives",
    description: "",
    location: "KNMA Art & Craft Museum, Noida",
    duration: "6 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 5]);
final workshopEvent2 = Event(
    imagePath: "assets/event_images/workshopEvent_colourdelhi.png",
    title: "Introduction to Colour Association",
    description: "",
    location: "Kiran Nadar Museum of art, Delhi",
    duration: "5 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 5]);
final workshopEvent3 = Event(
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
final openmicEvent1 = Event(
    imagePath: "assets/event_images/openmicEvent_Unheared.jpeg",
    title: "Unheared - Open Mic - Noida Chapter",
    description: "",
    location: "Comedy Country, Noida",
    duration: "6 April",
    punchLine1: "",
    punchLine2: "",
    galleryImages: [""],
    categoryIds: [0, 6]);
final openmicEvent2 = Event(
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

//vfirestore dataa



final events = [

  ScreeningEvent2,
  ScreeningEvent3,

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
