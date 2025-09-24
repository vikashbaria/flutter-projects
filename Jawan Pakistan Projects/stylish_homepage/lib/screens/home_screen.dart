import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.menu, size: 30, color: Color(0xFF323232)),
              ),
            ),
            Image.asset("assets/logo.png"),
            CircleAvatar(
              backgroundImage: AssetImage("assets/profile_image.png"),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 34,
                          backgroundImage: AssetImage("assets/beauty.png"),
                        ),
                        SizedBox(height: 5),
                        Text("Beauty"),
                      ],
                    ),

                    Column(
                      children: [
                        CircleAvatar(
                          radius: 34,
                          backgroundImage: AssetImage("assets/fashion.png"),
                        ),
                        SizedBox(height: 5),
                        Text("Fashions"),
                      ],
                    ),

                    Column(
                      children: [
                        CircleAvatar(
                          radius: 34,
                          backgroundImage: AssetImage("assets/kids.png"),
                        ),
                        SizedBox(height: 5),
                        Text("Kids"),
                      ],
                    ),

                    Column(
                      children: [
                        CircleAvatar(
                          radius: 34,
                          backgroundImage: AssetImage("assets/men.png"),
                        ),
                        SizedBox(height: 5),
                        Text("Men"),
                      ],
                    ),

                    Column(children: [
                       
                      ],
                    ),

                    Column(children: [
                       
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                  color: Color(0xFFFD6E86),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "50 - 40% OFF",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Now In (Product)",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "All Colours",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 20),
                    SizedBox(
                      width: 170,
                      height: 60,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.white),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Shop Now",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.arrow_right_alt, size: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 80,

                decoration: BoxDecoration(
                  color: Color(0xFF4392F9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Text(
                            "Deal of the Day",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "22h 55m 20s remaining ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xFF4392F9),
                          foregroundColor: Colors.white,
                          side: BorderSide(color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text("View All"),
                            SizedBox(width: 6),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Image.asset("assets/offer-check.png", width: 100),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Special Offers"),
                            Text(
                              "We make sure you get the \noffer you need at best prices",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 200,
                    child: Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 20,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFEFAD18),
                                    Color.fromARGB(255, 252, 180, 13),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                ),
                              ),
                            ),

                            Positioned(
                              left: 10,
                              top: 0,
                              bottom: 0,
                              child: Image.asset(
                                "assets/stars.png",
                                fit: BoxFit.fill,
                              ),
                            ),

                            Positioned(
                              left: 30,
                              top: 50,
                              bottom: 30,
                              child: Image.asset(
                                "assets/shoes.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Flat and Heels",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF232327),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Stand a chance to get rewarded",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFF83758),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Visit now",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(width: 6),
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
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
              ),

              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFD6E87),
                  borderRadius: BorderRadius.circular(12),
                ),
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Text(
                            "Trending Products ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today,
                                color: Colors.white,
                                size: 14, // thoda chhota icon
                              ),
                              SizedBox(width: 4),
                              Text(
                                "Last Date 29/02/22",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xFFFD6E87),
                          foregroundColor: Colors.white,
                          side: BorderSide(color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text("View All"),
                            SizedBox(width: 6),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/Summersale.png",
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "New Arrivals",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Summer’s 25 Collection",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),

                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Color(0xFFF83758),
                              foregroundColor: Colors.white,
                              side: BorderSide(color: Colors.white),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text("View All"),
                                SizedBox(width: 6),
                                Icon(Icons.arrow_forward),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
