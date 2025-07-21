import 'package:flutter/material.dart';
import 'package:places_app/models/place.dart';
import 'package:places_app/widgets/place_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const mockPlace = Place(
      name: "Эрмитаж",
      description: "Один из крупнейших художественных музеев мира, расположен в Санкт-Петербурге.",
      type: "музей",
      images: ["https://www.inels.com/media/photos/article/item/gallery/images-173/hermitage_05-t4.png"]
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Surf Places"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: PlaceCardWidget(
            place: mockPlace,
            onCardTap: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Тап по карточке")));
            },
            onLikeTap: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Тап по лайку")));
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.place_outlined), label: "Места"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Избранное"),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Настройки"),
        ],
        onTap: (_) {},
      ),
    );
  }
}