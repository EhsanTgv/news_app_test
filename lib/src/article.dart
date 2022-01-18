class Article {
  final String text;
  final String domain;
  final String by;
  final String age;
  final int score;
  final int commentCount;

  Article(
      {required this.text,
      required this.domain,
      required this.by,
      required this.age,
      required this.score,
      required this.commentCount});
}

final articles = [
  Article(
    text:
        "Circular Shok Acoustic Waves in Ionosphere Triggered by Launch of Formosat-5",
    domain: "https://www.google.com/",
    by: "zdw",
    age: "3 hours",
    score: 177,
    commentCount: 62,
  ),
  Article(
    text:
        "Circular Shok Acoustic Waves in Ionosphere Triggered by Launch of Formosat-5",
    domain: "google.com",
    by: "zdw",
    age: "3 hours",
    score: 177,
    commentCount: 62,
  ),
  Article(
    text:
        "Circular Shok Acoustic Waves in Ionosphere Triggered by Launch of Formosat-5",
    domain: "google.com",
    by: "zdw",
    age: "3 hours",
    score: 177,
    commentCount: 62,
  ),
  Article(
    text:
        "Circular Shok Acoustic Waves in Ionosphere Triggered by Launch of Formosat-5",
    domain: "google.com",
    by: "zdw",
    age: "3 hours",
    score: 177,
    commentCount: 62,
  ),
];
