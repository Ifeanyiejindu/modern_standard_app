import 'package:flutter/material.dart';

class JobTiles extends StatelessWidget {
  final String companyLogoImage ;
  final String jobTitle ;
  final String payRate ;
  final String companyName;

  JobTiles ({
    required this.companyLogoImage,
    required this.jobTitle,
    required this.payRate ,
    required this.companyName,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            children: [
              //logo
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)
                ),
                height: 50,
                child: Image.asset(companyLogoImage),
              ),

              SizedBox(width: 10,),

              //jobTitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      jobTitle, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  ),
                   SizedBox(height: 4,),
                   Text(
                     companyName, style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.grey
                   ),
                   )
                ],
              ),
            ],
          ),

            //payRate
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.orange
              ),
                child: Text ('\$'+ payRate + '/hr',),),
          ],

        )
      ),
    );
  }
}
