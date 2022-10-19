import 'package:flutter/material.dart';
import 'package:flutter71022preactice/task2/itemscreens/cart.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';

class italian extends StatefulWidget {
  italian({Key? key}) : super(key: key);

  @override
  State<italian> createState() => _italianState();
}

class _italianState extends State<italian> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.height / 36),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_sharp,
                            color: Color.fromARGB(255, 164, 66, 8),
                            size: 30,
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: Color.fromARGB(255, 164, 66, 8),
                          size: 35,
                        )),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(50),
                  child: Column(
                    children: [
                      Image.asset(
                        'asset/pngwing.com.png',
                        scale: 0.8,
                      ),
                      Text(
                        "Italian",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 164, 66, 8),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Flexible(
                    fit: FlexFit.tight,
                    child: Text(
                      "Italian cuisine ranks alongside French cuisine in terms of worldwide fame. Pizza and pasta have become world dishes, which are not only cooked in restaurants, but also by most home cooks. No matter where they grow up in Europe, all children are familiar with Italian dishes, such as pizza Margherita and spaghetti bolognese.",
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 130, 89, 75),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Please Enter Your Rating",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 97, 67, 57),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                RatingBar.builder(
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 80, 65, 21),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: Text('Order Now'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 109, 35, 11),
                    onPrimary: Colors.white,
                    shadowColor: Colors.red,
                    elevation: 5,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OrderNow()));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrderNow extends StatefulWidget {
  OrderNow({Key? key}) : super(key: key);

  @override
  State<OrderNow> createState() => _OrderNowState();
}

class _OrderNowState extends State<OrderNow> {
  int count = 0;

  List<String> detailsofdish = [
    "1 Balsamic vinegar.,\n 1 Garlic. \n 2 Pasta \n 1 Fresh tomatoes \n 1 Oregano.",
    "1 Balsamic vinegar.,\n 1 Garlic. \n 2 Pasta \n 1 Fresh tomatoes \n 1 Oregano.",
    "2 Balsamic vinegar.,\n 3 Garlic. \n 4 Pasta \n 3 Fresh tomatoes \n 4 Oregano.",
    "2 Balsamic vinegar.,\n 4 Garlic. \n 3 Pasta \n 2 Fresh tomatoes \n 3 Oregano.",
  ];
  List<String> nameofdish = [
    "half dish",
    "Full Dish",
    "Diwali Dish",
    "Special Dish ",
  ];
  List<String> priceoffdish = [
    "₹150",
    "₹250",
    "₹350",
    "₹450",
  ];
  List<String> imageofdish = [
    "asset/dish  (1).png",
    "asset/dish  (3).png",
    "asset/dish  (1).png",
    "asset/dish  (3).png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Color.fromARGB(255, 164, 66, 8),
                    size: 30,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Color.fromARGB(255, 164, 66, 8),
                      size: 35,
                    )),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              // physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: nameofdish.length,
              itemBuilder: (context, index) {
                return Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 1.1,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 243, 240, 239),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        imageofdish[index],
                        height: 100,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            nameofdish[index],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 164, 66, 8),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0))),
                                  backgroundColor:
                                      Color.fromARGB(255, 136, 74, 19),
                                  title: Text(
                                    "Details",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  content: Text(
                                    detailsofdish[index],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      },
                                      child: Container(
                                        color: Color.fromARGB(255, 136, 74, 19),
                                        padding: const EdgeInsets.all(14),
                                        child: const Text(
                                          "Done",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Text(
                              "Show Details",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 133, 87, 60),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          cart(detailsofdish: detailsofdish)));
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromARGB(255, 123, 53, 13),
                                  border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 74, 33, 9),
                                  )),
                              child: Text(
                                'Order Now',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            priceoffdish[index],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 164, 66, 8),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: RatingBar.builder(
                              initialRating: 3,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemCount: 5,
                              itemSize: 20,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 80, 65, 21),
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                iconSize: 30,
                                icon: const Icon(
                                  Icons.add,
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      count++;
                                    },
                                  );
                                },
                              ),
                              Text(
                                "	$count",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 97, 57, 32)),
                              ),
                              Container(
                                padding: EdgeInsets.only(bottom: 20),
                                child: IconButton(
                                  iconSize: 30,
                                  icon: const Icon(Icons.minimize_outlined),
                                  onPressed: () {
                                    if (count == 0) {
                                      print("1----------------------");
                                      setState(() {
                                        count = 0;
                                      });
                                    }
                                    setState(
                                      () {
                                        if (count < 1) {
                                          count = 0;
                                        } else {
                                          count--;
                                        }
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
