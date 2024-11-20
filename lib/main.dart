import 'package:flutter/material.dart';
import 'package:gs02_energiaverde/pages/eletroposto_page.dart';
import 'package:provider/provider.dart';
import 'package:gs02_energiaverde/provider/eletroposto_provider.dart';

// ALICE CALISTI DE SOUZA RM 95808
// HENRIQUE BENDZIUS SILVA RM 87348


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 
  
    runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => EletropostoProvider()..listEletroposto(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task APP',
      themeMode: ThemeMode.light,
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const EletropostoPage(),
    );
  }
}
