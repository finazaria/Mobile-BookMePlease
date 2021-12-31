import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import '../comments_model.dart';
import '../repository.dart';
import '../main.dart';

String book;

class CommentMe extends StatefulWidget {
  static const routeName = '/comments';
  String bookId;

  CommentMe(this.bookId) {
    print("i got you: " + this.bookId);
    book = bookId;
  }

  @override
  _CommentMeState createState() => _CommentMeState();
}

class _CommentMeState extends State<CommentMe> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List<Comments> listComments = [];
  RepoUhuy repo = RepoUhuy();

  getData() async {
    listComments = await repo.getData(book);
  }

  @override
  void initState() {
    getData();
    print("masuk init state");
    super.initState();
  }

  List filedata = [
    {
      'name': 'Adeleye Ayodeji',
      'pic': 'https://picsum.photos/300/30',
      'message': 'I love to code'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
  ];

  Widget commentChild() {
    return ListView(
      children: [
        for (int i = 0; i < listComments.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(filedata[i]['pic'] + "$i")),
                ),
              ),
              title: Text(
                listComments[i].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(listComments[i].comment),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comment Page"),
        backgroundColor: bmpYellow,
      ),
      body: Container(
        child: CommentBox(
          userImage:
              "https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400",
          child: commentChild(),
          labelText: 'Write a comment...',
          withBorder: false,
          errorText: 'Comment cannot be blank',
          sendButtonMethod: () {
            if (formKey.currentState.validate()) {
              print(commentController.text);
              setState(() {
                var value = {
                  'name': 'New User',
                  'created_on': '211101',
                  'book': 7,
                  // 'pic':
                  //     'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
                  'comment': commentController.text
                };
                listComments.insert(0, Comments.fromJson(value));
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
        ),
      ),
    );
  }
}
