import 'package:flutter/material.dart';
import 'package:flutter_one/search_page.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const int itemCount = 20;
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: itemCount,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            leading: const Icon(Icons.ac_unit),
            trailing: const Icon(Icons.drag_handle),
            subtitle: const Text("Subtitle"),
            title: Text("Item ${(index + 1)}"),
          );
        });
  }
}

