import 'package:flutter/material.dart';
import 'package:news_app/components/atoms/custom_text.dart';
import 'package:news_app/pages/article_detail.dart';

LayoutBuilder bookmarkAdded(
  Map<String, String> article, {
  bool showAction = false,
}) {
  return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
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
              width: (showAction
                      ? constraints.maxWidth * 0.50
                      : constraints.maxWidth * 0.70) -
                  30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: constraints.maxWidth * 0.70,
                    child: CustomText(
                      "${article['title']!.substring(0, 30)}...",
                      textAlign: TextAlign.justify,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      CustomText(
                        "${article['category']}",
                        style: const TextStyle(
                          fontSize: 16,
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
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                image: DecorationImage(
                  image: AssetImage("${article['image']}"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            showAction
                ? const Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.bookmark)),
                    ],
                  )
                : Container()
          ],
        ),
      ),
    );
  });
}
