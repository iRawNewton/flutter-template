import 'package:flutter/material.dart';
import 'package:flutter_folder_structure/res/dimens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var x = ScreenSize.width(context);
    var y = ScreenSize.height(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter Templates'),
        ),
        body: Container(
          color: Colors.red.shade50,
          child: Column(
            children: [
              GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                ),
                children: [
                  Container(
                    // width: x * 0.1,
                    height: y * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Text('d'),
                  ),
                  Container(
                    // width: x * 0.1,
                    height: y * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Text('d'),
                  ),
                  Container(
                    // width: x * 0.1,
                    height: y * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Text('d'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
