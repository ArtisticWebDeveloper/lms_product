// import 'dart:math';

// import 'package:flutter/material.dart';

// class LoginWidget extends StatefulWidget {
//   const LoginWidget({super.key});

//   @override
//   State<LoginWidget> createState() => _MyWidgetState();
// }

// /// creating login page
// class _MyWidgetState extends State<LoginWidget> {
//   final TextEditingController email = TextEditingController(text: "");
//   final TextEditingController password = TextEditingController(text: "");
//   bool _isLoading = false;
//   void submitForm() async {
//     setState(() {
//       _isLoading = true;
//     });
//     // simulate a delay of 3 seconds before the form is submitted
//     await Future.delayed(const Duration(seconds: 3));
//     if (email.text == "" || password.text == "") {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Please fill all fields")),
//       );
//     } else {
//       Navigator.pushReplacementNamed(context, '/home');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 1, // number of tabs
//       child: Scaffold(
//           body: Padding(
//         padding: const EdgeInsets.all(30.0),
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height * .15,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                   image: AssetImage('assets/logo_app.png'),
//                   fit: BoxFit.contain,
//                 )
//                     //background image
//                     ),
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 controller: email,
//                 decoration: InputDecoration(
//                   hintText: '+91 INDIA',
//                   hintStyle: const TextStyle(
//                       color: Colors.grey, fontWeight: FontWeight.bold),
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black, width: 2),
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black, width: 2),
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 obscureText: true,
//                 controller: password,
//                 decoration: InputDecoration(
//                   hintText: 'Mobile No.',
//                   hintStyle: const TextStyle(
//                     color: Colors.grey,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   suffix: const Icon(Icons.visibility),
//                   suffixIconColor: Colors.grey,
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black, width: 2),
//                     borderRadius: BorderRadius.circular(15.0),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black, width: 2),
//                     borderRadius: BorderRadius.circular(13.0),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               SizedBox(
//                 width: double.infinity,
//                 height: 40,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     submitForm();
//                   },
//                   child: const Center(child: Text('LOG IN')),
//                   style: ElevatedButton.styleFrom(
//                       shape: StadiumBorder(),
//                       foregroundColor: Colors.white,
//                       backgroundColor: Colors.blue),
//                 ),
//               )
//             ]),
//       )),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final TextEditingController email = TextEditingController(text: "");
  final TextEditingController password = TextEditingController(text: "");
  bool _isLoading = false;
  bool _isPasswordVisible = false; // Added for password visibility

  void submitForm() async {
    setState(() {
      _isLoading = true;
    });

    // Simulate a delay of 3 seconds before the form is submitted
    await Future.delayed(const Duration(seconds: 3));

    if (email.text.isEmpty || password.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please fill in all fields"),
        ),
      );
    } else {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  void togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo_app.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: email,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: '+91 INDIA',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman'
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
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment
                  .centerRight, // Align the visibility icon to the right
              children: [
                TextField(
                  obscureText: !_isPasswordVisible,
                  keyboardType: TextInputType.phone,
                  controller: password,
                  decoration: InputDecoration(
                    hintText: 'Mobile No.',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman'
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: togglePasswordVisibility,
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  submitForm();
                },
                child: const Text('LOG IN',style: TextStyle(fontFamily: 'Times New Roman'),),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("forget password? ",style: TextStyle(color: Colors.grey,fontFamily: 'Times New Roman'),),
              InkWell(
                  onTap: () {},
                  child: const Text(
                    'Get Help',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman'),
                  ))
            ]),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text('OR', style: TextStyle(color: Colors.grey, fontFamily: 'Times New Roman')),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton.icon(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: Size(140, 50)),
                icon: const Icon(
                  Icons.facebook_sharp,
                  size: 30,
                  color: Colors.blue,
                ),
                label: const Text(
                  'facebook',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold,fontFamily: 'Times New Roman'),
                ),
              ),
              ElevatedButton.icon(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: Size(140, 50)),
                icon: const Icon(
                  FontAwesomeIcons.google,
                  size: 25,
                  color: Colors.red,
                ),
                label: const Text(
                  'Google',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold,fontFamily: 'Times New Roman'),
                ),
              )
            ]),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: Size(150, 50)),
                  icon: const Icon(
                    FontAwesomeIcons.apple,
                    size: 25,
                    color: Colors.black,
                  ),
                  label: const Text(
                    'Apple',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold,fontFamily: 'Times New Roman'),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Text("Don't have an Account?",style: TextStyle(color: Colors.grey,fontFamily: 'Times New Roman'),),
                InkWell(
                  onTap: (){},
                  child: Text('SING UP',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman'),)
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}
