import 'package:flutter/material.dart';
import 'package:mindwell/routes/routes.dart';
import 'package:mindwell/widgets/pop_menu.dart';

class ChatRoomList extends StatelessWidget {
  const ChatRoomList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Chat Rooms'),
          actions: const [AppBarAction()],
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: const CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    'https://imgs.search.brave.com/vopwCdSo8d6xf1BCesX5pxJL25NTz5MhyfxXNdn4Q2c/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTEy/NzYzNzExNy9waG90/by9taWxhbi1pdGFs/eS1hbmEtZGUtYXJt/YXMtYXR0ZW5kcy1j/YW1wYXJpLXJlZC1k/aWFyaWVzLTIwMTkt/cHJlc3MtY29uZmVy/ZW5jZS1hdC1jaW5l/bWEtYW50ZW8tb24u/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PXIzYy0xRU84eVdx/NGZGbndGS2JHckZf/d2ZxeGJXVmlHR3Ns/eEVhZ2N1RDg9'),
              ),
              title: const Text('Chat Room '),
              subtitle: const Text('This is a chat room'),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.chat);
              },
            );
          },
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.chatAI);
          },
          child: const Icon(Icons.message),
        ));
  }
}
