import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 243, 244, 1),
      appBar: AppBar(
        title: FlutterLogo(
          colors: Colors.green,
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.50),
                height: 100.0,
                color: Colors.white,
                child: Text(
                  'Get Coaching',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
//              ========You have carousel==========
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 80.0, 25.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(blurRadius: 2.0, color: Colors.grey)
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                          child: Text(
                            '206',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 70.0),
                    Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(205, 246, 221, 0.3),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                          child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Buy more',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      )),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40.0),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'MY COACHES',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0),
          GridView.count(
            primary: false,
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard('Sean', 'images/1.png', 'Available', 1),
              _buildCard('Tom', 'images/image00001.png', 'Away', 2),
              _buildCard('Natsu', 'images/image00002.jpg', 'Away', 3),
              _buildCard('Grey', 'images/image00003.jpg', 'Available', 4),
              _buildCard('Prof', 'images/image00004.jpg', 'Away', 5),
              _buildCard('Kim', 'images/image00005.jpg', 'Available', 6),
              _buildCard('Kensy', 'images/image00006.jpg', 'Available', 7),
              _buildCard('Sulo', 'images/image00007.jpg', 'Away', 8),
              _buildCard('Chris', 'images/image00008.jpg', 'Away', 9),
              _buildCard('Erza', 'images/image00009.jpg', 'Available', 10),
              _buildCard('Osan', 'images/image00010.jpg', 'Available', 11),
              _buildCard('Kirwa', 'images/image00011.jpg', 'Available', 12),
              _buildCard('Rotich', 'images/image00012.jpg', 'Available', 13),
              _buildCard('Poh', 'images/image00013.jpg', 'Available', 14),
              _buildCard('Mohamed', 'images/image00014.jpg', 'Away', 15)
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String image, String status, int cardIndex) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 7.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 12.0),
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('$image'),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40.0),
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: status == 'Away' ? Colors.amber : Colors.green,
                        border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0
                        )
                      ),
                    )
                  ],
                ),

                SizedBox(height: 8.0),
                Text(
                  name,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.grey),
                ),
                SizedBox(height: 5.0),
                Text(
                  status,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      color: Colors.grey),
                ),
                SizedBox(height: 8.0),
              ],
            ),
            Expanded(
                child:
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 10.0,
                    width: 175.0,
                    decoration: BoxDecoration(
                        color: status == 'Away' ? Colors.grey : Colors.green,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0))),
                    child: Center(
                        child: Text(
                          'Request',
                          style: TextStyle(color: Colors.white, fontFamily: 'Quicksand'),
                        )),
                  )) ,
                ),

          ],
        ),
        margin: cardIndex.isEven
            ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
            : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0));
  }
}
