import 'package:flutter/material.dart';
import 'package:handsns/models/user.dart';
import 'package:handsns/models/post.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage(this.user);

  final User user;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _scrollController = ScrollController();
  double _profileImageScale = 3;

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
  void initState() {
    // _scrollController.addListener(() {
    //   final double offset = _scrollController.offset;
    //   print(offset);
    //   final double scaleFactor = (86 - offset) < 0 ? 0 : (86 - offset);
    //   _profileImageScale = 1 + scaleFactor * 2 / 86;
    //   setState(() {});
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(user.name),
      // ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          // Row(
          //   children: <Widget>[
          //     CachedNetworkImage(
          //       imageUrl: user.imageUri,
          //       fit: BoxFit.cover,
          //       width: 80,
          //       height: 80,
          //     ),
          //   ],
          // ),
          SliverAppBar(
            title: Text(widget.user.name),
            backgroundColor: Colors.white,
            pinned: true,
            // expandedHeight: 140,
          ),
          // SliverFixedExtentList(
          //   itemExtent: 50.0,
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         color: Colors.lightBlue[100 * (index % 9)],
          //         child: Text('list item $index'),
          //       );
          //     },
          //   ),
          // ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Row(
                    children: <Widget>[
                      ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: widget.user.imageUri,
                          width: 60,
                          height: 60,
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      stats(title: "Posts", count: 74),
                      stats(title: "Followers", count: 20),
                      stats(title: "Following", count: 21),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Trainer tips nick. I come from youtube and I upload videos everyday. Check out my videos here."),
                )
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return CachedNetworkImage(
                  imageUrl: posts[index % 3].imageUrl,
                  fit: BoxFit.cover,
                );
              },
              // childCount: posts.length,
              childCount: 30,
            ),
          ),
        ],
      ),
      // GridView.builder(
      //   itemCount: posts.length,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
      //   itemBuilder: (BuildContext context, int index) {
      //     return CachedNetworkImage(
      //       fit: BoxFit.cover,
      //       imageUrl: posts[index].imageUrl,
      //     );
      //   },
      // ),
    );
  }

  Widget stats({String title, int count}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(
            count.toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(title),
        ],
      ),
    );
  }
}
