import 'package:flutter/material.dart';
import 'package:smart_home_deneme_2/items/info_card.dart';
import 'package:smart_home_deneme_2/items/room_tab_items.dart';
import 'package:smart_home_deneme_2/utils/const_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Expanded(
            flex: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hey, Leyla",
                          style: TextStyle(fontSize: 18),
                        ),
                        Icon(Icons.handshake),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Living Room",
                      style: TextStyle(color: MainColors.veryLightGrey),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(color: MainColors.grey, borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 20,
            child: GridView.builder(
              itemCount: 2,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.25),
              itemBuilder: (context, index) {
                return InfoCard();
              },
            ),
          ),
          Expanded(
              flex: 55,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rooms",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text("See All"),
                    ],
                  ),
                  SizedBox(height: 10),
                  TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: "Living Room",
                      ),
                      Tab(
                        text: "Dining Room",
                      ),
                      Tab(
                        text: "Kitchen",
                      ),
                      Tab(
                        text: "Kitchen",
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        RoomTabBarItems(),
                        RoomTabBarItems(),
                        RoomTabBarItems(),
                        RoomTabBarItems(),
                      ],
                    ),
                  ),
                ],
              )),
          Expanded(flex: 10, child: Container()),
        ],
      ),
    );
  }
}
