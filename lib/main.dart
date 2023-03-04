import 'package:flutter/material.dart';
import 'package:travel_news/config_ui/app_style.dart';
import 'package:travel_news/config_ui/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _seletedIndex = 0;
  void _onItemtapped(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: KLighterWhite,
        body: HomePage(),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: kWhite,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: _seletedIndex == 0
                    ? Icon(Icons.home_outlined)
                    : Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: _seletedIndex == 1
                    ? Icon(Icons.bookmark_border_outlined)
                    : Icon(Icons.bookmark),
                label: "Bookmark"),
            BottomNavigationBarItem(
                icon: _seletedIndex == 2
                    ? Icon(Icons.notifications_none_outlined)
                    : Icon(Icons.notifications),
                label: "Notification"),
            BottomNavigationBarItem(
                icon: _seletedIndex == 3
                    ? Icon(Icons.person_outline)
                    : Icon(Icons.person),
                label: "Account"),
          ],
          currentIndex: _seletedIndex,
          onTap: _onItemtapped,
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
          Row(
            children: [
              Container(
                height: 51,
                width: 51,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderradius),
                    color: KLightBlue,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png"),
                    )),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back!",
                    style: KkPoppinsBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 4),
                  ),
                  Text(
                    "Monday, 31 October",
                    style: KkPoppinsRegular.copyWith(
                        color: KGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderradius),
                color: kWhite,
                boxShadow: [
                  BoxShadow(
                    color: KDarkBlue.withOpacity(0.051),
                    offset: Offset(0.0, 3),
                    blurRadius: 24.0,
                    spreadRadius: 0.0,
                  )
                ]),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: KkPoppinsRegular.copyWith(
                      color: KBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 13,
                        ),
                        hintText: "Search for Article ...",
                        border: kBorder,
                        errorBorder: kBorder,
                        disabledBorder: kBorder,
                        focusedBorder: kBorder,
                        focusedErrorBorder: kBorder,
                        hintStyle: KkPoppinsRegular.copyWith(
                          color: KLightGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        )),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: KBlue,
                    borderRadius: BorderRadius.circular(kBorderradius),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: kWhite),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 14,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    "#Health",
                    style: KkPoppinsMedium.copyWith(
                      color: KGrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 304,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 20),
                  padding: const EdgeInsets.all(12),
                  height: 304,
                  width: 255,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderradius),
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                          color: KDarkBlue.withOpacity(0.051),
                          offset: Offset(0.0, 3),
                          blurRadius: 24.0,
                          spreadRadius: 0.0)
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 164,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderradius),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://picsum.photos/id/${index + 1}/200/300"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Flexible(
                          child: Text(
                        "Atlantic - Uniqure, macthed. There is no other place like Atlantic in this world",
                        style: KkPoppinsBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 19,
                                backgroundColor: KLightBlue,
                                backgroundImage: NetworkImage(
                                    "https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png"),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Fahmi Andriana",
                                    style: KkPoppinsBold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3,
                                    ),
                                  ),
                                  Text(
                                    "Sep 9, 2023",
                                    style: KkPoppinsBold.copyWith(
                                      color: KGrey,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderradius),
                                color: KLightWhite,
                              ),
                              child: RotationTransition(
                                turns: AlwaysStoppedAnimation(
                                    0.90), // Set the angle of rotation here
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.send_rounded),
                                  color: KLighterBlue,
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Short for You",
                style: KkPoppinsBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                ),
              ),
              Text(
                "See all",
                style: KkPoppinsMedium.copyWith(
                  color: KBlue,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 19,
          ),
          SizedBox(
            height: 88,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(9),
                  margin: EdgeInsets.only(right: 20),
                  width: 208,
                  height: 88,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(kBorderradius),
                    boxShadow: [
                      BoxShadow(
                        color: KDarkBlue.withOpacity(0.051),
                        offset: Offset(0.0, 3),
                        blurRadius: 24.0,
                        spreadRadius: 0.0,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.play_arrow_outlined,
                          color: kWhite,
                          weight: 17,
                        ),
                        width: 70,
                        height: 70,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderradius),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://img.freepik.com/free-photo/young-girl-steps-house-tree-sunrise-nusa-penida-island-bali-indonesia_335224-350.jpg?w=826&t=st=1677844270~exp=1677844870~hmac=75655f212bef142bc2d74fdcb739dd7335a7194eed84dbd09e0a453d34b334b7"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Flexible(
                          child: Column(
                        children: [
                          Text(
                            "Top trending island in 2022",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: KkPoppinsBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye_outlined,
                                color: KGrey,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                "40.222",
                                style: KkPoppinsMedium.copyWith(
                                  color: KGrey,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
