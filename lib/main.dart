import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_moda_uygulamasi/sayfaiki.dart';

void main() => runApp(ModaUygulamasi());

class ModaUygulamasi extends StatefulWidget {
  @override
  _ModaUygulamasiState createState() => _ModaUygulamasiState();
}

class _ModaUygulamasiState extends State<ModaUygulamasi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Kisisel"),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  AnaSayfa({Key key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Moda Uygulamam",
          style: TextStyle(fontFamily: "Kisisel", fontSize: 20, color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.verified_user_sharp),
            onPressed: () {},
            color: Colors.green,
          ),
        ],
      ),
      body: ListView(
        children: [modelList(), altSayfa(context)],
      ),
    );
  }

  altSayfa(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Material(
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black.withOpacity(0.2)),
          width: MediaQuery.of(context).size.width,
          height: 500,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              altSayfaBaslik(context),
              altSayfaMetin(),
              listMiniImages(context),
              altSayfaButton(),
              altSayfaInteractButton()
            ],
          ),
        ),
      ),
    );
  }

  bottomNavBar() {
    return Material(
      color: Colors.orange.withOpacity(0.2),
      child: TabBar(
        indicatorColor: Colors.blue,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.black26,
        indicatorSize: TabBarIndicatorSize.label,
        controller: controller,
        tabs: [
          Tab(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            text: "Home",
          ),
          Tab(
            icon: Icon(
              Icons.category,
              color: Colors.orange,
            ),
            text: "Categories",
          ),
          Tab(
            icon: Icon(
              Icons.navigation,
              color: Colors.black,
            ),
            text: "Share",
          ),
          Tab(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.orange,
            ),
            text: "Cart",
          ),
        ],
      ),
    );
  }

  Widget altSayfaInteractButton() {
    return Row(
      children: [
        Icon(
          Icons.reply,
          color: Colors.black.withOpacity(0.5),
          size: 20,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          "1.5K",
        ),
        SizedBox(
          width: 30,
        ),
        Icon(
          Icons.messenger_rounded,
          color: Colors.black.withOpacity(0.5),
          size: 20,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          "320K",
        ),
        SizedBox(
          width: 110,
        ),
        Icon(
          Icons.favorite,
          color: Colors.red.withOpacity(0.9),
          size: 30,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          "2K",
        )
      ],
    );
  }

  Widget altSayfaButton() {
    return Row(
      children: [
        SizedBox(
          height: 80,
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Text(
            "# Louis Vuitton",
            style: TextStyle(color: Colors.brown),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.grey.withOpacity(0.3)),
          height: 26,
          width: MediaQuery.of(context).size.width / 3,
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Text(
            "# Louis Vuitton",
            style: TextStyle(color: Colors.brown),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.grey.withOpacity(0.3)),
          height: 26,
          width: MediaQuery.of(context).size.width / 3,
        ),
        SizedBox(
          height: 80,
        ),
      ],
    );
  }

  Widget altSayfaMetin() {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  ",
          style: TextStyle(fontSize: 13, color: Colors.black54),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  Row listMiniImages(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetaySayfasi(img: "assets/modelgrid1.jpeg")));
          },
          child: Hero(
            tag: "assets/modelgrid1.jpeg",
            child: Container(
              height: 220,
              width: MediaQuery.of(context).size.width / 2 - 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(("assets/modelgrid1.jpeg")), fit: BoxFit.cover)),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetaySayfasi(img: "assets/modelgrid2.jpeg")));
              },
              child: Hero(
                tag: "assets/modelgrid2.jpeg",
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2 - 38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(("assets/modelgrid2.jpeg")), fit: BoxFit.fitWidth)),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetaySayfasi(img: "assets/modelgrid3.jpeg")));
              },
              child: Hero(
                tag: "assets/modelgrid3.jpeg",
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2 - 38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(("assets/modelgrid3.jpeg")), fit: BoxFit.fitWidth)),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Row altSayfaBaslik(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(child: listImageKucuk("assets/model1.jpeg")),
        SizedBox(
          width: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width - 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Daisy",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Text(
                "34 mins ago",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Icon(Icons.umbrella, color: Colors.yellow.shade900, size: 27),
      ],
    );
  }

  Container modelList() {
    return Container(
      padding: EdgeInsets.all(20),
      height: 170,
      width: 200,
      color: Colors.white30,
      child: ListView(
        children: [
          createElement("assets/model1.jpeg", "assets/chanellogo.jpg"),
          SizedBox(
            width: 30,
          ),
          createElement("assets/model2.jpeg", "assets/chloelogo.png"),
          SizedBox(
            width: 30,
          ),
          createElement("assets/model3.jpeg", "assets/louisvuitton.jpg"),
          SizedBox(
            width: 30,
          ),
          createElement("assets/model1.jpeg", "assets/chanellogo.jpg"),
          SizedBox(
            width: 30,
          ),
          createElement("assets/model2.jpeg", "assets/chloelogo.png"),
          SizedBox(
            width: 30,
          ),
          createElement("assets/model3.jpeg", "assets/louisvuitton.jpg"),
          SizedBox(
            width: 30,
          ),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  createElement(String imagee, String logoo) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              listImage(imagee),
              listLogo(logoo),
              SizedBox(
                width: 20,
              )
            ],
          ),
          SizedBox(width: 20),
          listButtons()
        ],
      ),
    );
  }

  Container listButtons() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 40,
      width: 70,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.brown),
      child: Center(
        child: Text(
          "Takip Et",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Positioned listLogo(String logoo) {
    return Positioned(
      top: 50,
      child: Container(
        width: 25,
        height: 20,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(logoo), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(50)),
      ),
    );
  }

  Widget listImage(String imagee) {
    return Container(
      width: 60,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(image: AssetImage(imagee), fit: BoxFit.cover),
      ),
    );
  }

  Container listImageKucuk(String imagee) {
    return Container(
      width: 40,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(image: AssetImage(imagee), fit: BoxFit.cover),
      ),
    );
  }
}
