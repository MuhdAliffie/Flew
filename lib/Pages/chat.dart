import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  ChatPageState createState() => ChatPageState();
}

class ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Text('Chat'),
      ),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text("Chat Page"),
              const Text("Chat Page"),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: const Text('Message 1'),
                      subtitle: const Text('Description 1'),
                    ),
                    ListTile(
                      title: const Text('Message 2'),
                      subtitle: const Text('Description 2'),
                    ),
                    ListTile(
                      title: const Text('Message 3'),
                      subtitle: const Text('Description 3'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your message',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {
                          // Add message to chat
                        },
                        // child: const Text('Send'),
                        icon: const Image(
                          image: AssetImage('assets/images/flew_logo.png'),
                          // size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
