import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {

  final bool isBuyer;
  const RegisterPage({super.key, required this.isBuyer});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final List<String> requestTypes = ["รายบุคคล", "องค์กร"];

  String? behalf;

  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            AppBar(
              scrolledUnderElevation: 0,
              title: Text(widget.isBuyer?"ผู้ซื้อ":"ผู้ขาย"),
              centerTitle: true,
              leading: IconButton(onPressed: (){
                Navigator.pop(context);
              },icon: const Icon(Icons.arrow_back_ios_sharp,color: Colors.black,)),
              backgroundColor: Colors.transparent,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).devicePixelRatio*19),
              child: SingleChildScrollView(
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
                            // Image.asset(
                            //   "assets/logo/anthr_white_logo.png",
                            //   height: 300,
                            //   width: 300,
                            // ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "สมัครสมาชิก",
                                  style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Row(
                              children: [
                                Icon(Icons.drive_file_rename_outline),
                                Text(" ชื่อ - สกุล",style: TextStyle(fontSize: 17),)
                              ],
                            ),
                            const SizedBox(height: 15),
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
                                  return null;
                                },
                                onChanged: (String username) {

                                },
                                decoration: const InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: "ชื่อ",
                                  labelStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  errorStyle: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
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
                                  return null;
                                },
                                onChanged: (String username) {

                                },
                                decoration: const InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: "นามสกุล",
                                  labelStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  errorStyle: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
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
                                keyboardType: TextInputType.phone,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp("[0-9]"),
                                  ),
                                ],
                                style: const TextStyle(fontSize: 18),
                                validator: (value) {
                                  return null;
                                },
                                onChanged: (String username) {

                                },
                                decoration: const InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefixIcon: Icon(Icons.phone,color: Colors.grey,),
                                  labelText: " เบอร์โทรศัพท์",
                                  labelStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  errorStyle: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            const Row(
                              children: [
                                Icon(Icons.account_circle),
                                Text(" ชื่อผู้ใช้ - รหัสผ่าน",style: TextStyle(fontSize: 17),)
                              ],
                            ),
                            const SizedBox(height: 15),
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
                                keyboardType: TextInputType.emailAddress,
                                style: const TextStyle(fontSize: 18),
                                validator: (value) {
                                  return null;
                                },
                                onChanged: (String username) {

                                },
                                decoration: const InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: "Email",
                                  labelStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  errorStyle: TextStyle(fontSize: 15),
                                  prefixIcon: Icon(Icons.email,
                                    color: Colors.grey,)
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
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
                                  return null;
                                },
                                onChanged: (String username) {

                                },
                                decoration:  InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: "Password",
                                  labelStyle:const TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey),
                                  border:const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  errorStyle:const TextStyle(fontSize: 15),
                                  prefixIcon:const Icon(
                                    Icons.lock,
                                    color: Colors.grey,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() => obscure = !obscure);
                                    },
                                    icon: Icon(
                                      obscure ? Icons.visibility_off : Icons.visibility,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
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
                                  return null;
                                },
                                onChanged: (String username) {

                                },
                                decoration:  InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: "Confirm Password",
                                  labelStyle:const TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey),
                                  border:const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  errorStyle:const TextStyle(fontSize: 15),
                                  prefixIcon:const Icon(
                                    Icons.lock,
                                    color: Colors.grey,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() => obscure = !obscure);
                                    },
                                    icon: Icon(
                                      obscure ? Icons.visibility_off : Icons.visibility,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            if(widget.isBuyer)...[
                              const Row(
                                children: [
                                  Icon(Icons.person_pin_rounded),
                                  Text(" ในนามของ",style: TextStyle(fontSize: 17),)
                                ],
                              ),
                              const SizedBox(height: 15),
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
                                child: DropdownButtonFormField2(
                                    decoration: const InputDecoration(
                                      floatingLabelBehavior: FloatingLabelBehavior.never,
                                      fillColor: Colors.white,
                                      filled: true,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey),
                                      ),
                                      errorStyle: TextStyle(
                                          fontFamily: 'kanit', fontSize: 15),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                    ),
                                    validator: (value) {
                                      return null;
                                    },
                                    style:
                                    const TextStyle(color: Colors.black, fontSize: 15),
                                    hint: const Text(
                                      "Status",
                                      style: TextStyle(
                                          fontFamily: 'kanit',
                                          fontSize: 18,
                                          color: Colors.grey),
                                    ),
                                    isExpanded: true,
                                    dropdownStyleData: DropdownStyleData(
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
                                    ),
                                    items: requestTypes.map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(
                                                value,
                                                style: const TextStyle(
                                                    fontFamily: 'kanit', fontSize: 18),
                                              ));
                                        }).toList(),
                                    onChanged: (String? value) {
                                      setState(() {
                                        behalf = value;
                                      });
                                    }),
                              ),

                              if(behalf != null && behalf == "องค์กร")...[
                                const SizedBox(height: 30),
                                const Row(
                                  children: [
                                    Icon(Icons.business_outlined),
                                    Text(" บริษัท",style: TextStyle(fontSize: 17),)
                                  ],
                                ),
                                const SizedBox(height: 15),
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
                                      return null;
                                    },
                                    onChanged: (String username) {

                                    },
                                    decoration: const InputDecoration(
                                      floatingLabelBehavior: FloatingLabelBehavior.never,
                                      fillColor: Colors.white,
                                      filled: true,
                                      labelText: "ชื่อบริษัท",
                                      labelStyle: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      errorStyle: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
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
                                    keyboardType: TextInputType.phone,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                        RegExp("[0-9]"),
                                      ),
                                    ],
                                    style: const TextStyle(fontSize: 18),
                                    validator: (value) {
                                      return null;
                                    },
                                    onChanged: (String username) {

                                    },
                                    decoration: const InputDecoration(
                                      floatingLabelBehavior: FloatingLabelBehavior.never,
                                      fillColor: Colors.white,
                                      filled: true,
                                      labelText: "จำนวนพนักงาน",
                                      labelStyle: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      errorStyle: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                              const SizedBox(height: 30),
                            ],
                            SizedBox(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    elevation: 10,
                                      backgroundColor: const Color(0xff68D5E8),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10))),
                                  child: const Text(
                                    "ยืนยัน",
                                    style: TextStyle(fontSize: 18,color: Colors.white),
                                  ),
                                )),
                          ],
                        ),
                      ),
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
