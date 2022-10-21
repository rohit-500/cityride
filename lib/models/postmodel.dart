class PostModel {
  String? dp;
  String? handle;
  String? location;
  String? posttime;
  String? textcontent;
  String? imageurl;
  int likes = 0;
  int comments = 0;

  PostModel(
      {this.dp,
      this.handle,
      this.location,
      this.posttime,
      this.textcontent,
      this.imageurl,
      required this.likes,
      required this.comments});
}

class Dummy {
  List<PostModel> _model = [
    PostModel(
        dp: 'assets/dp1.webp',
        handle: 'mekrisha',
        location: 'chandkheda',
        posttime: '1 hour and 31 min ago',
        imageurl: 'assets/dog.jpg',
        textcontent:
            'Looking for good animal doctor in chandkheda, anybody can suggest??',
        likes: 20,
        comments: 10),
    PostModel(
        dp: 'assets/dp1.webp',
        handle: 'dhruv_20',
        location: 'Jantanagar',
        posttime: '10 mins ago',
        textcontent:
            'me and my few friends are going for food kit distribution to poor child tomorrow, if anybody wants to join us. Do let me know. Tomorrow at 09:30am. We all will meet at GNK ground.',
        likes: 4,
        comments: 3)
  ];
  List<PostModel> get model => _model;
}
