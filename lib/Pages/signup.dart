import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignUp> {
   final TextEditingController firstName = TextEditingController(text: "");
   final TextEditingController lastName = TextEditingController(text: "");
   final TextEditingController email = TextEditingController(text: "");
   final TextEditingController phoneNumber = TextEditingController(text: "");
   final TextEditingController password = TextEditingController(text: "");
   final TextEditingController confirmPassword = TextEditingController(text: "");

   bool _isPasswordVisible = false;
   void togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: SizedBox(
                      child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/logo_app.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                                  ),
                    ),
                  ),
                const SizedBox(height: 20),
                TextField(
                  controller: firstName,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(hintText: "first name",
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    ),
                   border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: lastName,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(hintText: "last name",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    ),
                   border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: "Email address",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                      ),
                    )
                  ),
                  const SizedBox(height: 20),
                  
                  Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      TextField(
                      controller: password,
                      obscureText: _isPasswordVisible,
                      decoration: InputDecoration(hintText: "Password",
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      )
                    ),
                    IconButton(
                      onPressed: togglePasswordVisibility,
                      icon: Icon(_isPasswordVisible?
                      Icons.visibility_off
                      :Icons.visibility,
                      color: Colors.grey,
                      )
                    )
                    ]
                  ),
                  SizedBox(height: 20),
                  Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      TextField(
                      controller: confirmPassword,
                      obscureText: _isPasswordVisible,
                      decoration: InputDecoration(hintText: "Confirm Password",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      ),
                    ),
                    IconButton(
                      onPressed: togglePasswordVisibility,
                      icon: Icon(_isPasswordVisible?
                      Icons.visibility_off
                      :Icons.visibility,
                      color: Colors.grey,
                      )
                    )
                    ]
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width:double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: Text(
                        " SIGN UP ",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Colors.blue[800],
                      )
                      ),
        
                  ),
                  SizedBox(height: 60,),
                   Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Already have an Account?",style: TextStyle(color: Colors.grey,fontFamily: 'Poppins'),),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacementNamed(context,'/login');
                    },
                    child: Text('Log In',
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
                    )
                  )
                ]
              )
                ]
              ),
            ),
          ),
        )
    );
  }
}