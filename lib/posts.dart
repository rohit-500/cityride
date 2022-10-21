import 'package:cityride/models/post_tile.dart';
import 'package:cityride/models/postmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  List<PostModel> post = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    post = Dummy().model;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: post.length,
        itemBuilder: (context, int index) {
          return PostTile(post: post[index]);
        });
  }
}
