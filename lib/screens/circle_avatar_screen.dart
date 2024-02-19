import 'package:flutter/material.dart';

class CircleAvatarScreen extends StatelessWidget {
  const CircleAvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CircleAvatarScreen'), actions: [
        Container(
          padding: const EdgeInsets.only(right: 5),
          child: CircleAvatar(
            backgroundColor: Colors.indigo[900],
            child: const Text("YN", style: TextStyle(color: Colors.white)),
          ),
        )
      ]),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 100,
        backgroundImage: NetworkImage(
            "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=826&t=st=1708369972~exp=1708370572~hmac=d3ca18b5198528a0485373fa09fb2c78fdf67a5b21ac565cd9072d66fd54a14f"),
      )),
    );
  }
}
