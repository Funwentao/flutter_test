import 'package:flutter/material.dart';

class Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(children: <Widget>[
        new Expanded(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  'Oeschinen Lake Campground',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: new TextStyle(
                  color: Colors.grey[500],
                )
              )
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41')
      ],),
    );
    Column bulidButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color
              )
            ),
          )
        ],
      );
    }

    Widget buttonSection = new Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          bulidButtonColumn(Icons.call, 'CALL'),
          bulidButtonColumn(Icons.near_me, 'ROUTE'),
          bulidButtonColumn(Icons.share, 'SHARE')
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
         '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true
      )
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('page'),
      ),
      body: ListView(
       children: <Widget>[
          titleSection,
          buttonSection,
          textSection
        ], 
      )
    );
    
  //   return new MaterialApp(
  //     title: 'Page',
  //     theme: new ThemeData(
  //       primarySwatch: Colors.blue
  //     ),
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text('Page'),
  //       ),
  //       body: new ListView(
  //         children: <Widget>[
  //           titleSection,
  //           buttonSection,
  //           textSection
  //         ],
  //       ),
  //     ),
  //   );
  }
}
