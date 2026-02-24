class HistoryItem {
  String challenge;
  String status;
  String imagePath;

  HistoryItem({
    required this.challenge,
    required this.status,
    required this.imagePath
  });
}

var HistoryItemList = [
  HistoryItem(challenge: "Take a 30-minute walk.", status: "Completed", imagePath: "images/walk.jpg"),
  HistoryItem(challenge: "Read 20 pages of a book.", status: "Not Completed", imagePath: "images/read_book.jpg"),
  HistoryItem(challenge: "Meditate for 10 minutes.", status: "Completed", imagePath: "images/meditate.jpg"),
  HistoryItem(challenge: "Do a 15-minute workout.", status: "Not Completed", imagePath: "images/workout.jpg"),
  HistoryItem(challenge: "Drink 8 glasses of water", status: "Completed", imagePath: "images/drinkwater.jpg")
];