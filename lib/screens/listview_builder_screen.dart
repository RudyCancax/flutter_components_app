import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> images = [1, 2, 3, 4, 5];
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        add5images();
        setState(() {});
      }
    });
  }

  add5images() {
    final lastID = images.last;
    images.addAll([1, 2, 3, 4, 5].map((image) => lastID + image));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
          controller: scrollController,
          itemCount: images.length,
          itemBuilder: (BuildContext context, index) {
            return FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/imgs/pikachu.gif'),
                image: NetworkImage(
                    'https://picsum.photos/500/300?image=${images[index]}'));
          },
        ),
      ),
    );
  }
}
