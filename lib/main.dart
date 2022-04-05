


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/detailspage.dart';
import 'package:untitled5/utils/strings.dart';
import 'package:untitled5/utils/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios),
              color: Colors.white,
              ),
              Container(
                 width: 125.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.filter_list),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
          ),
          const SizedBox(height: 25.0,),
          Padding(padding: const EdgeInsets.only(left: 40.0),
          child: Row(
            children:  [
              Text( AppStrings.titleText1, style: AppStyles.whiteBoldFont,
              //   "Healthy",
              // style:
              // TextStyle(
              //   fontFamily: "Montserrat",
              //   color: Colors.white,
              //   fontWeight: FontWeight.bold,
              //   fontSize: 25.0
              // ),
    ),

              Text( AppStrings.titleText2, style: AppStyles.whiteFont,
                // "Food",
                // style: TextStyle(
                //     fontFamily: "Montserrat",
                //     color: Colors.white,
                //     fontSize: 25.0
                // ),
              ),
            ],
          ),
          ),
          SizedBox(height: 40.0,),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0))
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0,right: 20.0),
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: [
                        _buildFoodItem("assets/plate1.jpg", "Salmon Bowl", "₹ 150"),
                        _buildFoodItem("assets/plate2.jpg", "Spring Bowl", "₹ 250"),
                        _buildFoodItem("assets/plate3.jpg", "Avocado Bowl", "₹ 250"),
                        _buildFoodItem("assets/plate4.jpg", "Berry Bowl", "₹ 200"),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,),
    borderRadius: BorderRadius.circular(20.0),
                        ),
                      child: Center(
                        child: Icon(Icons.search_outlined,
                          color: Colors.black,),
                      ),
                      ),
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Icon(Icons.backpack_rounded,
                          color: Colors.black,),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 160.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Center(
                        child:
                        Text("Checkout",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Montserrat",
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

 Widget _buildFoodItem(String imgPath, String foodName,String price) {
  return Padding(
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
    child: InkWell(
      onTap: () {
        //Navigator.of(context).push(MaterialPageRoute(
        //             builder: (context) => DetailsPage(heroTag: imgPath,foodName: foodName,foodPrice: price,)));
        //
        },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Container(
           child: Row(
             children: [
               Hero(
                 tag: imgPath,
                 child: Image(
                   image: AssetImage(imgPath),
                   fit: BoxFit.cover,
                   height: 75.0,
                   width: 75.0
                 ),
               ),
               SizedBox(width: 10.0,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     foodName,
                     style: AppStyles.blackBoldFont,
                   ),
                   Text(
                     price,
                     style: AppStyles.greyFont,
                   ),
                 ],
               ),
             ],
           ),
         ),
          IconButton(onPressed: () {},
              icon: Icon(Icons.add),
          color: Colors.black,),
        ],
      ),
    ),
  );
 }