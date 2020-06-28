import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('homework2')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Our Team',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BuildButtonWidget(
                    'images/harrys.jpg', "Adams G", "Executive officer"),
                BuildButtonWidget('images/harry1.jpg', "Betty L", "Marketing"),
                BuildButtonWidget(
                    'images/harry2.jpg', "Roberts", "Bussiness Analyst")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BuildButtonWidget(
                    'images/harrys.jpg', "Miller W", "UX Desinger"),
                BuildButtonWidget(
                    'images/harry1.jpg', "Kevin Jhon", "Web Developer"),
                BuildButtonWidget('images/harry2.jpg', "Laura M", "Mobile dev")
              ],
            ),
            TextTitleWidget(),
            TextWidget()
          ],
        ),
      ),
    );
  }
}

Column BuildButtonWidget(String image, String name, String label) {
  return Column(
    children: <Widget>[
      Image(
        image: AssetImage(image),
        width: 50,
        height: 50,
      ),
      Text(name),
      Text(label),
    ],
  );
}

class TextTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Mission',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'When you want to write a paragraph, most of the time you should start off by coming up with an idea. After you have your idea or topic, you can start thinking about different things you can do to expand upon that idea. You should only finish the paragraph when you’ve finished covering everything you want about that idea.',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      ),
    );
  }
}
