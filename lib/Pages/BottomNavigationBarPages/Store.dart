// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/Custom_presets/colors_preset.dart';
import 'package:furniture_app/Pages/Homepage.dart';
import 'package:furniture_app/Pages/product_page.dart';
import 'package:get/get.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  int currenttab = 0;
  int currenttab2 = -1;
  bool istabopen = false;

  final List<String> recommendcategory = const [
    "Living room",
    "Bedroom",
    "Kitchen & Dining room",
    "Decoration",
    "Balcony",
    "Garage"
  ];

  final List<Map> newinStoreData = [
    {
      "ItemName": "MaharajaBed",
      "Price": 7000,
      "ImageUrl":
          "https://images.pexels.com/photos/1374125/pexels-photo-1374125.jpeg?auto=compress&cs=tinysrgb&w=1600"
    },
    {
      "ItemName": "OldSofa",
      "Price": 1000,
      "ImageUrl":
          "https://images.pexels.com/photos/105004/pexels-photo-105004.jpeg?auto=compress&cs=tinysrgb&w=1600"
    },
    {
      "ItemName": "DoubleBed",
      "Price": 7000,
      "ImageUrl":
          "https://images.pexels.com/photos/3201761/pexels-photo-3201761.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    },
    {
      "ItemName": "ModernSofa",
      "Price": 1200,
      "ImageUrl":
          "https://images.pexels.com/photos/2440471/pexels-photo-2440471.jpeg?auto=compress&cs=tinysrgb&w=1600"
    },
    {
      "ItemName": "ExportedSofa",
      "Price": 3400,
      "ImageUrl":
          "https://images.pexels.com/photos/1885562/pexels-photo-1885562.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    },
  ];

  final List<Map<dynamic, dynamic>> Newcategory = [
    {
      "CategoryName": "Sofas",
      "Subcategory": ["New Sofa", "Old Sofa", "Modern sofa", "Exported Sofa"]
    },
    {
      "CategoryName": "Tv & Media Furniture",
      "Subcategory": ["New Sofa", "Old Sofa", "Modern sofa", "Exported Sofa"]
    },
    {
      "CategoryName": "Coffee table",
      "Subcategory": ["New Sofa", "Old Sofa", "Modern sofa", "Exported Sofa"]
    },
    {
      "CategoryName": "Cabinets",
      "Subcategory": ["New Sofa", "Old Sofa", "Modern sofa", "Exported Sofa"]
    },
    {
      "CategoryName": "Bookcase and shelving",
      "Subcategory": ["New Sofa", "Old Sofa", "Modern sofa", "Exported Sofa"]
    },
    {
      "CategoryName": "Rugs",
      "Subcategory": ["New Sofa", "Old Sofa", "Modern sofa", "Exported Sofa"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color2,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Get.to(() => const Homepage());
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: color6,
            size: MediaQuery.of(context).size.width * 0.07,
          ),
        ),
        title: Text(
          recommendcategory[currenttab],
          style: TextStyle(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: FontWeight.w600),
        ),
        actionsIconTheme:
            IconThemeData(size: MediaQuery.of(context).size.width * 0.066),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          const Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SizedBox(
              width: double.infinity,
              height: 40,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: recommendcategory.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        currenttab = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.027),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currenttab == index ? Colors.orange : color2,
                      ),
                      child: Center(
                        child: Text(
                          recommendcategory[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: currenttab == index ? color1 : color6,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: Newcategory.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (() {
                    setState(() {
                      if (currenttab2 == index) {
                        currenttab2 = -1;
                      } else {
                        currenttab2 = index;
                      }
                    });
                  }),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                  offset: Offset(2, 2),
                                ),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(Newcategory[index]["CategoryName"]),
                                currenttab2 == index
                                    ? const Icon(Icons.arrow_upward)
                                    : const Icon(Icons.arrow_downward),
                              ],
                            ),
                          ),
                        ),
                        ...(Newcategory[index]["Subcategory"] as List<String>)
                            .map(
                          (data) => currenttab2 == index
                              ? Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                              255, 80, 110, 126)
                                          .withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            data,
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              : Container(),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Most Popular ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.04),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: newinStoreData.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(() => ProductPage(
                        imageurl: newinStoreData[index]["ImageUrl"],
                        productname: newinStoreData[index]["ItemName"],
                        price: newinStoreData[index]["Price"]));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.28,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          children: [
                            Hero(
                              tag: newinStoreData[index]["ImageUrl"],
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.23,
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: CachedNetworkImage(
                                  imageUrl: newinStoreData[index]["ImageUrl"],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(newinStoreData[index]["ItemName"]),
                                const Spacer(),
                                Text(
                                  "₹${newinStoreData[index]["Price"].toString()}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
