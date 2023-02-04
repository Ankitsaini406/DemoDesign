import 'dart:developer';

import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  String location = ("https://goo.gl/maps/1jx6ziuG8zj77F5f7");
  ValueKey key = const ValueKey('key_0');
  bool isMarkdown = false;
  bool useWidgets = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Back"),
      ),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 2.5,
          child: EasyWebView(
            src: location,
            onLoaded: (controller) {
              log('$key: Loaded: $location');
            },
            isMarkdown: isMarkdown,
            convertToWidgets: useWidgets,
            key: key,
          ),
        ),
      ),
    );
  }
}
