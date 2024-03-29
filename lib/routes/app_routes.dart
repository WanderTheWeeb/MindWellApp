import 'package:flutter/material.dart';
import 'package:mindwell/screens/chats/chat_screenAI.dart';
import 'package:mindwell/screens/chats/chat_screen.dart';
import 'package:mindwell/screens/home_screen.dart';
import 'package:mindwell/screens/intro/information_screen.dart';
import 'package:mindwell/screens/intro/introduction_screen.dart';
import 'package:mindwell/screens/login/login_screen.dart';
import 'package:mindwell/screens/principal_screen.dart';
import 'package:mindwell/screens/profiles/profile_screen.dart';
import 'package:mindwell/screens/profiles/psico_profile_screen.dart';
import 'package:mindwell/screens/psico_avalible_screen.dart';
import 'package:mindwell/screens/register/register_screen.dart';
import 'package:mindwell/screens/setting/help_settings_screen.dart';
import 'package:mindwell/screens/setting/language_settings_screen.dart';
import 'package:mindwell/screens/setting/notification_settings_screen.dart';
import 'package:mindwell/screens/setting/privacy_settings_screen.dart';
import 'package:mindwell/screens/setting/settings_screen.dart';
import '../screens/chats/chat_room_list.dart';
import '../screens/institutions/institution_profile.dart';
import '../screens/institutions/institution_screen.dart';
import '../screens/schedule/schedule_appointment_screen.dart';

Map<String, WidgetBuilder> appRoutes = {
  '/home': (BuildContext context) => const HomeScreen(),
  '/introduction': (BuildContext context) => const IntroductionScreen(),
  '/profile': (BuildContext context) => const ProfileScreen(),
  '/settings': (BuildContext context) => const SettingsScreen(),
  '/psico_profile': (BuildContext context) => const PsicoProfileScreen(),
  '/chat': (BuildContext context) => const ChatScreen(),
  '/login': (BuildContext context) => const LoginScreen(),
  '/register': (BuildContext context) => const RegisterScreen(),
  '/psicoList': (BuildContext context) => const PsicoAvalibleScreen(),
  '/information': (BuildContext context) => const InformationPage(),
  '/notification_settings': (BuildContext context) =>
      const NotificacionSettingsScreen(),
  '/language_settings': (BuildContext context) =>
      const LanguageSettingsScreen(),
  '/privacy_settings': (BuildContext context) => const PrivacySettingsScreen(),
  '/help': (BuildContext context) => const HelpSettingsScreen(),
  '/chat_list': (BuildContext context) => const ChatRoomList(),
  '/chat_AI': (BuildContext context) => const ChatScreenAI(),
  '/schedule_appointment': (BuildContext context) =>
      const ScheduleAppointmentScreen(),
  '/principal_screen': (BuildContext context) => const PrincipalScreen(),
  '/institution_screen': (BuildContext context) => const InstitutionScreen(),
  '/institution_profile': (BuildContext context) => const InstitutionProfile(),
};
