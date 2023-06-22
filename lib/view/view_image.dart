
import 'dart:io';

import 'package:cam_app/view/gallery_screen.dart';
import 'package:cam_app/view/home.dart';
import 'package:flutter/material.dart';

class ViewImage extends StatelessWidget {
  const ViewImage({super.key, required this.imgIndex});
  final int imgIndex;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Gallery'),
          actions: [
            IconButton(
                onPressed: () {
                  delete(imgIndex);
                
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.delete))
          ],
        ),
        body: Center(
          child: Image.file(
            File(galleryNotifier.value[imgIndex]),
          ),
        ));
  }
  
  
}