import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsletterWidget extends StatefulWidget {
  const NewsletterWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NewsletterWidgetState createState() => _NewsletterWidgetState();
}

class _NewsletterWidgetState extends State<NewsletterWidget> {
  late Future<List<Article>> _articles;

  @override
  void initState() {
    super.initState();
    _articles = _fetchNews();
  }

  Future<List<Article>> _fetchNews() async {
    const apiKey =
        '1059356af5b54cb4b02a2ace19bb8bc5'; // Replace with your News API key
    const url =
        'https://newsapi.org/v2/top-headlines?country=in&apiKey=$apiKey';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final articles = data['articles'] as List<dynamic>;

        return articles.map((article) => Article.fromJson(article)).toList();
      } else {
        throw Exception(
            'Failed to load news. Status Code: ${response.statusCode}');
      }
    } catch (e) {
      // ignore: avoid_print
      print('Error: $e');
      // ignore: use_rethrow_when_possible
      throw e; // Rethrow the exception to be caught by the UI
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420.0,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff02841e), width: 2.0),
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: FutureBuilder<List<Article>>(
        future: _articles,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No news available.'));
          } else {
            return ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final article = snapshot.data![index];
                return Card(
                  elevation: 3.0,
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    title: Text(
                      article.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(article.description),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class Article {
  final String title;
  final String description;

  Article({required this.title, required this.description});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
    );
  }
}
