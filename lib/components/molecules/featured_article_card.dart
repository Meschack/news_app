import 'package:flutter/material.dart';
import 'package:news_app/components/atoms/custom_text.dart';
import 'package:news_app/config/sizes.dart';
import 'package:news_app/pages/article_detail.dart';

Container greetings() {
  return Container(
    padding: const EdgeInsets.only(top: 50),
    color: const Color.fromRGBO(190, 190, 190, 0.3),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                "Good Morning",
                style: const TextStyle(
                    color: Color.fromRGBO(109, 98, 101, 1), fontSize: Sizes.sm),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                'Sun 9 April, 2024',
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: Sizes.md),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.sunny,
                color: Colors.orange,
              ),
              const SizedBox(
                width: 10,
              ),
              CustomText(
                "Sunny 32° C",
                style: const TextStyle(fontSize: Sizes.sm),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

GestureDetector featureArticleCard(
  Map<String, String> featureArticle,
  double width,
  BuildContext context, {
  double? height,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ArticleDetailScreen(),
        ),
      );
    },
    child: Container(
      padding: const EdgeInsets.only(right: 0),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height ?? width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(featureArticle["image"]!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomText(
            "${featureArticle["title"]!.substring(0, 20)}...",
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: Sizes.lg,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          CustomText(
            featureArticle["category"]!,
            style: const TextStyle(
              color: Color.fromRGBO(109, 98, 101, 1),
              fontSize: Sizes.md,
            ),
          )
        ],
      ),
    ),
  );
}

GestureDetector exploreListElement(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ArticleDetailScreen(),
        ),
      );
    },
    child: LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return Container(
          margin: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: constraints.maxWidth * 0.70 - 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth * 0.70,
                      child: CustomText(
                        "Experience the Serenity of Japan's Traditional Countryside",
                        textAlign: TextAlign.justify,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                "lib/assets/images/camille-3.jpg",
                              ),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          "Harry Harper · Apr 12, 2023",
                          style: const TextStyle(
                            fontSize: Sizes.sm,
                            color: Color.fromRGBO(109, 98, 101, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                width: constraints.maxWidth * 0.3,
                height: 80,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                    image: AssetImage("lib/assets/images/apple-watch.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        );
      },
    ),
  );
}
