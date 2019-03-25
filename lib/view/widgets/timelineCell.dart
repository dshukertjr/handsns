import 'package:flutter/material.dart';
import 'package:handsns/models/post.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:handsns/view/pages/profilePage.dart';

class TimelineCell extends StatelessWidget {
  TimelineCell(this.post);
  final Post post;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Material(
                  child: InkWell(
                    onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage(post.user),),
          );
                    },
                    child: CachedNetworkImage(
                      width: 50,
                      height: 50,
                      imageUrl: post.user.thumbnailUri,
                      placeholder: (context, url) => Center(
                            child: CircularProgressIndicator(),
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Text(
                post.user.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "${post.createdAt.year}/${post.createdAt.month}/${post.createdAt.day}"),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            post.description,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        CachedNetworkImage(
          imageUrl: post.imageUrl,
          placeholder: (context, url) => Center(
                child: CircularProgressIndicator(),
              ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(
              onPressed: () {
                print("comment pressed");
              },
              icon: Icon(Icons.chat_bubble_outline),
            ),
            IconButton(
              onPressed: () {
                print("like pressed");
              },
              icon: Icon(Icons.favorite_border),
            ),
          ],
        ),
      ],
    );
  }
}
