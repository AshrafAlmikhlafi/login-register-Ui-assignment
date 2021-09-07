import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joinassignment/Screens/login/login.dart';
import 'package:joinassignment/components/background.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackGround(
        //here we've sent the column as a child to the BackGround and this column will holds the design of the register page
        // then it will be set on the middle of the BackGround's Stack
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //the container that holds the REGISTER TITLE IN THE BODY ON THE CENTER LEFT
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Text(
                'REGISTER',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2661FA),
                  fontSize: 30,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            //SPACE BETWEEN THE REGISTER TITLE AND THE USER NAME FIELD
            SizedBox(
              height: size.height * 0.03,
            ),
            //this container holds the name field
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                horizontal: 40.0,
              ),
              //THE USERNAME FIELD WITHE decoration:InputDecoration(labelText)
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'NAME',
                ),
              ),
            ),
            //SPACE BETWEEN THE  name field AND THE phoneNumber FIELD
            SizedBox(
              height: size.height * 0.03,
            ),
            //this container holds the PhoneNumber field
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                horizontal: 40.0,
              ),
              //THE USERNAME FIELD WITHE decoration:InputDecoration(labelText)
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                ),
              ),
            ),
            //SPACE BETWEEN THE  phoneNumber field AND THE userName FIELD
            SizedBox(
              height: size.height * 0.03,
            ),
            //the container that holds the the user name field
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                horizontal: 40.0,
              ),
              //THE USERNAME FIELD WITHE decoration:InputDecoration(labelText)
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'UserName',
                ),
              ),
            ),
            //SPACE BETWEEN THE  usrname field AND THE passwword FIELD
            SizedBox(
              height: size.height * 0.03,
            ),
            //the container that holds the the password field
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                horizontal: 40.0,
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                //this property makes the text we enter it to the field invisible '***'
                obscureText: true,
              ),
            ),
            ////SPACE BETWEEN THE fields AND THE login RaisedButton
            SizedBox(
              height: size.height * 0.05,
            ),
            //this container holds the raised button and put in centerRight
            //and gives the RaisedButton a margin
            //the container in the raised button specifies the design and the size of the raised button
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 10,
              ),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(88.0),
                ),
                textColor: Colors.white,
                //to prevent the icon from going out from the border of the container
                padding: const EdgeInsets.all(0),
                // this container holds the design of raised button to make the a nice visual to the button by add a container in the
                //raised button then the button will take the size of container
                child: Container(
                  //the alignment of the the text in the container
                  alignment: Alignment.center,
                  height: 50.5,
                  width: size.width * 0.4,
                  //to make decor for the container by specify the border
                  //radius.circular() the same as the shape of the raised button
                  //and specify the color by using gradient to fill the box The gradient is drawn under the image.
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      80.0,
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.blue,
                        Colors.grey,
                        Colors.green.shade900,
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "SIGN UP",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            // this container holds the Text(don't have an account? sign up)
            //and make it Clicked and does an action by click on it
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 10,
              ),
              //هذا العنصر يمكننا من جعل النص من الممكن الضغط عليه وعمل حدث ما في داحل خاصية الonTap:(){}
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: Text(
                  "Already Have an Account? Sign In",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2661fa)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
