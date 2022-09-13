import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {

  final String companyLogoImage ;
  final String jobTitle ;
  final String payRate ;

  JobCard ({
  required this.companyLogoImage,
  required this.jobTitle,
  required this.payRate ,
}) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 280,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Company Logo
                Container(
                  child: Image.asset(companyLogoImage),
                  height: 60,
                ),
                //Fulltime or part time?

                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(
                      jobTitle
                  ),
                )
              ],
            ),

            //Job Title
            Text('UI/UX Designer',
            style: TextStyle(
              color: Colors.grey[900],
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),),
            
            //pay rate
            Text('\$' +payRate+ '/hr',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}
