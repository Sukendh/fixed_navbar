import 'package:fixed_navbar/color_detail_page.dart';
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree(
      {super.key,
      required this.color,
      required this.title,
      this.materialIndex = 500});
  final MaterialColor color;
  final String title;
  final int materialIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text(
          '$title[$materialIndex]',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Three #3"),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ColorDetailPage(color: color, title: title)));
                },
                icon: const Icon(Icons.message))
          ],
        ),
      ),
    );
  }
}
