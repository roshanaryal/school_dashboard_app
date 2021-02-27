import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:dash_board_app/detail_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.34,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/top_header.png"),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover)),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"),
                          radius: 32,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Roshan Aryal",
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              "22343",
                              style: TextStyle(
                                  fontFamily: "Montserrat Regular",
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      primary: false,
                      children:List.generate(itemdetaillist.length, (index) {

                        return SelectCard(detail: itemdetaillist[index]);

                        }
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class itemDetail {
  const itemDetail(this.text, this.image);

  final String text;
  final String image;

//itemDetail(this.text, this.image);
}

const List<itemDetail> itemdetaillist = const <itemDetail>[
  const itemDetail('Personal detail',
      'https://image.flaticon.com/icons/svg/1904/1904425.svg'),
  const itemDetail('Course shedule',
      'https://image.flaticon.com/icons/svg/1904/1904565.svg'),
  const itemDetail('Attendance record',
      'https://image.flaticon.com/icons/svg/1904/1904527.svg'),
  const itemDetail('Study result',
      'https://image.flaticon.com/icons/svg/1904/1904437.svg'),
  const itemDetail('Course booking',
      'https://image.flaticon.com/icons/svg/1904/1904235.svg'),
  const itemDetail('Course plan',
      'https://image.flaticon.com/icons/svg/1904/1904221.svg'),
];

class SelectCard extends StatelessWidget {
  final itemDetail detail;

  const SelectCard({Key key, this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
         shape:RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(12)
         ) ,
      child: InkWell(
        splashColor: Colors.grey,
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage(detail: detail.text,)),
          );
       //  print("tap");
       //    return Fluttertoast.showToast(
       //        msg:detail.text,
       //        toastLength: Toast.LENGTH_SHORT,
       //        gravity: ToastGravity.CENTER,
       //        timeInSecForIosWeb: 1,
       //        backgroundColor: Colors.green,
       //        textColor: Colors.white,
       //        fontSize: 16.0
       //    );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.network(
              detail.image,
              height: 50,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
             detail.text,
              style: TextStyle(fontFamily: "Montserrat Regular", fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
