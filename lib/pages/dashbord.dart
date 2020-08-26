import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      extendBodyBehindAppBar: true,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              icon: Icon(Icons.notifications_active),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              // clipBehavior: Clip.none,
              overflow: Overflow.visible,
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue[800],
                        Colors.purple[900],
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                  height: 210,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: 60,
                  left: 30,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 29,
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage: NetworkImage(
                              "https://scontent.fktm8-1.fna.fbcdn.net/v/t1.0-9/s960x960/108011960_136293031434634_5825225265391395441_o.jpg?_nc_cat=104&_nc_sid=85a577&_nc_ohc=iVCKTUCUazMAX-sWH_9&_nc_oc=AQnNdWPyWrvxfFGXKlhQaXZ7kqXcs4D0CC9Fxm7GpB0cshikuXCVJSGtr0JNCSIe0zs&_nc_ht=scontent.fktm8-1.fna&tp=7&oh=33eca4c5d6a92c1277726c5b180d9798&oe=5F6CA157"),
                          // child: ,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Saroj Yadav",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 23),
                          ),
                          Text(
                            "Software Engineer,Nepal",
                            style: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 35,
                  right: 35,
                  top: 145,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 70,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey,
                            offset: Offset(3, 3)),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "My Balance: ",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "\$1000",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            height: 20,
                            thickness: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[400],
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 4, 7, 4),
                                        child: Image(
                                          image: AssetImage(
                                              'assests/employee.png'),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Drop-off",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[400],
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 4, 7, 4),
                                        child: Image(
                                          image:
                                              AssetImage('assests/truck.png'),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Pick up",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[400],
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 4, 7, 4),
                                        child: Image(
                                          image: AssetImage('assests/shop.png'),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Shop",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[400],
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 4, 7, 4),
                                        child: Image(
                                          image:
                                              AssetImage('assests/wallet.png'),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Top up",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 120),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: ListTile(
                title: Text(
                  "Explore OLLO Life",
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Iceland',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                dense: true,
                subtitle: Text(
                  "Discover more things and Grab Offers",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Iceland',
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Container(
                  height: 40,
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      colors: [
                        Colors.indigo,
                        Colors.purple,
                      ],
                    ),
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    color: Colors.transparent,
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: Colors.blueGrey[50],
                          child: Padding(
                            padding: EdgeInsets.all(22),
                            child: Image.asset(
                              'assests/everyday.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "EveryDay Wear",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: Colors.blueGrey[50],
                          child: Padding(
                            padding: EdgeInsets.all(22),
                            child: Image.asset(
                              'assests/shirt.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "T-Shirts",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: Colors.blueGrey[50],
                          child: Padding(
                            padding: EdgeInsets.all(22),
                            child: Image.asset(
                              'assests/bag.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Purses",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: Colors.blueGrey[50],
                          child: Padding(
                            padding: EdgeInsets.all(22),
                            child: Image.asset(
                              'assests/pant.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Pants",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
              child: ListTile(
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Active Orders",
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Iceland',
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: "(2)",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                          fontFamily: 'Iceland',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                dense: true,
                trailing: Container(
                  height: 40,
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      colors: [
                        Colors.indigo,
                        Colors.purple,
                      ],
                    ),
                  ),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    color: Colors.transparent,
                    onPressed: () {},
                    child: Text(
                      "Order History",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: SizedBox(
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14, 4, 14, 4),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.indigo,
                          radius: 24,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.monetization_on),

                            // child: ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Order No. :#25644778",
                                style: TextStyle(
                                  fontFamily: 'Iceland',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "Order : Confirmed",
                                style: TextStyle(
                                  fontFamily: 'Iceland',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: SizedBox(
                height: 80,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14, 4, 14, 4),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.indigo,
                          radius: 24,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.monetization_on),

                            // child: ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Order No. :#25644778",
                                style: TextStyle(
                                  fontFamily: 'Iceland',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "Order : Confirmed",
                                style: TextStyle(
                                  fontFamily: 'Iceland',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
              child: ListTile(
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Promo",
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Iceland',
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 80),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width - 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue[800],
                            Colors.purple[900],
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.indigo,

                                // child: ,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Get 20% off",
                                    style: TextStyle(
                                      fontFamily: 'Iceland',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 22,
                                    ),
                                  ),
                                  Text(
                                    "Jeans,Long Dress",
                                    style: TextStyle(
                                      fontFamily: 'Iceland',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white54,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width - 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue[800],
                            Colors.purple[900],
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.indigo,

                                // child: ,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Get 20% off",
                                    style: TextStyle(
                                      fontFamily: 'Iceland',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 22,
                                    ),
                                  ),
                                  Text(
                                    "Jeans,Long Dress",
                                    style: TextStyle(
                                      fontFamily: 'Iceland',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white54,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width - 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue[800],
                            Colors.purple[900],
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.indigo,

                                // child: ,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Get 20% off",
                                    style: TextStyle(
                                      fontFamily: 'Iceland',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 22,
                                    ),
                                  ),
                                  Text(
                                    "Jeans,Long Dress",
                                    style: TextStyle(
                                      fontFamily: 'Iceland',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white54,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
