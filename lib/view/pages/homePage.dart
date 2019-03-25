import 'package:flutter/material.dart';

import 'package:handsns/models/post.dart';
import 'package:handsns/models/user.dart';
import 'package:handsns/view/widgets/timelineCell.dart';
import 'package:handsns/view/pages/postPage.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  final List<Post> posts = [
    Post(
        createdAt: DateTime.now(),
        user: User(
            name: "trtips",
            imageUri:
                "https://scontent-nrt1-1.cdninstagram.com/vp/8c0df3e769ac8aa7803e04beb6345b93/5D4AD97C/t51.2885-19/s150x150/21879533_1922371644645220_5917449826957524992_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com",
            thumbnailUri:
                "https://scontent-nrt1-1.cdninstagram.com/vp/8c0df3e769ac8aa7803e04beb6345b93/5D4AD97C/t51.2885-19/s150x150/21879533_1922371644645220_5917449826957524992_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com"),
        imageUrl:
            "https://scontent-nrt1-1.cdninstagram.com/vp/3ecb271e35d248e2e41173395dbfe4f1/5D0E53F2/t51.2885-15/sh0.08/e35/s640x640/36719939_505258803242160_7714489355061952512_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com",
        description: "I promise this is a Shiny Zapdos! ⚡️✨"),
    Post(
        createdAt: DateTime.now(),
        user: User(
            name: "trtips",
            imageUri:
                "https://scontent-nrt1-1.cdninstagram.com/vp/8c0df3e769ac8aa7803e04beb6345b93/5D4AD97C/t51.2885-19/s150x150/21879533_1922371644645220_5917449826957524992_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com",
            thumbnailUri:
                "https://scontent-nrt1-1.cdninstagram.com/vp/8c0df3e769ac8aa7803e04beb6345b93/5D4AD97C/t51.2885-19/s150x150/21879533_1922371644645220_5917449826957524992_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com"),
        imageUrl:
            "https://scontent-nrt1-1.cdninstagram.com/vp/515c400b71b089b014afe513adaddd39/5D4F3C91/t51.2885-15/sh0.08/e35/s640x640/36782240_1071326533021287_4828627943284539392_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com",
        description: "Made a few new friends at PokemonGOFest2018 today 👀"),
    Post(
        createdAt: DateTime.now(),
        user: User(
            name: "trtips",
            imageUri:
                "https://scontent-nrt1-1.cdninstagram.com/vp/8c0df3e769ac8aa7803e04beb6345b93/5D4AD97C/t51.2885-19/s150x150/21879533_1922371644645220_5917449826957524992_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com",
            thumbnailUri:
                "https://scontent-nrt1-1.cdninstagram.com/vp/8c0df3e769ac8aa7803e04beb6345b93/5D4AD97C/t51.2885-19/s150x150/21879533_1922371644645220_5917449826957524992_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com"),
        description: "Had some fun with green pokemons!",
        imageUrl:
            "https://scontent-nrt1-1.cdninstagram.com/vp/bdfb81c7a2d1870fc0e1b26149f44909/5D46D381/t51.2885-15/sh0.08/e35/s640x640/54510867_363760001132042_3034864983537737200_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        elevation: 2,
        title: SizedBox(
          child: Image.asset("assets/logoColor.png"),
          height: 26,
        ),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, int index) => TimelineCell(posts[index]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PostPage(),),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
