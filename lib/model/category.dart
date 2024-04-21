import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({required this.categoryId, required this.name, required this.icon});
}

final allCategory = Category(
  categoryId: 0,
  name: "All",
  icon: Icons.search,
);//

final musicCategory = Category(
  categoryId: 1,
  name: "Music",
  icon: Icons.music_note,
);

final screeningCategory = Category(
  categoryId: 2,
  name: "Screening",
  icon: Icons.movie_filter
);

final tourCategory = Category(
  categoryId: 3,
  name: "Tour",
  icon: Icons.tour,
);

final comedyCategory = Category(
  categoryId: 4,
  name: "Comedy",
  icon: Icons.theater_comedy_rounded,
);
final workShopCategory = Category(
  categoryId: 5,
  name: "Workshops",
  icon: Icons.work,
);
final openmicCategory = Category(
  categoryId: 6,
  name: "Open Mic",
  icon: CupertinoIcons.music_mic
);
final adventureCategory = Category(
  categoryId: 7,
  name: "Adventure",
  icon: Icons.hiking,
);



final categories = [
  allCategory,
  musicCategory,
  screeningCategory,
  tourCategory,
  comedyCategory,
  workShopCategory,
  openmicCategory,

];
