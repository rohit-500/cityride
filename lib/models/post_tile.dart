import 'package:cityride/models/postmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostTile extends StatefulWidget {
  PostModel post;
  PostTile({required this.post, super.key});

  @override
  State<PostTile> createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  late PostModel post;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    post = widget.post;
  }

  bool liked = false;
  bool bookmark = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(
              (post.dp ?? ''),
            ),
          ),
          title: Row(children: [
            Text("@${post.handle ?? ''}",
                style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(" in ${post.location}")
          ]),
          subtitle: Text("${post.posttime}"),
          trailing: IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            post.textcontent ?? '',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        post.imageurl == null
            ? SizedBox()
            : Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: Image.asset(
                    post.imageurl ?? '',
                    fit: BoxFit.cover,
                    height: 200,
                    width: 400,
                  ),
                ),
              ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 0),
          child: Divider(
            height: 10,
            color: Color.fromARGB(255, 11, 94, 162),
          ),
        ),
        Row(
          children: [
            TextButton.icon(
              onPressed: () {
                setState(() {
                  liked = !liked;
                });
              },
              icon: !liked
                  ? Icon(Icons.favorite_outline)
                  : Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
              label: Text('${liked ? post.likes + 1 : post.likes} likes'),
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.comment),
                label: Text('${post.comments} comments')),
            Spacer(),
            IconButton(
              onPressed: () {
                showModalBottomSheet<void>(
                    backgroundColor: Colors.green,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 80,
                        child: Center(
                          child: Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: IconButton(
                                    icon: Icon(Icons.whatsapp),
                                    onPressed: () {},
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: IconButton(
                                  icon: Icon(Icons.facebook),
                                  onPressed: () {},
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: IconButton(
                                  icon: Icon(Icons.mail),
                                  onPressed: () {},
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                icon: Icon(Icons.more_horiz),
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              icon: Icon(Icons.share),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    bookmark = !bookmark;
                  });
                },
                icon: !bookmark
                    ? Icon(Icons.bookmark_border_outlined)
                    : Icon(Icons.bookmark)),
          ],
        )
      ]),
    );
  }
}
