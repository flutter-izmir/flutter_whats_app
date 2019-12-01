import 'package:flutter/material.dart';
import 'package:flutter_whats_app/chat_model.dart';

void main() => runApp(WhatsApp());

class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> with TickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(length: chats.length, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: whatsAppTealGreen),
      home: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            controller: _controller,
            tabs: <Widget>[
              Tab(
                text: 'ARAMALAR',
              ),
              Tab(
                text: 'SOHBETLER',
              ),
              Tab(
                text: 'KİŞİLER',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: <Widget>[
            Center(
              child: Text('ARAMALAR'),
            ),
            ListView(
              children: chats.map((Chat chat) {
                return GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(chat.image),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(chat.name),
                              Text(
                                chat.lastMessage,
                                style: TextStyle(color: Colors.black54),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(chat.time)),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.1,
                        indent: 75,
                        endIndent: 15,
                        height: 1.1,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            Center(
              child: Text('KİŞİLER'),
            ),
          ],
        ),
      ),
    );
  }
}
