import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:agua_para_todos/pages/source_page.dart';
import 'package:agua_para_todos/repositories/source_repository.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterConfig.loadEnvVariables();

  runApp(
    ChangeNotifierProvider<SourcesRepository>(
      create: (_) => SourcesRepository(),
      child: SourceApp(),
    ),
  );
}
class SourceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: SourcePage(),
    );
  }
}