// import 'package:flutter/material.dart';

// import '../UserScreenOne.dart';

// class UserLogin extends StatelessWidget {
//   const UserLogin({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.black12,
//       appBar: AppBar(
//         title: const Text('User Login'),
//       ),
//       body: Container(
//         height: size.height,
//         width: size.width,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(
//               'assets/images/therapistlogin.jpg',
//             ),
//             fit: BoxFit.cover,
//           ),
//           gradient: LinearGradient(
//             colors: [Colors.purple, Colors.green],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Container(
//           height: size.height * 0.3,
//           width: size.width * 0.9,
//           decoration: const BoxDecoration(color: Colors.transparent),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const TextField(
//                   decoration: InputDecoration(
//                     labelText: 'Email',
//                     filled: true,
//                     fillColor: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 const TextField(
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     filled: true,
//                     fillColor: Colors.white,
//                   ),
//                   obscureText: true,
//                 ),
//                 const SizedBox(height: 30),
//                 SizedBox(
//                   height: size.height * 0.07,
//                   width: size.width * 0.98,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const UserScreenOne(),
//                         ),
//                       );
//                     },
//                     child: const Text(
//                       'Login',
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                     // color: Colors.blue,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:docapp/loginsignup/textbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../userscreen.dart';
import 'constants.dart';

class UserSignIn extends StatefulWidget {
  @override
  _UserSignInState createState() => _UserSignInState();
}

class _UserSignInState extends State<UserSignIn> {
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_sharp)),
      ),
      body: SafeArea(
        //to make page scrollable
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Welcome back.",
                            style: kHeadline,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "You've been missed!",
                            style: kBodyText2,
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          const MyTextField(
                            hintText: 'Phone, email or username',
                            inputType: TextInputType.text,
                          ),
                          MyPasswordField(
                            isPasswordVisible: isPasswordVisible,
                            onTap: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Dont't have an account? ",
                          style: kBodyText,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   CupertinoPageRoute(
                            //     builder: (context) => RegisterPage(),
                            //   ),
                            // );
                          },
                          child: Text(
                            'Register',
                            style: kBodyText.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyTextButton(
                      buttonName: 'Sign In',
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const UserScreenOne(),
                          ),
                        );
                      },
                      bgColor: Colors.white,
                      textColor: Colors.black87,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
