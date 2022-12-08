import 'package:flutter/material.dart';
import 'package:traveling/otherscreen/bhavnagar.dart';
import 'package:traveling/places/Dalhosie.dart';
import 'package:traveling/places/Kinnaur.dart';
import 'package:traveling/places/manali.dart';
import 'package:traveling/places/mussoorie.dart';
import 'package:traveling/places/ooty.dart';
import 'package:traveling/places/pahalgam.dart';
import 'package:traveling/places/shimla.dart';
import 'package:traveling/places/wayand.dart';

class place extends StatefulWidget {
  const place({super.key});

  @override
  State<place> createState() => _placeState();
}

class _placeState extends State<place> {
  List _selectedIndexs = [];
  List imagepath = [
    'https://i.ytimg.com/vi/FxXXHglhCTQ/maxresdefault.jpg',
    'https://images.thrillophilia.com/image/upload/s--GtWQwh90--/c_fill,g_auto,h_600,q_auto,w_975/f_auto,fl_strip_profile/v1/images/photos/000/142/609/original/1548921352_kinnaaaaur.jpg.jpg',
    'https://i.cdn.newsbytesapp.com/images/l86420220107105737.jpeg',
    'https://ihplb.b-cdn.net/wp-content/uploads/2022/03/Places-to-visit-in-Dalhousie.jpg',
    'https://hindi.newsclick.in/sites/default/files/2021-06/mussoorie.jpg',
    'https://i.ytimg.com/vi/imy3ooM0UHE/maxresdefault.jpg',
    'https://i.ytimg.com/vi/nwJmPwWEhKg/maxresdefault.jpg',
    'https://i.cdn.newsbytesapp.com/images/l37720220323154704.jpeg',
  ];
  List placename = [
    'Manali',
    'Kinnaur',
    'Ooty',
    'Dalhousie',
    'Mussoorie',
    'Pahalgam',
    'Shimla',
    'Wayanad',
  ];
  final List _noteList = [
    Manali(),
    kinnaur(),
    ooty(),
    dalhosie(),
    mussoorie(),
    pahalgam(),
    shimla(),
    wayand(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: imagepath.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                final _isSelected = _selectedIndexs.contains(index);
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_isSelected) {
                        _selectedIndexs.remove(index);

                        print("is selected <----if--->");
                      } else if (_isSelected != 1) {
                        _selectedIndexs.add(index);
                        print("is selected<----else--->");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => _noteList[index],
                            ));
                      }
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 12,
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.all(
                        MediaQuery.of(context).size.height / 120),
                    decoration: BoxDecoration(
                      // color: _isSelected
                      //     ? Color.fromARGB(255, 199, 199, 204)
                      //     : Color.fromARGB(255, 253, 254, 255),
                      color: Color.fromARGB(255, 253, 254, 255),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(115, 176, 175, 175),
                            offset: Offset(0, 25),
                            blurRadius: 5,
                            spreadRadius: -5)
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          imagepath[index],
                          height: MediaQuery.of(context).size.height / 5.7,
                          width: double.maxFinite,
                        ),
                        Text(placename[index],
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 6, 67, 117))),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
