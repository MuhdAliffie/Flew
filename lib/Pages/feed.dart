import 'package:flew/Pages/chat.dart';
import 'package:flew/Pages/market.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  FeedPageState createState() => FeedPageState();
}

class FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Text('Feed'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatPage()));
                  },
                  child: const Text('Chat'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MarketPage()));
                  },
                  child: const Text('Market'),
                ),
              ],
            ),
            SizedBox(
              height: 300,
              width: 400,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: const Text('Item 1'),
                    subtitle: const Text('Description 1'),
                  ),
                  ListTile(
                    title: const Text('Item 2'),
                    subtitle: const Text('Description 2'),
                  ),
                  ListTile(
                    title: const Text('Item 3'),
                    subtitle: const Text('Description 3'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
