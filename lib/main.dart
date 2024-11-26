import 'package:flutter/material.dart';
import 'package:flutter_image_picker/pick_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImagePage(),
    );
  }
}

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Picker"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade200,
            borderRadius: const BorderRadius.all(
              Radius.circular(15), // Proper penggunaan BorderRadius.all
            ),
          ),
          child: TextButton(
              onPressed: () async {
                await pickImage();
              },
              child: const Text("Pick Image")),
        ),
      ),
    );
  }
}
