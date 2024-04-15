import 'package:flutter/material.dart';
import 'package:mindwell/app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://qrxzwhcvwsdbthvibszw.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFyeHp3aGN2d3NkYnRodmlic3p3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMxMDE2OTcsImV4cCI6MjAyODY3NzY5N30.PwImmRy0W1-u_Hhum3uX8n1ctD1zMLtFhdcW9YUPX2c',
  );
  runApp(MindWell());
}

final supabase = Supabase.instance.client;
