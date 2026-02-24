class HistoryItem {
  String challenge;
  String description;
  String status;
  String imagePath;

  HistoryItem({
    required this.challenge,
    required this.description,
    required this.status,
    required this.imagePath
  });
}

var HistoryItemList = [
  HistoryItem(
    challenge: "Take a 30-minute walk.",
    description:
        "Spend 30 minutes walking at a comfortable pace, either outdoors or indoors. "
        "This activity helps refresh your mind, improve circulation, and boost overall mood. "
        "You can walk in a park, around your neighborhood, or even inside your home.",
    status: "Completed",
    imagePath: "images/walk.jpg",
  ),

  HistoryItem(
    challenge: "Read 20 pages of a book.",
    description:
        "Take some quiet time to read at least 20 pages of a book you enjoy. "
        "Reading helps improve focus, expand knowledge, and reduce stress. "
        "Choose a comfortable place and try to read without distractions.",
    status: "Not Completed",
    imagePath: "images/read_book.jpg",
  ),

  HistoryItem(
    challenge: "Meditate for 10 minutes.",
    description:
        "Sit comfortably and meditate for 10 minutes by focusing on your breathing. "
        "Meditation helps calm the mind, reduce anxiety, and improve mental clarity. "
        "You can close your eyes and let thoughts pass without judgment.",
    status: "Completed",
    imagePath: "images/meditate.jpg",
  ),

  HistoryItem(
    challenge: "Do a 15-minute workout.",
    description:
        "Perform a simple workout session for 15 minutes, such as stretching, cardio, or bodyweight exercises. "
        "This challenge helps increase energy levels and strengthen your body. "
        "Adjust the intensity based on your comfort level.",
    status: "Not Completed",
    imagePath: "images/workout.jpg",
  ),

  HistoryItem(
    challenge: "Drink 8 glasses of water",
    description:
        "Drink at least 8 glasses of water throughout the day to stay hydrated. "
        "Proper hydration helps maintain body functions, improve concentration, and boost energy. "
        "You can spread the intake evenly from morning until night.",
    status: "Completed",
    imagePath: "images/drink_water.jpg",
  ),
];