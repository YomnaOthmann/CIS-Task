class PostModel {
  final String image;
  final String title;
  final String date;
  final String time;
  final String description;

  PostModel({
    required this.image,
    required this.title,
    required this.date,
    required this.time,
    required this.description,
  });
}

const String imgPath = "assets/images";

List<PostModel> posts = [
  PostModel(
      image: "$imgPath/posts_images/",
      title: "7th Generation Reqruitment",
      date: "",
      time: "",
      description: "")
];
