import 'package:flutter/material.dart';

class DetaySayfasi extends StatefulWidget {
  var img;
  DetaySayfasi({this.img});
  @override
  _DetaySayfasiState createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: detay(),
    );
  }

  detay() {
    return Stack(
      children: [
        Hero(
          tag: "assets/modelgrid1.jpeg",
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.img), fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(),
              width: MediaQuery.of(context).size.width,
              height: 240,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Container(
                          height: 110,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage("assets/dress.jpg"), fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "LAMINATED",
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Louis Voutti",
                              style: TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.height / 4,
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                                style: TextStyle(fontSize: 13, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          "\$6500 ",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 180),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.brown,
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
