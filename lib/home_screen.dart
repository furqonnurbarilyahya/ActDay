import 'package:actday/add_challenge_screen.dart';
import 'package:actday/history_item.dart';
import 'package:actday/history_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<HistoryItem> historyItemList = HistoryItemList;

  int? currentIndex;

  @override
  void initState() {
    super.initState();
    if (historyItemList.isNotEmpty) {
      currentIndex = HistoryItemList.length - 1;
    }
  }

  Widget build(BuildContext context) {
    final currentItem =
        currentIndex != null ? historyItemList[currentIndex!] : null;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "Daily Challenge",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Your challenge for today",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 30),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Color.fromARGB(255, 214, 237, 255),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20.0),
                    onTap: () {
                      // Aksi ketika card di klik
                    },
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.task_alt_outlined, size: 100),
                          SizedBox(height: 12),
                          Text(
                            currentItem?.challenge ?? "No challenge yet",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            currentItem?.status ?? "",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                OutlinedButton(
                  onPressed:
                      currentIndex == null
                          ? null
                          : () {
                            //Aksi ketika diklik
                            if (currentIndex == null) return;
                            setState(() {
                              historyItemList[currentIndex!].status =
                                  "Completed";
                              currentIndex = null;
                            });
                            showSnackbar();
                          },
                  child: Text("Mark as Completed"),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  child: Text("Generate New Challenge"),
                  onPressed: () async {
                    //Aksi ketika diklik
                    final newItem = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddChallengeScreen(),
                      ),
                    );
                    if (newItem != null) {
                      setState(() {
                        historyItemList.add(newItem);
                        currentIndex = historyItemList.length - 1;
                      });
                    }
                  },
                ),
                SizedBox(height: 16),
                TextButton(
                  child: Text("View Challenge History >"),
                  onPressed: () {
                    //Aksi ketika diklik
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HistoryScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Challenge successfully updated"),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
