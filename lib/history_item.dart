class HistoryItem {
  String challenge;
  String status;

  HistoryItem({
    required this.challenge,
    required this.status
  });
}

var HistoryItemList = [
  HistoryItem(challenge: "Drink 8 glasses of water & take a 30-minute walk.", status: "Completed"),
  HistoryItem(challenge: "Read 20 pages of a book.", status: "Not Completed"),
  HistoryItem(challenge: "Meditate for 10 minutes.", status: "Completed"),
  HistoryItem(challenge: "Do a 15-minute workout.", status: "Not Completed"),
  HistoryItem(challenge: "Read 20 pages of a book.", status: "Completed")
];