import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsletterWidget extends StatefulWidget {
  const NewsletterWidget({super.key});

  @override
  _NewsletterWidgetState createState() => _NewsletterWidgetState();
}

class _NewsletterWidgetState extends State<NewsletterWidget> {
  final String apiKey =
      '1059356af5b54cb4b02a2ace19bb8bc5'; // Replace with your News API key
  List<NewsArticle> newsList = [];

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Future<void> fetchNews() async {
    final response = await http.get(
      Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=in&category=business&q=agriculture&apiKey=$apiKey'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> articles = data['articles'];
      setState(() {
        newsList =
            articles.map((article) => NewsArticle.fromJson(article)).toList();
      });
    } else {
      throw Exception('Failed to load news');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 423,
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: const Color(0xff02841e),
        borderRadius: BorderRadius.circular(15),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Positioned(
              left: 18,
              top: 40,
              child: Align(
                child: SizedBox(
                  width: 97,
                  height: 24,
                  child: Text(
                    'Newsletter',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 375,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    // News View Option
                    SizedBox(
                      width: double.infinity,
                      height: 24,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Handle news view option
                            },
                            child: const Text(
                              'View News',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // News Articles
                    for (var article in newsList) NewsCard(article: article),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsArticle {
  final String title;
  final String description;
  final String url;
  final String imageUrl;

  NewsArticle({
    required this.title,
    required this.description,
    required this.url,
    required this.imageUrl,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      imageUrl: json['urlToImage'] ?? '',
    );
  }
}

class NewsCard extends StatelessWidget {
  final NewsArticle article;

  const NewsCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(
          article.title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(article.description),
        onTap: () {
          // Handle news item tap (open the article URL, for example)
        },
      ),
    );
  }
}
