import 'package:flutter/material.dart';
import 'frame1.dart';
import 'frame2.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({super.key});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  int _selectedIndex = 0;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  String selectedEmotion = "Happy";

  List<Map<String, String>> journalEntries = [];

  Future<void> _pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        dateController.text = "${picked.day}-${picked.month}-${picked.year}";
      });
    }
  }

  void _saveEntry() {
    if (titleController.text.isNotEmpty &&
        contentController.text.isNotEmpty &&
        dateController.text.isNotEmpty) {
      setState(() {
        journalEntries.add({
          "title": titleController.text,
          "content": contentController.text,
          "date": dateController.text,
          "emotion": selectedEmotion,
        });

        titleController.clear();
        contentController.clear();
        dateController.clear();
        selectedEmotion = "Happy";
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Entry saved successfully!")),
      );
    }
  }

  final List<String> emotions = [
    "Happy",
    "Sad",
    "Angry",
    "Anxious",
    "Calm",
    "Excited",
    "Grateful",
    "Tired",
    "Confident",
    "Lonely",
    "Overwhelmed",
    "Peaceful",
    "Proud",
    "Relaxed",
    "Stressed",
    "Worried",
    "Hopeful",
    "Motivated",
    "Bored",
    "Loved",
  ];

  List<Widget> get _screens => [
    _buildHomeScreen(),
    JournelScree(entries: journalEntries),
    const MoodTrackerScreen(),
  ];

  Widget _buildHomeScreen() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 50,
            bottom: 20,
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xF16366F1),
                      Color(0xF17761F3),
                      Color(0xF1EC4899),
                    ],
                    stops: [0.0, 0.5, 1.0],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                padding: const EdgeInsets.all(20),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Good Afternoon !\nReady for some\n introspection ?",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Take a moment to reflect on your",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "thoughts and feelings",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF10B981),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Reflection Loop",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "${journalEntries.length} entries ready for reflection",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "New Entry",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              controller: titleController,
                              decoration: const InputDecoration(
                                labelText: "Title",
                                border: InputBorder.none,
                              ),
                            ),
                            TextFormField(
                              controller: contentController,
                              decoration: const InputDecoration(
                                labelText: "Content",
                                border: InputBorder.none,
                              ),
                            ),
                            const SizedBox(height: 10),

                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.calendar_month_outlined,
                                  ),
                                  onPressed: _pickDate,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: dateController,
                                    readOnly: true,
                                    onTap: _pickDate,
                                    decoration: const InputDecoration(
                                      labelText: "Date",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 10),

                            DropdownButtonFormField<String>(
                              initialValue: selectedEmotion,
                              decoration: const InputDecoration(
                                labelText: "Select Mood",
                                border: InputBorder.none,
                              ),
                              items: emotions.map((String mood) {
                                return DropdownMenuItem<String>(
                                  value: mood,
                                  child: Text(mood),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  selectedEmotion = value!;
                                });
                              },
                            ),

                            const SizedBox(height: 20),

                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: _saveEntry,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF10B981),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  minimumSize: const Size(double.infinity, 50),
                                ),
                                child: const Text(
                                  "Save Entry",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Main build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: "Journal",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_emotions_outlined),
            label: "Mood",
          ),
        ],
      ),
    );
  }
}
