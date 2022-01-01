import 'package:flutter/material.dart';
import 'package:grocery/profile.dart';
import 'package:grocery/recipe.dart';
import 'home_1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  int _currentIndex=0;
  final page =[
    home_1(),
    recipe(),
    favourite(),
    cart(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(360, 690),
        orientation: Orientation.portrait);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffe6f2ff),
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,size: 30,),title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant_menu_sharp,size:30,),title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,size: 30,),title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,size: 30),title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.portrait_rounded,size: 30),title: Text('')),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex=index;
          });
        },
      ),
      body:
      page[_currentIndex],

    );
  }
}
class cart extends StatelessWidget {
  const cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class favourite extends StatefulWidget {
  const favourite({Key? key}) : super(key: key);

  @override
  _favouriteState createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


