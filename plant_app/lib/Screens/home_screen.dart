import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/custom_widgets/custom_listtile.dart';
import 'package:plant_app/custom_widgets/custom_textfield.dart';
import 'package:plant_app/custom_widgets/custom_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController =
        TabController(length: 4, initialIndex: 0, vsync: this);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle, color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu_rounded,
                  color: Colors.black,
                ))
          ],
        ),
        bottomNavigationBar: NavigationBar(
          height: 60,
          destinations: [
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle_outlined),
              label: '',
            ),
            NavigationDestination(icon: Icon(Icons.shopping_cart), label: ''),
            NavigationDestination(icon: Icon(Icons.menu_rounded), label: ''),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Let's find your plant!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color(0xff3F6A51)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: CustomTextField(
                    'Search Plants', Icons.search, Icons.mic_none_outlined),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 20,
                margin: EdgeInsets.only(top: 20),
                child: TabBar(
                  controller: tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      text: "Recommended",
                    ),
                    Tab(
                      text: "Top",
                    ),
                    Tab(
                      text: "Indoor",
                    ),
                    Tab(
                      text: "Outdoor",
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 270,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Container(
                      height: 270,
                      child: ListView(
                        padding: EdgeInsets.all(10),
                        scrollDirection: Axis.horizontal,
                        children: [
                          CustomCard(),
                          SizedBox(
                            width: 10,
                          ),
                          CustomCard(),
                          SizedBox(
                            width: 10,
                          ),
                          CustomCard(),
                          SizedBox(
                            width: 10,
                          ),
                          CustomCard(),
                          SizedBox(
                            width: 10,
                          ),
                          CustomCard(),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.green,
                    ),
                    Container(
                      color: Colors.yellow,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Recently viewed',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color(0xff3F6A51),
                ),
              ),
              Container(
                  height: 60,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      CustomListTile(),
                      CustomListTile(),
                      CustomListTile(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
