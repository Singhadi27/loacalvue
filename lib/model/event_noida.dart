class EventN {
  final String imagePath, title, description, location, duration, punchLine1, punchLine2, time ;
  final List categoryIds, galleryImages;

  EventN({
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


final fiveKmRunEvent = EventN(
    imagePath: "assets/event_images/noida_events/mika_music_delhi.png",
    title: "Mika Singh",
    description: "",
    location: "Sutra Gastropub, Noida",
    duration: "27April",
    punchLine1: "Marathon!",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    galleryImages: [],
    categoryIds: [0, 1]);

final cookingEvent = EventN(
    imagePath: "assets/event_images/noida_events/gaurav_comedy_noida.png",
    title: "Gaurav Gupta Live at Binge Central Noida",
    description: "You don’t have to wait in lines to hear jokes from us. Book your tickets for Gaurav Gupta live at Binge Central, Noida to tickle your funny Bone. ",
    location: "Binge Central, Noida",
    duration: "3May",
    punchLine1: "Granite Cooking",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    categoryIds: [0, 2],
    galleryImages: ["assets/event_images/cooking_1.jpeg", "assets/event_images/cooking_2.jpeg", "assets/event_images/cooking_3.jpeg"]);

final musicConcert = EventN(
    imagePath: "assets/event_images/noida_events/copyist_workshop_noida.jpg",
    title: "Copyist Workshop",
    description: "Listen to Arijit's latest compositions.",
    location: "KNMA Art & Craft Museum Noida",
    duration: "27April",
    punchLine1: "Music Lovers!",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    galleryImages: ["assets/event_images/cooking_1.jpeg", "assets/event_images/cooking_2.jpeg", "assets/event_images/cooking_3.jpeg"],
    categoryIds: [0, 1]);



final eventsN = [
  fiveKmRunEvent,
  cookingEvent,
  musicConcert,
];
