import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  Widget singleProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
          color: Color(0xffd9dad9), borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.asset("assets/images/glap.png"),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("glap",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  Text("50\$ Price",
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.only(left: 5),
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              "Pair",
                              style: TextStyle(fontSize: 15),
                            )),
                            Expanded(
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove,
                              size: 15,
                              color: Colors.orange,
                            ),
                            Text('1'),
                            Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffd6b738),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                backgroundColor: Color(0xffd4d181),
                radius: 12,
                child: Icon(
                  Icons.shop,
                  size: 17,
                  color: Colors.black,
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/back1.jpg")),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 130, bottom: 10),
                            child: Container(
                              height: 40,
                              width: 500,
                              decoration: BoxDecoration(
                                  color: Color(0xffd1ad17),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                  )),
                              child: Text(
                                "Ecommerce",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 10,
                                          offset: Offset(3, 3))
                                    ]),
                              ),
                            ),
                          ),
                          Text(
                            '30% OFF',
                            style: TextStyle(
                                color: Colors.green[100],
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'On All Ecommerce Products',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                      )),
                  Expanded(child: Container())
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Branded Items'),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                singleProducts(),
                singleProducts(),
                singleProducts(),
                singleProducts()
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('New Products'),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                singleProducts(),
                singleProducts(),
                singleProducts(),
                singleProducts()
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
