import 'package:flutter/material.dart';
import 'package:cubesharp/component/home.dart';
import 'package:cubesharp/component/Grid_item.dart';

import '../component/BottomNavigation/dashboard.dart';
class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int currentTab=0;
  final PageStorageBucket bucket =PageStorageBucket();
  Widget currentScreen = const Dashboard();
  @override
  Widget build(BuildContext context) {
    List<Color> Clrs =[
      Color.fromARGB(255, 246, 111, 58),
      Color.fromARGB(255, 36, 131, 233),
      Color.fromARGB(255, 63, 208, 143),
    ];
    var imagelist = [
       'Images/slide1.png',
       'Images/slide3.png',
       'Images/slide4.png',
    ];
    var iconImageList=[
      'Images/icon1.png',
      'Images/icon2.png',
      'Images/icon3.png',
      'Images/icon4.png',
      'Images/icon5.png',
      'Images/icon6.png',
      'Images/icon7.png',


    ];
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {

                },
              );
            }),
        title: Text("Products",textAlign: TextAlign.center,),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello Dear",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  SizedBox(height: 5),
                  Text("Lets Shop Something!",style: TextStyle(fontSize: 18,color: Colors.black45),),
                ],
              ),
            ),
            SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15),
            child: Row(
               children: [
                 for(int i=0;i<3;i++)
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width/1.5,
                        height:MediaQuery.of(context).size.width/2.5,
                        decoration: BoxDecoration(
                          color:Clrs[i],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [
                                  Text("30% off on Winter Collection",
                                  style: TextStyle(color: Colors.white,
                                   fontSize: 22,
                                  ),
                                  ),
                                Container(
                                  width: 90,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      Center(
                                        child: Text("Shop Now",style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                              ),
                            ),
                             Image.asset(imagelist[i],height: 180,width: 110,),
                          ],
                        ),

                )

               ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  ),
                  Text("See All",
                  style: TextStyle(
                    color: Colors.black54
                  ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    for(var i=0;i<7;i++)
                      Container(
                        height:50,
                        width: 50,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFD4ECF7),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ]
                        ),
                        child: Padding(padding:EdgeInsets.all(6),
                        child: Image.asset(iconImageList[i]),
                        ),
                      )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
             GridItem(),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_cart),
        backgroundColor: Colors.redAccent,
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 15,
        child:Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     MaterialButton(
                         minWidth: 40,
                         onPressed: (){
                           setState(() {
                             currentTab=0;
                           });
                         },
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.home,
                           color: currentTab==0?Colors.red:Colors.grey,
                           ),
                           Text(
                               'Home',
                             style: TextStyle(color: currentTab==0?Colors.red:Colors.grey),
                           )
                         ],
                       ),
                     ),
                     MaterialButton(
                       minWidth: 40,
                       onPressed: (){
                         setState(() {
                           currentTab=1;
                         });
                       },
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.favorite_border,
                             color: currentTab==1?Colors.red:Colors.grey,
                           ),
                           Text(
                             'Wishlist',
                             style: TextStyle(color: currentTab==1?Colors.red:Colors.grey),
                           )
                         ],
                       ),
                     ),
                     SizedBox(width:20,),
                     MaterialButton(
                       minWidth: 40,
                       onPressed: (){
                         setState(() {
                           currentTab=2;
                         });
                       },
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.list_alt,
                             color: currentTab==2?Colors.red:Colors.grey,
                           ),
                           Text(
                             'Order',
                             style: TextStyle(color: currentTab==2?Colors.red:Colors.grey),
                           )
                         ],
                       ),
                     ),
                     MaterialButton(
                       minWidth: 40,
                       onPressed: (){
                         setState(() {
                           currentTab=3;
                         });
                       },
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.person,
                             color: currentTab==3?Colors.red:Colors.grey,
                           ),
                           Text(
                             'Profile',
                             style: TextStyle(color: currentTab==3?Colors.red:Colors.grey),
                           )
                         ],
                       ),
                     ),

                   ],
              )
            ],
          ),
        )
      ),
    );
  }
}
