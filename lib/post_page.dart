import 'package:flutter/material.dart';


class PostPage extends StatefulWidget {
  const PostPage({super.key});


  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text("New post"),
      //
      // ),
      body: SingleChildScrollView(
        child: Center(
          child: Text('Post something new...'),
        )
      )
    );

  }
}

