import 'package:flutter/material.dart';
import 'package:news_app/components/atoms/custom_text.dart';
import 'package:news_app/components/molecules/bookmark_added.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  final articles = [
    {
      "title": "Uncovering the Hidden Gems of the Amazon Forest",
      "image": "lib/assets/images/mac.jpg",
      "category": "Travel",
    },
    {
      "title": "Uncovering the Hidden Gems of the Amazon Forest",
      "image": "lib/assets/images/building.jpg",
      "category": "Architecture",
    },
    {
      "title": "Uncovering the Hidden Gems of the Amazon Forest",
      "image": "lib/assets/images/apple-watch.jpg",
      "category": "Technology",
    },
    {
      "title": "Uncovering the Hidden Gems of the Amazon Forest",
      "image": "lib/assets/images/camille-3.jpg",
      "category": "Movie",
    },
    {
      "title": "Uncovering the Hidden Gems of the Amazon Forest",
      "image": "lib/assets/images/mac.jpg",
      "category": "Travel",
    },
    {
      "title": "Uncovering the Hidden Gems of the Amazon Forest",
      "image": "lib/assets/images/mac.jpg",
      "category": "Travel",
    },
    {
      "title": "Uncovering the Hidden Gems of the Amazon Forest",
      "image": "lib/assets/images/mac.jpg",
      "category": "Travel",
    },
  ];

  bool actionsAreVisible = false;

  late String detail;

  void handleActions() {
    setState(() {
      actionsAreVisible = !actionsAreVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(15, 50, 15, 15),
          color: const Color.fromRGBO(190, 190, 190, 0.3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                "Bookmark",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actionsAreVisible
                  ? TextButton(
                      onPressed: handleActions,
                      child: CustomText(
                        'Done',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : IconButton(
                      // TODO: Implement this function
                      onPressed: handleActions,
                      icon: const Icon(
                        Icons.edit_outlined,
                      ),
                    ),
            ],
          ),
        ),
        // TODO: Make categories section
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: articles
                .map((e) => bookmarkAdded(e, showAction: actionsAreVisible))
                .toList(),
          ),
        )
      ],
    );
  }
}
