import 'package:flutter/material.dart';
import 'package:actday/history_item.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Challenge History")),
      body: ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemBuilder: (context, index) {
          final HistoryItem history = HistoryItemList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HistoryScreen();
                  },
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    history.status == "Completed"
                        ? Icon(
                          Icons.check_circle,
                          color: Color.fromARGB(255, 1, 169, 91),
                          size: 30.0,
                        )
                        : Icon(
                          Icons.clear,
                          color: Color.fromARGB(255, 219, 3, 3),
                          size: 30.0,
                        ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text(
                            history.challenge,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            history.status,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Icon(Icons.arrow_forward_sharp),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: HistoryItemList.length,
      ),
    );
  }
}
