import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<Map<String, String>> chats = [
    {"name": "Vikash", "message": "Hey, how are you?", "time": "10:45 AM"},
    {"name": "Jadu Sign", "message": "See you tomorrow!", "time": "09:30 AM"},
    {"name": "Rompachik", "message": "Typing...", "time": "Yesterday"},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            "WhatsApp",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(icon: const Icon(Icons.camera_alt), onPressed: () {}),
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final chat = chats[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    child: Text(
                      (chat["name"] != null && chat["name"]!.isNotEmpty)
                          ? chat["name"]![0].toUpperCase()
                          : "?",
                    ),
                  ),
                  title: Text(
                    chat["name"] ?? "Unknown",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(chat["message"] ?? ""),
                  trailing: Text(
                    chat["time"] ?? "",
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  onTap: () {},
                );
              },
            ),

            const Center(child: Text("Coming Soon")),
            const Center(child: Text("Coming Soon")),
          ],
        ),
      ),
    );
  }
}
