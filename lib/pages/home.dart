import 'package:flutter/material.dart';
import 'package:m06_m07/data/data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Apps"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: ListData.apps.map((e) {
              index += 1;
              return Row(
                children: [
                  Text(index.toString()),
                  Expanded(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(e["cover"]),
                      ),
                      title: Text(e["nama"]),
                      subtitle: Text(e["pengembang"]),
                    ),
                  ),
                ],
              );
            }).toList(), // Menambahkan toList() untuk mengubah hasil map menjadi List<Widget>
          ),
        ),
      ),
    );
  }
}
