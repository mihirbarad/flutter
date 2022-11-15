import 'package:flutter/material.dart';
import 'package:traveler/screen/colors.dart';

class bestplace extends StatefulWidget {
  const bestplace({super.key});

  @override
  State<bestplace> createState() => _bestplaceState();
}

class _bestplaceState extends State<bestplace> {
  List imgList = [
    "https://upload.wikimedia.org/wikipedia/commons/e/e0/View_of_Bhavnagar.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/e/e0/View_of_Bhavnagar.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/e/e0/View_of_Bhavnagar.jpg",
  ];

  List areaname = [
    'Akwada Leak',
    'Bortalav',
    'Pil garden',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.keyboard_backspace_rounded,
                        size: 40,
                        color: ColorConstants.kPrimaryColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Icon(
                      Icons.feedback_outlined,
                      size: 30,
                      color: ColorConstants.kPrimaryColor,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: areaname.length,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 249, 215, 182),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 80,
                              backgroundImage: NetworkImage(imgList[index]),
                            ),
                            Text(areaname[index])
                            //Text("$areaname[index]"),
                          ],
                        ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
