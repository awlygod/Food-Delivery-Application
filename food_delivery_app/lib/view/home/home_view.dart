import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/category_cell.dart';
import 'package:food_delivery_app/common_widget/most_popular_cell.dart';
import 'package:food_delivery_app/common_widget/popular_restaurant_row.dart';
import 'package:food_delivery_app/common_widget/recent_item_row.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';
import 'package:food_delivery_app/common_widget/view_all_title_row.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();
  List catArr = [
    {"image": "assets/imgs/cat_offer.png", "name": "Offers"},
    {"image": "assets/imgs/cat_sri.png", "name": "Sri Lankan"},
    {"image": "assets/imgs/cat_3.png", "name": "Italian"},
    {"image": "assets/imgs/cat_4.png", "name": "Indian"},
  ];
  List popArr = [
    {
      "image": "assets/imgs/res_1.png",
      "name": "Bluelight Cafe",
      "rate": "4.3",
      "rating": "156",
      "type": "Cafe",
      "food_type": "Western Cafe"
    },
    {
      "image": "assets/imgs/res_2.png",
      "name": "Made with Happiness",
      "rate": "4.6",
      "rating": "2,310",
      "type": "Dining",
      "food_type": "Indian"
    },
    {
      "image": "assets/imgs/res_3.png",
      "name": "SunFlower Cafe",
      "rate": "3.9",
      "rating": "1,800",
      "type": "Dining",
      "food_type": "Indian"
    },
  ];

  List mostPopArr = [
    {
      "image": "assets/imgs/m_res_1.png",
      "name": "Bluelight Cafe",
      "rate": "4.3",
      "rating": "156",
      "type": "Cafe",
      "food_type": "Western Cafe"
    },
    {
      "image": "assets/imgs/m_res_2.png",
      "name": "Made with Happiness",
      "rate": "4.6",
      "rating": "2,310",
      "type": "Dining",
      "food_type": "Indian"
    },
  ];

  List recentArr = [
    {
      "image": "assets/imgs/item_1.png",
      "name": "Mulbery Pizza",
      "rate": "4.3",
      "rating": "156",
      "type": "Cafe",
      "food_type": "Western Cafe"
    },
    {
      "image": "assets/imgs/item_2.png",
      "name": "Barita",
      "rate": "4.6",
      "rating": "2,310",
      "type": "Dining",
      "food_type": "Indian"
    },
    {
      "image": "assets/imgs/item_3.png",
      "name": "Pizza Rush Hour",
      "rate": "3.9",
      "rating": "1,800",
      "type": "Dining",
      "food_type": "Indian"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Good Morning Suraj ,",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/imgs/shopping_cart.png",
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivering to",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Image.asset(
                          "assets/imgs/dropdown.png",
                          width: 12,
                          height: 12,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundTextfield(
                  hinttext: "Search Food",
                  controller: txtSearch,
                  left: Container(
                    alignment: Alignment.center,
                    width: 30,
                    child: Image.asset(
                      "assets/imgs/search.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemCount: catArr.length,
                  itemBuilder: ((context, index) {
                    var cObj = catArr[index] as Map? ?? {};
                    return CategoryCell(cObj: cObj, onTap: () {});
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                    title: "Popular Restaurants", onView: () {}),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: popArr.length,
                itemBuilder: ((context, index) {
                  var pObj = popArr[index] as Map? ?? {};
                  return PopularRestaurantRow(pObj: pObj, onTap: () {});
                }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(title: "Most Popular", onView: () {}),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemCount: mostPopArr.length,
                  itemBuilder: ((context, index) {
                    var mObj = mostPopArr[index] as Map? ?? {};
                    return MostPopularCell(mObj: mObj, onTap: () {});
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:
                    ViewAllTitleRow(title: "Recently Ordered", onView: () {}),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: recentArr.length,
                itemBuilder: ((context, index) {
                  var rObj = recentArr[index] as Map? ?? {};
                  return RecentItemRow(rObj: rObj, onTap: () {});
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
