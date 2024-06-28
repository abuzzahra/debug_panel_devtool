import 'package:debug_panel_devtool/src/pages/debug_panel_page.dart';
import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/material.dart';

void main() async => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const DevToolsExtension(
      child: DebugPanelPage(),
    );
  }
}
