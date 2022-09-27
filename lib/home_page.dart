import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownvalue = 'Salatiga City, Central Java';
  var items = [
    'Salatiga City, Central Java',
    'İSTANBUL',
    'ANKARA',
    'İZMİR',
    'MUŞ',
  ];
  final List<String> banner = [
    "assets/images/banner1.png",
    "assets/images/banner2.png",
    "assets/images/banner3.png",
  ];
  final List<Color> colorss = [
    Color(0xffEDF7FF),
    Color(0xffECFCFF),
    Color(0xffFFEDDD),
    Color(0xffFFEEED),
    Color(0xffE9FFF8),
  ];
  final List<String> imagess = [
    "assets/images/fashion1.png",
    "assets/images/fashion2.png",
    "assets/images/fashion3.png",
    "assets/images/fashion4.png",
    "assets/images/fashion5.png",
  ];
  final List<String> Category_name = [
    "Apparel",
    "School",
    "Sports",
    "Electronic",
    "All",
  ];
  final List<String> product = [
    "assets/images/img.png",
    "assets/images/img1.png",
    "assets/images/img2.png",
    "assets/images/img3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivery address",
                          style: TextStyle(color: Color(0xffC8C8CB)),
                        ),
                        //Start DropDownButton
                        SizedBox(
                          height: 30,
                          child: DropdownButton(
                            value: dropdownvalue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        )
                        //END DropDownButton
                      ],
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset("assets/images/Buy.png")),
                            ),
                            Positioned(
                              left: 20,
                              top: 2.8,
                              child: SizedBox(
                                  width: 18,
                                  child: Image(
                                    image: AssetImage(
                                      "assets/images/buy2.png",
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon:
                                Image.asset("assets/images/Notification.png")),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //START SEARCH
              Container(
                padding: EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                width: double.infinity,
                child: TextFormField(
                  cursorHeight: 20,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Here...",
                    hintStyle: TextStyle(fontSize: 18),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      size: 40,
                      color: Color(0xff939393),
                    ),
                  ),
                ),
              ),
              //END SEARCH
              SizedBox(
                height: 10,
              ),
              //START BANNER
              Container(
                width: double.infinity,
                height: 145,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: banner.length,
                  itemBuilder: (context, index) {
                    return Image(
                      image: AssetImage(banner[index]),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //END BANNER
              //START CATEGORY
              Text(
                "Category",
                style: TextStyle(
                    color: Color(0xff393F42),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Category_name.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: colorss[index],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            width: 25,
                            height: 25,
                            margin: EdgeInsets.all(8),
                            child: Image(image: AssetImage(imagess[index])),
                          ),
                        ),
                        Text(
                          "${Category_name[index]}",
                          style: TextStyle(color: Color(0xff939393)),
                        ),
                      ],
                    );
                  },
                ),
              ),
              //END CATEGORY
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent product",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff393F42)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Filters"),
                        Container(
                          height: 30,
                          width: 30,
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/Filter1.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //START GRIDVIEW
              SizedBox(
                height: 550,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.6),
                  ),
                  itemCount: product.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color(0xffE5E5E5),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(children: [
                        Image.asset(
                          product[index],
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Monitor LG 22”inc 4K",
                              style: TextStyle(
                                color: Color(0Xff393F42),
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "\$199.99",
                              style: TextStyle(
                                  color: Color(0xff393F42),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 145,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff67C4A7),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Text(
                                "Add to cart",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    );
                  }),
                ),
              ),
              //END GRIDVIEW
            ],
          ),
        ),
      ),
    );
  }
}
