import 'package:components_app/screens/list_view_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
          backgroundColor: Colors.indigo,
          centerTitle: true,
          toolbarHeight: 50,
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400),
        ),
        extendBodyBehindAppBar: true,
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                title: const Text("Heyouuu"),
                leading: const Icon(
                  Icons.account_box_rounded,
                  color: Colors.indigo,
                ),
                onTap: () {
                  // Option 1
                  // final route = MaterialPageRoute(
                  //     builder: (context) => const ListViewScreen());
                  // Navigator.push(context, route);

                  // Option 2 with specific route
                  Navigator.pushNamed(context, 'listview');
                }),
            separatorBuilder: (context, index) => const Spacer(),
            itemCount: 15));
  }
}
