import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD9D9D9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: 130,
                  height: 150,
                  child: const Center(
                    child: Image(
                      image: AssetImage('assets/images/user.png'),
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 85),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only( right: 130),
                          child: Text(
                            'Full Name ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            width: 235,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          

         const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Mail ID',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top:5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white, // Set the background color to white
                ),
                height: 55,
                width: 375,
               
              ),
            ),

         const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Mobile Number',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white, // Set the background color to white
                ),
                height: 55,
                width: 375,
               
              ),
            ),
           const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Address 1',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white, // Set the background color to white
                ),
                height: 90,
                width: 375,
               
              ),
            ), 
             const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Address 2',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white, // Set the background color to white
                ),
                height: 90,
                width: 405,
               
              ),
            ), 
        Padding(
  padding: const EdgeInsets.only(left: 240, top: 10),
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xff480461), // Set the background color to the desired color
    ),
    height: 55,
    width: 150,
    child: TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) =>Theme(data: ThemeData(
            dialogTheme: DialogTheme(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: Color.fromARGB(74, 38, 12, 47)
            )
          ),
          child: AlertDialog(
            actions: [
              TextButton(
                onPressed: () {
                  // Handle button press
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding:  EdgeInsets.only(right:55),
                  child:  Text('Sorry Can’t perform this Operation ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ],
          ),
          ),
        );
      },
      child: const Center(
        child: Text(
          'Change / Edit',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  ),
), 
        ],
          
      ), 
      
    );
  }
}
