import 'package:flutter/material.dart';
import 'package:news_app/components/atoms/custom_text.dart';
import 'package:news_app/components/molecules/featured_article_card.dart';
import 'package:news_app/pages/search.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final articles = [
    {
      "title": "Uncovering the Hidden Gems of the Amazon Forest",
      "image": "lib/assets/images/mac.jpg",
      "category": "Harry Harper · Apr 12, 2023",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(15, 50, 15, 15),
          color: const Color.fromRGBO(190, 190, 190, 0.3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                "Explore",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.search_outlined,
                ),
              ),
            ],
          ),
        ),
        // TODO: Make categories section
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              featureArticleCard(
                articles.first,
                MediaQuery.of(context).size.width,
                context,
                height: MediaQuery.of(context).size.width * 0.60,
              ),
              exploreListElement(context),
              exploreListElement(context),
              exploreListElement(context),
              exploreListElement(context),
              exploreListElement(context),
              exploreListElement(context),
              exploreListElement(context),
            ],
          ),
        )
      ],
    );
  }
}
