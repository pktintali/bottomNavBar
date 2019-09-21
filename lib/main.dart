import 'package:flutter/material.dart';
import 'fab_bottom_app_bar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devbook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Devbook'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  String _lastSelected = 'TAB: 0';

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
  }

  @override
  Widget build(BuildContext context) {
    if(_lastSelected == 'TAB: 1')
    {
      return news();
    }
    if (_lastSelected == 'TAB: 2') {
      return fav();
    }
    if (_lastSelected == 'TAB: 3') {
      return blog();
    }
    if (_lastSelected == 'TAB: 4') {
      return about();
    }
    else
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Icon(
            Icons.home,
            size: 200,
            color: Colors.green,
          ),
      ),
      bottomNavigationBar: FABBottomAppBar(
        color: Colors.grey,
        selectedColor: Colors.red,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
          FABBottomAppBarItem(iconData: Icons.rss_feed, text: 'News'),
          FABBottomAppBarItem(iconData: Icons.favorite, text: 'Fav'),
          FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Blog'),
          FABBottomAppBarItem(iconData: Icons.info, text: 'About'),
        ],
      ),
    );
  }


  Widget news()
{
  return Scaffold(
    appBar: AppBar(
          title: Text('News'),
        ),
        body: Center(
          child: Icon(
            Icons.rss_feed,
            size: 200,
            color: Colors.orange,
          ),
        ),
        bottomNavigationBar: FABBottomAppBar(
          color: Colors.grey,
          selectedColor: Colors.red,
          notchedShape: CircularNotchedRectangle(),
          onTabSelected: _selectedTab,
          items: [
            FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
            FABBottomAppBarItem(iconData: Icons.rss_feed, text: 'News'),
            FABBottomAppBarItem(iconData: Icons.favorite, text: 'Fav'),
            FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Blog'),
          FABBottomAppBarItem(iconData: Icons.info, text: 'About'),
          ],
        ),
  );

}

Widget fav()
{
  return Scaffold(
        appBar: AppBar(
          title: Text('Favourite'),
        ),
        body: Center(
          child: Icon(
            Icons.favorite,
            size: 200,
            color: Colors.red,
          ),
        ),
        bottomNavigationBar: FABBottomAppBar(
          color: Colors.grey,
          selectedColor: Colors.red,
          notchedShape: CircularNotchedRectangle(),
          onTabSelected: _selectedTab,
          items: [
            FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
            FABBottomAppBarItem(iconData: Icons.rss_feed, text: 'News'),
            FABBottomAppBarItem(iconData: Icons.favorite, text: 'Fav'),
            FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Blog'),
          FABBottomAppBarItem(iconData: Icons.info, text: 'About'),
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
}

Widget blog()
{
  return Scaffold(
    appBar: AppBar(
          title: Text('Blog'),
        ),
        body: Center(
          child: Icon(
            Icons.dashboard,
            size: 200,
            color: Colors.teal,
          ),
        ),
        bottomNavigationBar: FABBottomAppBar(
          color: Colors.grey,
          selectedColor: Colors.red,
          notchedShape: CircularNotchedRectangle(),
          onTabSelected: _selectedTab,
          items: [
            FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
            FABBottomAppBarItem(iconData: Icons.rss_feed, text: 'News'),
            FABBottomAppBarItem(iconData: Icons.favorite, text: 'Fav'),
            FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Blog'),
          FABBottomAppBarItem(iconData: Icons.info, text: 'About'),
          ],
        ),
  );

}

Widget about()
{
  return Scaffold(
        appBar: AppBar(
          title: Text('About'),
        ),
        body: Center(
          child: Icon(
            Icons.info,
            size: 200,
            color: Colors.purple,
          ),
        ),
        bottomNavigationBar: FABBottomAppBar(
          color: Colors.grey,
          selectedColor: Colors.red,
          notchedShape: CircularNotchedRectangle(),
          onTabSelected: _selectedTab,
          items: [
            FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
            FABBottomAppBarItem(iconData: Icons.rss_feed, text: 'News'),
            FABBottomAppBarItem(iconData: Icons.favorite, text: 'Fav'),
            FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Blog'),
          FABBottomAppBarItem(iconData: Icons.info, text: 'About'),
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
}
}
