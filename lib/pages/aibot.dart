import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:growwise/pages/prompts.dart';

class AiBotScreen extends StatefulWidget {
  const AiBotScreen({Key? key}) : super(key: key);

  @override
  _AiBotScreenState createState() => _AiBotScreenState();
}

class _AiBotScreenState extends State<AiBotScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<ChatMessage> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'GroWise Bot',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.chat, color: Colors.black),
            onPressed: () {
              // Handle chat icon press
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: ListView.builder(
                itemCount: _messages.length,
                reverse: true,
                itemBuilder: (context, index) {
                  return _messages[index];
                },
              ),
            ),
          ),
          _buildMessageBar(),
        ],
      ),
    );
  }

  Widget _buildMessageBar() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: const InputDecoration(
                hintText: 'Type a message...',
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              _sendMessage();
            },
          ),
        ],
      ),
    );
  }

  void _sendMessage() async {
    String message = _messageController.text.trim();
    if (message.isNotEmpty) {
      setState(() {
        _messages.insert(0, ChatMessage(text: message, isUser: true));
        _messageController.clear();
      });

      if (_isGreeting(message)) {
        String response =
            "Hello, I am your personal agricultural assistant. How may I assist you today?";
        _addResponse(response);
      } else if (_isAgricultureQuery(message)) {
        String aiResponse = await getAIResponse(message);
        _addResponse(aiResponse);
      } else {
        String response =
            "This Assistant is Fine-Tuned for your Agricultural Queries and does not have Knowledge beyond the topic.";
        _addResponse(response);
      }
    }
  }

  bool _isGreeting(String message) {
    for (String greeting in Constants.greetings) {
      if (message.trim().toLowerCase() == greeting) {
        return true;
      }
    }
    return false;
  }

  bool _isAgricultureQuery(String message) {
    for (String keyword in Constants.agricultureKeywords) {
      if (message.toLowerCase().contains(keyword)) {
        return true;
      }
    }
    return false;
  }

  void _addResponse(String text) {
    setState(() {
      _messages.insert(0, ChatMessage(text: text, isUser: false));
    });
  }

  Future<String> getAIResponse(String message) async {
    String url = 'https://api.openai.com/v1/completions';
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer sk-xxxxxxxxxxxx',
    };
    Map<String, dynamic> body = {
      'model': 'gpt-3.5-turbo-instruct', // DialoGPT model
      'prompt': message,
      'max_tokens': 150, // Adjust based on the desired response length
    };

    http.Response response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: json.encode(body),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      return data['choices'][0]['text'].toString();
    } else {
      print('Failed to get AI response: ${response.statusCode}');
      print('Response body: ${response.body}');
      throw Exception('Failed to get AI response');
    }
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isUser;

  const ChatMessage({required this.text, required this.isUser, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      padding: const EdgeInsets.all(8.0),
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(top: 8, right: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  isUser ? Colors.blue : const Color.fromARGB(255, 61, 179, 35),
            ),
          ),
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                color: isUser
                    ? const Color.fromARGB(255, 251, 251, 251)
                    : const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
