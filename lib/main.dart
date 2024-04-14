import 'package:flutter/material.dart';
import 'package:mindwell/app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://uenxnhikxfgpobbvhnei.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVlbnhuaGlreGZncG9iYnZobmVpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTI2MTUwNDEsImV4cCI6MjAyODE5MTA0MX0.xkvLy6_WxPX4BXj8BiV8sGrh3YpqRsoO_woNtFAtunE',
  );
  runApp(MindWell());
}

final supabase = Supabase.instance.client;
