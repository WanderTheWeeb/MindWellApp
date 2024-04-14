import 'package:go_router/go_router.dart';

import 'package:mindwell/src/view/screen_barrel.dart';

import 'app_routes.dart';

GoRouter appRoutes = GoRouter(
  routes: [
    //home
    GoRoute(path: Routes.home, builder: (context, state) => const HomeScreen()),
    GoRoute(
        path: Routes.principalScreen,
        builder: (context, state) => const PrincipalScreen()),
    GoRoute(
        path: Routes.psicoList,
        builder: (context, state) => const PsicoAvalibleScreen()),

    //auth
    GoRoute(
        path: Routes.login, builder: (context, state) => const LoginScreen()),
    GoRoute(
        path: Routes.register,
        builder: (context, state) => const RegisterScreen()),

    //chats
    GoRoute(
        path: Routes.chatRoomList,
        builder: (context, state) => const ChatRoomList()),
    GoRoute(path: Routes.chat, builder: (context, state) => const ChatScreen()),
    GoRoute(
        path: Routes.chatAI, builder: (context, state) => const ChatScreenAI()),

    //settings
    GoRoute(
        path: Routes.settingsScreen,
        builder: (context, state) => const SettingsScreen()),
    GoRoute(
        path: Routes.profileSettings,
        builder: (context, state) => const PsicoAvalibleScreen()),
    GoRoute(
        path: Routes.settings,
        builder: (context, state) => const SettingsScreen()),
    GoRoute(
        path: Routes.helpSettings,
        builder: (context, state) => const HelpSettingsScreen()),
    GoRoute(
        path: Routes.languageSettings,
        builder: (context, state) => const LanguageSettingsScreen()),
    GoRoute(
        path: Routes.privacySettings,
        builder: (context, state) => const PrivacySettingsScreen()),
    GoRoute(
        path: Routes.notificationSettings,
        builder: (context, state) => const NotificacionSettingsScreen()),

    //institution
    GoRoute(
        path: Routes.institutionScreen,
        builder: (context, state) => const InstitutionScreen()),
    GoRoute(
        path: Routes.institutionProfile,
        builder: (context, state) => const InstitutionProfile()),

    //profile
    GoRoute(
        path: Routes.profile,
        builder: (context, state) => const ProfileScreen()),
    GoRoute(
        path: Routes.psicoProfile,
        builder: (context, state) => const PsicoProfileScreen()),

    //schedule
    GoRoute(
        path: Routes.scheduleAppointment,
        builder: (context, state) => const ScheduleAppointmentScreen()),

    //intro
    GoRoute(
        path: Routes.information,
        builder: (context, state) => const Aclaraciones()),
    GoRoute(
        path: Routes.information,
        builder: (context, state) => const Bienvenida()),
    GoRoute(
        path: Routes.information,
        builder: (context, state) => const InformationPage()),
    GoRoute(
        path: Routes.information,
        builder: (context, state) => const IntroductionScreen()),
    GoRoute(
        path: Routes.information,
        builder: (context, state) => const TerminosCondiciones()),
  ],
);
