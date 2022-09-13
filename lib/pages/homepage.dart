import 'package:flutter/material.dart';
import '../Utils/job_cards.dart';
import '../Utils/job_tiles.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //menu text style
  var textStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

final List jobCardDetails = [
//this will contain the job card details
//[logoimagepath, jobTitle, payRate]
  ['lib/images/google.png', 'UI/UX Designer', '45'],
  ['lib/images/uber.png', 'Product Manager', '43'],
  ['lib/images/nike.png', 'Programmer', '200']


  ];

  final List jobTilesDetails = [
//this will contain the job card details
//[logoimagepath, jobTitle, payRate, companyName]
    ['lib/images/nike.png', 'UI/UX Designer', '45', 'Nike'],
    ['lib/images/uber.png', 'Product Manager', '43', 'Uber'],
    ['lib/images/google.png', 'Programmer', '200', ' Google']

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('M O D E R N   A P P'),
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.orangeAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [

              Column(
                children: [

                  //menu header
                  DrawerHeader(child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle

                    ),
                    child: Center(
                      child: Text(
                        'L O G O', style: TextStyle(
                          color: Colors.white
                      ),
                      ),
                    ),
                  ),),

                  // Menu items

                  //home menu

                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.home, color: Colors.black,),
                    ),
                    title: Text('H O M E',
                      style: textStyle),
                  ),

                  //inbox menu
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.chat_bubble, color: Colors.black,),
                    ),
                    title: Text('I N B O X',
                      style: textStyle),
                  ),

                  //settings
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.settings, color: Colors.black,),
                    ),
                    title: Text(' S E T T I N G S',
                      style: textStyle),
                  ),

                ],
              ),

              //logout
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.logout, color: Colors.black,),
                  ),
                  title: Text('L O G O U T',
                    style: textStyle,),
                ),
              ),


            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Discover a New Path', style: TextStyle(
              fontSize: 27, fontWeight: FontWeight.bold,
            ),
            ),
          ),

          SizedBox(height: 25),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                //main search box
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          child: Image.asset('lib/icons/search.png'),
                        ),

                        SizedBox(width: 10,),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for a Job',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //perference Icon
                SizedBox(width:10,),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 50,
                  child: Image.asset('lib/icons/settings.png', color: Colors.white,),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),

                ),

              ],
            ),
          ),
          SizedBox(height: 50,),
          //for you job cards
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'For You', style: TextStyle(
              fontSize: 27, fontWeight: FontWeight.bold,
            ),
            ),
          ),

          SizedBox(height: 25,),

          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: jobCardDetails.length,
                itemBuilder: (context, index) {
              return JobCard(
                companyLogoImage: jobCardDetails[index][0],
                jobTitle: jobCardDetails[index][1],
                payRate: jobCardDetails[index][2],);
            }),),

          SizedBox(height: 20,),


          //for recently added
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Recently added',
              style: TextStyle(
              fontSize: 27,
                fontWeight: FontWeight.bold,
            ),
            ),
          ),
          SizedBox(height: 4,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.builder(
                itemCount: jobTilesDetails.length,
                itemBuilder: (context, index) {
                return JobTiles(
                  companyLogoImage: jobTilesDetails[index][0],
                  jobTitle: jobTilesDetails[index][1],
                  payRate: jobTilesDetails[index][2],
                  companyName: jobTilesDetails[index][3],
                );
              },),
            ),
          ),
        ],
      )
    );
  }
}
