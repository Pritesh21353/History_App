import 'package:banner_carousel/banner_carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/shraddha.dart';

import 'package:slide_switcher/slide_switcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey =
      GlobalKey<CurvedNavigationBarState>();
  int switcherIndex1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(139, 121, 113, 113),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(139, 121, 113, 113),
        elevation: 10,
        foregroundColor: Colors.white,
        title: Text("HISTORY"),
        // title: Image.asset(
        //   "assets/images/appbarimg.png",
        //   height: 70,
        //   width: 110,
        // ),
        actions: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 1),
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 3),
                  child: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: Stack(
                  children: [
                    BannerCarousel(
                      banners: BannerImages.listBanners,
                      customizedIndicators: IndicatorModel.animation(
                        width: 10,
                        height: 5,
                        spaceBetween: 2,
                        widthAnimation: 50,
                      ),
                      height: 200.0,
                      activeColor: Colors.amberAccent,
                      disableColor: const Color.fromARGB(255, 255, 185, 185),
                      animation: true,
                      borderRadius: 10,
                      onTap: (id) => print(id),
                      width: double.infinity,
                      indicatorBottom: false,
                    ),
                  ],
                ),
              ),
            ),
            Container(
                height: 185,
                width: double.infinity,
                //color: Colors.amberAccent,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 2, right: 2, top: 20, bottom: 0),
                      child: SlideSwitcher(
                        children: [
                          Text('Prachin'),
                          Text('Madhya'),
                          Text("Aadhunik"),
                          Text("Vishwa")
                        ],
                        onSelect: (index) =>
                            setState(() => switcherIndex1 = index),
                        containerHeight: 30,
                        containerWight: 350,
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (switcherIndex1 == 0) ...[
                      Padding(
                        padding: const EdgeInsets.only(right: 8, left: 8),
                        child: Card(
                          elevation: 10,
                          color: Color.fromARGB(255, 75, 74, 74),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 6),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://www.sathyasai.org/sites/default/files/respimg/0/9/pages/organisation/logo/sarva-dhama-symbol-original.gif"))),
                                          ),
                                          Container(
                                            child: Text("प्राचीन धर्म"),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://thumbs.dreamstime.com/z/stylized-american-indian-pre-columbian-civilization-black-white-isolated-image-representing-stylized-american-indian-213750077.jpg"),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                          Container(
                                            child: Text("सभ्यता"),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://thumbs.dreamstime.com/z/stylized-american-indian-pre-columbian-civilization-black-white-isolated-image-representing-stylized-american-indian-213750077.jpg"),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                          Container(
                                            child: Text("साम्राज्य/राजवंश"),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ] else if (switcherIndex1 == 1) ...[
                      Padding(
                        padding: const EdgeInsets.only(right: 8, left: 8),
                        child: Card(
                          elevation: 10,
                          color: Color.fromARGB(255, 75, 74, 74),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 6),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://www.sathyasai.org/sites/default/files/respimg/0/9/pages/organisation/logo/sarva-dhama-symbol-original.gif"))),
                                          ),
                                          Container(
                                            child: Text("परकीय आक्रमण"),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://thumbs.dreamstime.com/z/stylized-american-indian-pre-columbian-civilization-black-white-isolated-image-representing-stylized-american-indian-213750077.jpg"),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                          Container(
                                            child: Text("राजे/महाराजे"),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://thumbs.dreamstime.com/z/stylized-american-indian-pre-columbian-civilization-black-white-isolated-image-representing-stylized-american-indian-213750077.jpg"),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                          Container(
                                            child: Text("व्यापार"),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ] else if (switcherIndex1 == 2) ...[
                      Padding(
                        padding: const EdgeInsets.only(right: 8, left: 8),
                        child: Card(
                          elevation: 10,
                          color: Color.fromARGB(255, 75, 74, 74),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 6),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://www.sathyasai.org/sites/default/files/respimg/0/9/pages/organisation/logo/sarva-dhama-symbol-original.gif"))),
                                          ),
                                          Container(
                                            child: Text("ब्रिटीश राज"),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://thumbs.dreamstime.com/z/stylized-american-indian-pre-columbian-civilization-black-white-isolated-image-representing-stylized-american-indian-213750077.jpg"),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                          Container(
                                            child: Text("आंदोलन"),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://thumbs.dreamstime.com/z/stylized-american-indian-pre-columbian-civilization-black-white-isolated-image-representing-stylized-american-indian-213750077.jpg"),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                          Container(
                                            child: Text("साम्राज्य/राजवंश"),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ] else ...[
                      Padding(
                        padding: const EdgeInsets.only(right: 8, left: 8),
                        child: Card(
                          elevation: 10,
                          color: Color.fromARGB(255, 75, 74, 74),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 6),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://www.sathyasai.org/sites/default/files/respimg/0/9/pages/organisation/logo/sarva-dhama-symbol-original.gif"))),
                                          ),
                                          Container(
                                            child: Text("प्राचीन धर्म"),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://thumbs.dreamstime.com/z/stylized-american-indian-pre-columbian-civilization-black-white-isolated-image-representing-stylized-american-indian-213750077.jpg"),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                          Container(
                                            child: Text("सभ्यता"),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://thumbs.dreamstime.com/z/stylized-american-indian-pre-columbian-civilization-black-white-isolated-image-representing-stylized-american-indian-213750077.jpg"),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                          Container(
                                            child: Text("साम्राज्य/राजवंश"),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 7, right: 5),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "साम्राज्य",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "view all",
                      style: TextStyle(
                          color: const Color.fromRGBO(33, 150, 243, 1)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, right: 8),
              child: Card(
                elevation: 10,
                color: Color.fromARGB(255, 75, 74, 74),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(1),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.transparent,
                            ),
                            height: 90,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.red,
                                  backgroundImage: NetworkImage(
                                      "https://e1.pxfuel.com/desktop-wallpaper/318/129/desktop-wallpaper-orange-flag-png-transparent-bhagwa-flag.jpg"),
                                ),
                                Text("मराठा",
                                    style: TextStyle(color: Colors.white)),
                                Text(
                                  "साम्राज्य",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.transparent,
                            ),
                            height: 90,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.red,
                                  backgroundImage: NetworkImage(
                                      "https://cdn2.vectorstock.com/i/1000x1000/48/61/rajput-empire-647-1192-flag-waving-on-white-vector-27484861.jpg"),
                                ),
                                Text("राजपूत",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                Text("साम्राज्य",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.transparent,
                            ),
                            height: 90,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.red,
                                  backgroundImage: NetworkImage(
                                      "https://upload.wikimedia.org/wikipedia/commons/e/ee/Flag_of_Maurya_Empire.pvg.png"),
                                ),
                                Text(
                                  "मौर्या",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text("साम्राज्य",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.transparent,
                            ),
                            height: 90,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.red,
                                  backgroundImage: NetworkImage(
                                      "https://forums.ageofempires.com/uploads/default/original/3X/5/1/51a8078d2dc0fd668565efc709cf8ac4d600c7b8.jpeg"),
                                ),
                                Text("चोल",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                Text("साम्राज्य",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.transparent,
                            ),
                            height: 90,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.red,
                                    backgroundImage: NetworkImage(
                                        "https://upload.wikimedia.org/wikipedia/commons/1/12/Mughal_empire_flag.png")),
                                Text("मुघल",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                Text("साम्राज्य",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.transparent,
                            ),
                            height: 90,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.red,
                                  backgroundImage: NetworkImage(
                                      "https://upload.wikimedia.org/wikipedia/commons/8/8f/Satavahana_dynasty.jpg"),
                                ),
                                Text("सातवाहन",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                Text("साम्राज्य",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
                child: Padding(
              padding:
                  const EdgeInsets.only(top: 7, left: 7, right: 5, bottom: 6),
              child: Padding(
                padding: const EdgeInsets.only(left: 3, right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "योद्धा",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w800),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Text("view all",
                          style: TextStyle(
                              color: const Color.fromRGBO(33, 150, 243, 1))),
                    ),
                  ],
                ),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 7, right: 5),
              child: Card(
                elevation: 10,
                color: Color.fromARGB(255, 75, 74, 74),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 110,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(1),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.transparent,
                            ),
                            height: 90,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.red,
                                  backgroundImage: NetworkImage(
                                      "https://i.pinimg.com/originals/2a/e7/c8/2ae7c85dd9876d86d1d74a4de0489e6d.jpg"),
                                ),
                                Text("Chhatrapati Shivray",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.transparent,
                            ),
                            height: 90,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.red,
                                  backgroundImage: NetworkImage(
                                      "https://i.pinimg.com/originals/67/c4/50/67c450de6f9b4e2b5edf6af48edc0bb9.jpg"),
                                ),
                                Text("महाराणा प्रताप",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.transparent,
                            ),
                            height: 90,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.red,
                                  backgroundImage: NetworkImage(
                                      "https://hindi.cdn.zeenews.com/hindi/sites/default/files/2020/03/17/526255-1.jpg"),
                                ),
                                Text("sambrat Ashok",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.transparent,
                            ),
                            height: 90,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.red,
                                  backgroundImage: NetworkImage(
                                      "https://www.astitwam.com/wp-content/uploads/2023/03/20230328_205903.jpg"),
                                ),
                                Text("Rajendra Chol ",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "WARS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w800),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Text("view all",
                            style: TextStyle(
                                color: const Color.fromRGBO(33, 150, 243, 1))),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
                  child: Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 200.0,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 10),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "FORTS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w800),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyWidget()),
                            );
                          },
                          child: Text("view all",
                              style: TextStyle(
                                  color:
                                      const Color.fromRGBO(33, 150, 243, 1))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
                  child: Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 200.0,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 10),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            Container()
          ]),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.watch_later_outlined, size: 40, color: Colors.white),
          Icon(Icons.gamepad_outlined, size: 40, color: Colors.white),
          Icon(Icons.search, size: 40, color: Colors.white),
          Icon(Icons.call_split, size: 40, color: Colors.white),
          Icon(Icons.perm_identity, size: 40, color: Colors.white),
        ],

        color: Color.fromARGB(139, 121, 113, 113),
        buttonBackgroundColor: Color.fromARGB(139, 121, 113, 113),
        backgroundColor: Color.fromARGB(139, 121, 113, 113),
        // animationCurve: Curves.decelerate,
        animationDuration: Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {});
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}

class BannerImages {
  static const String banner1 =
      "https://i.pinimg.com/originals/d5/37/81/d53781ce1686e11c2ee25a93f27c0653.jpg";
  static const String banner2 =
      "https://i.pinimg.com/originals/d6/2e/d9/d62ed95af60a9a7f9289213e4d03666e.jpg";
  static const String banner3 =
      "https://i.pinimg.com/564x/a8/19/81/a8198106089fb2ef7c330637233d310b.jpg";
  static const String banner4 =
      "https://i.pinimg.com/736x/3f/ae/08/3fae08b30d8b98f0ac4318bd8d998bd5.jpg";
  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}
