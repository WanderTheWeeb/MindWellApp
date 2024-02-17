import 'package:flutter/material.dart';
import 'chats/chat_room_list.dart';
import 'psico_avalible_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: [
          const ChatRoomList(),
          const PsicoAvalibleScreen(),
        ][currentPageIndex],
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
              label: 'Chat',
              icon: Icon(Icons.chat_outlined),
              selectedIcon: Icon(Icons.chat),
            ),
            NavigationDestination(
              label: 'Psicólogos',
              icon: Icon(Icons.psychology_alt_outlined),
              selectedIcon: Icon(Icons.psychology_alt),
            ),
          ],
          selectedIndex: currentPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          animationDuration: const Duration(milliseconds: 300),
        ));
  }
}
