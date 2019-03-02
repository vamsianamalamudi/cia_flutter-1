import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  //List<Item> itemList;

  @override
  Widget build(BuildContext context) {
    // itemList = _itemList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
      ),
      body:GridView.count(

      crossAxisCount: 2,
    padding: EdgeInsets.all(1.0),

    children: [
      Card(
        borderOnForeground: true,
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),

        ),
        child: Stack(
            children: <Widget> [
     /*   new Image.asset(
        'assets/images/movie_banner_1.png'),*/
              Center(child: Text("No idea",style: TextStyle(inherit: true))),
            ]
        ),
      ),
      Card(
        borderOnForeground: true,
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),

        ),
        child: Stack(
            children: <Widget> [
              /*   new Image.asset(
        'assets/images/movie_banner_1.png'),*/
              Center(child: Text("No idea",style: TextStyle(inherit: true))),
            ]
        ),
      ),
      Card(
        borderOnForeground: true,
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),

        ),
        child: Stack(
            children: <Widget> [
              /*   new Image.asset(
        'assets/images/movie_banner_1.png'),*/
              Center(child: Text("No idea",style: TextStyle(inherit: true))),
            ]
        ),
      ),
      Card(
        borderOnForeground: true,
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),

        ),
        child: Stack(
            children: <Widget> [
              /*   new Image.asset(
        'assets/images/movie_banner_1.png'),*/
              Center(child: Text("No idea",style: TextStyle(inherit: true))),
            ]
        ),
      ),




    ])

    );
  }



  Widget _gridView() {
    return GridView.count(

      crossAxisCount: 2,
      padding: EdgeInsets.all(2.0),

      children: [
        Card(
          color: Colors.black,
          borderOnForeground: true,
          clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[new Container(
            child: new Image.asset(
              'assets/mages/logocia.jpg',
              height: 60.0,
              fit: BoxFit.cover,
            ),
          ),
          new Container(
            child: new Text('long information text'),
          ),           /* new Padding(
              padding: EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'dvsdv',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(

                      color: Color(0xFFD73C29),
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                ],
              ),
            ),*/
          ],
        ),
      ),
        Card(
          color: Colors.red,
          margin: EdgeInsets.fromLTRB(10, 20, 20, 10),
          elevation: 1.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.0),

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /* new Padding(
              padding: EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'dvsdv',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(

                      color: Color(0xFFD73C29),
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                ],
              ),
            ),*/
            ],
          ),
        ),
        new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Card(
                child: new Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Container(
                          child: new Image.asset(
                            'assets/images/logo.png',
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        new Container(
                          child: new Text('long information text'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),



      ],
    );
  }

}
/*

  Widget _gridView() {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(4.0),
      childAspectRatio: 8.0 / 9.0,
      children: itemList
          .map(
            (Item) => ItemList(item: Item),
          )
          .toList(),
    );
  }

  List<Item> _itemList() {
    return [
      Item(
        id: 0,
        name: 'Avengers: Infinity War',
        category: 'Action, Adventure, Fantasy',
        desc: 'The Avengers and their allies must be willing '
            'to sacrifice all in an attempt to defeat '
            'the powerful Thanos before his blitz of '
            'devastation and ruin puts an end to the universe.'
            '\nAs the Avengers and their allies have continued '
            'to protect the world from threats too large for '
            'any one hero to handle, a danger has emerged '
            'from the cosmic shadows: Thanos.',
        rating: 8.7,
        directors: 'Directors: Anthony Russo, Joe Russo',
        releaseDate: '27 April 2018',
        releaseDateDesc: 'USA (2018), 2h 29min',
        runtime: '2h 29min',
        bannerUrl: 'assets/images/movie_banner_1.png',
        imageUrl: 'assets/images/ic_preview_1.png',
        trailerImg1: 'assets/images/ic_thumb_11.png',
        trailerImg2: 'assets/images/ic_thumb_12.png',
        trailerImg3: 'assets/images/ic_thumb_13.png',
      ),
      Item(
        id: 1,
        name: 'Transformers: The Last Knight',
        category: 'Action, Adventure, Sci-Fi',
        desc: 'Autobots and Decepticons are at war, with humans '
            'on the sidelines. Optimus Prime is gone. The key to '
            'saving our future lies buried in the secrets of the past, '
            'in the hidden history of Transformers on Earth.',
        rating: 5.2,
        directors: 'Directors: Michael Bay',
        releaseDate: '21 June 2017',
        releaseDateDesc: 'USA (2017), 2h 34min',
        runtime: '2h 34min',
        bannerUrl: 'assets/images/movie_banner_2.png',
        imageUrl: 'assets/images/ic_preview_2.png',
        trailerImg1: 'assets/images/ic_thumb_21.png',
        trailerImg2: 'assets/images/ic_thumb_21.png',
        trailerImg3: 'assets/images/ic_thumb_21.png',
      ),
      Item(
        id: 2,
        name: 'Pacific Rim: Uprising',
        category: 'Action, Adventure, Sci-Fi',
        desc: 'Jake Pentecost, son of Stacker Pentecost, reunites with '
            'Mako Mori to lead a new generation of Jaeger pilots, including '
            'rival Lambert and 15-year-old hacker Amara, against a new Kaiju threat.',
        rating: 5.7,
        directors: 'Directors: Steven S. DeKnight',
        releaseDate: '23 March 2018',
        releaseDateDesc: 'USA (2018), 1h 51min',
        runtime: '1h 51min',
        bannerUrl: 'assets/images/movie_banner_3.png',
        imageUrl: 'assets/images/ic_preview_3.png',
        trailerImg1: 'assets/images/ic_thumb_31.png',
        trailerImg2: 'assets/images/ic_thumb_31.png',
        trailerImg3: 'assets/images/ic_thumb_31.png',
      ),
      Item(
        id: 3,
        name: 'Thor: Ragnarok',
        category: 'Action, Adventure, Comedy',
        desc: 'Thor is imprisoned on the planet Sakaar, and must '
            'race against time to return to Asgard and stop Ragnarök, '
            'the destruction of his world, at the hands of the powerful '
            'and ruthless villain Hela.',
        rating: 7.9,
        directors: 'Directors: Taika Waititi',
        releaseDate: '3 November 2017',
        releaseDateDesc: 'USA (2017), 2h 10min',
        runtime: '2h 10min',
        bannerUrl: 'assets/images/movie_banner_4.png',
        imageUrl: 'assets/images/ic_preview_4.png',
        trailerImg1: 'assets/images/ic_thumb_41.png',
        trailerImg2: 'assets/images/ic_thumb_41.png',
        trailerImg3: 'assets/images/ic_thumb_41.png',
      ),
    ];
  }
}
*/
