import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../loading_page/loading_page.dart';
import '../../../register/presentation/pages/route_register_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late bool obscure = true;
  bool userFieldError = false;
  bool passwordFieldError = false;
  bool isLoginFail = false;
  bool isLoading = false;
  Map loginData = {"username": "", "password": ""};

  Future<bool> onBackPress() async{
    SystemNavigator.pop();
    return false;
  }

  @override
  Widget build(BuildContext context) {
    // final logInProvider = Provider.of<LoginProvider>(context,listen: true);
    return WillPopScope(
      onWillPop: onBackPress,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                constraints: const BoxConstraints.expand(),
                child: Image.asset(
                  'assets/logo/antwork_bg1.png',
                  fit: BoxFit.cover,
                ),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Form(
                      autovalidateMode: AutovalidateMode.disabled,
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/logo/anthr_white_logo.png",
                              height: 300,
                              width: 300,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "เข้าสู่ระบบ",
                                  style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3),
                                    ),
                                  ]
                              ),
                              child: TextFormField(
                                style: const TextStyle(fontSize: 18),
                                validator: (value) {
                                  // if (value == null || value.isEmpty) {
                                  //   setState(() => userFieldError = true);
                                  //   return "กรุณาใส่ชื่อผู้ใช้";
                                  // }
                                  // setState(() => userFieldError = false);
                                  return null;
                                },
                                onChanged: (String username) {
                                  setState(() {
                                    loginData["username"] = username;
                                  });
                                },
                                decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: "ชื่อผู้ใช้",
                                  labelStyle: TextStyle(
                                      fontSize: 18,
                                      color: userFieldError ? Colors.red : Colors.grey),
                                  prefixIcon: Icon(Icons.account_circle_rounded,
                                      color: userFieldError ? Colors.red : Colors.grey),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  errorStyle: const TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3),
                                    ),
                                  ]
                              ),
                              child: TextFormField(
                                style: const TextStyle(fontSize: 18),
                                validator: (value) {
                                  // if (value == null || value.isEmpty) {
                                  //   setState(() => passwordFieldError = true);
                                  //   return "กรุณาใส่รหัสผ่าน";
                                  // } else if (value.length < 8) {
                                  //   setState(() => passwordFieldError = true);
                                  //   return "รหัสผ่านต้องมีอย่างน้อย 8 ตัวอักษร";
                                  // }
                                  // setState(() => passwordFieldError = false);
                                  return null;
                                },
                                onChanged: (String password) {
                                  setState(() {
                                    loginData["password"] = password;
                                  });
                                },
                                obscureText: obscure,
                                decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: "รหัสผ่าน",
                                  labelStyle: TextStyle(
                                      fontSize: 18,
                                      color:
                                      passwordFieldError ? Colors.red : Colors.grey),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: passwordFieldError ? Colors.red : Colors.grey,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() => obscure = !obscure);
                                    },
                                    icon: Icon(
                                      obscure ? Icons.visibility_off : Icons.visibility,
                                    ),
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  errorStyle: const TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  "ยังไม่มี Account ใช่ไหม?",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white),
                                ),
                                const SizedBox(width: 5,),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RouteRegisterPage(),));
                                  },
                                  child: const Text(
                                    "สมัครเลย!",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.blueAccent),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 5,
                                  backgroundColor: const Color(0xffa98bdc),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                onPressed: () {
                                  FocusScope.of(context).unfocus();
                                  if (formKey.currentState!.validate()) {
                                    log("success");
                                    Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                        const LoadingPage(), // Replace with your home page
                                      ),
                                          (route) => false,
                                    );
                                  } else {
                                    log("not success");
                                  }
                                },
                                child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 15,),
                                        Text("เข้าสู่ระบบ",style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white),)
                                      ],
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "BETA VERSION",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
