import 'package:flutter/material.dart';
import 'package:mindwell/src/view/screens/home/principal_screen.dart';
import '../chats/chat_room_list.dart';
import '../institutions/institution_screen.dart';
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
          const PrincipalScreen(),
          const PsicoAvalibleScreen(),
          const ChatRoomList(),
          const InstitutionScreen(),
        ][currentPageIndex],
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
              label: 'Home',
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              label: 'Edoardo',
              icon: Icon(Icons.psychology_alt_outlined),
              selectedIcon: Icon(Icons.psychology_alt),
            ),
            NavigationDestination(
              label: 'Chats',
              icon: Icon(Icons.chat_outlined),
              selectedIcon: Icon(Icons.chat),
            ),
            NavigationDestination(
              label: 'Institucion',
              icon: Icon(Icons.corporate_fare_outlined),
              selectedIcon: Icon(Icons.corporate_fare),
            ),

            NavigationDestination(
              label: 'Ayuda',
              icon: Icon(Icons.corporate_fare_outlined),
              selectedIcon: Icon(Icons.corporate_fare),
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
