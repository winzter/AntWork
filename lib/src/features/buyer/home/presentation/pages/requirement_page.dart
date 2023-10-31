import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class RequirementPage extends StatefulWidget {
  const RequirementPage({super.key});

  @override
  State<RequirementPage> createState() => _RequirementPageState();
}

class _RequirementPageState extends State<RequirementPage> {
  int currentStep = 0;

  String fileName = "No file selected";
  bool isUpload = false;
  String filePath = "";
  late File fileSend;
  FilePickerResult? result;

  List<Step> getStep() => [
        Step(
          title: const Text("Detail"),
          content: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3),
                  ),
                ]),
            child: Form(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Give your project brief a title",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                          child: Text(
                        "Keep it short and simple - this will help us match you to the right category",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: TextFormField(
                      maxLines: 3,
                      maxLength: 70,
                      style: const TextStyle(fontSize: 17),
                      validator: (value) {
                        return null;
                      },
                      onChanged: (String username) {},
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Develop an Android app for a startup",
                        labelStyle: TextStyle(color: Colors.grey,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        errorStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "What are you looking to get done?",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                          child: Text(
                            "This will help get your brief to the right talent. Specifics help here.",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          )),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: TextFormField(
                      scrollPhysics: const BouncingScrollPhysics(),
                      maxLines: 5,
                      maxLength: 2000,
                      style: const TextStyle(fontSize: 17),
                      validator: (value) {
                        return null;
                      },
                      onChanged: (String username) {},
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "I need...",
                        labelStyle: TextStyle(color: Colors.grey,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        errorStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ElevatedButton.icon(
                            onPressed: () async {
                              result = await FilePicker.platform.pickFiles(
                                type: FileType.custom,
                                allowedExtensions: ['jpg', 'png', 'jpeg'],
                                allowMultiple: false,
                                withData: false,
                                withReadStream: false,
                              );
                              if (result != null) {
                                setState(() {
                                  isUpload = true;
                                  filePath = result!.files.single.path!;
                                  fileName = result!.files.first.name;
                                });
                              } else {
                                return;
                              }
                            },
                            icon: const Icon(Icons.folder),
                            label: const Text(
                              "Attach File",
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                fileName,
                              ),
                              if (isUpload)
                                InkWell(
                                  onTap: () async {
                                    File file = File(result!.files.single.path!);
                                    await file.delete();
                                    setState(() {
                                      isUpload = false;
                                      filePath = "";
                                      fileName = "No file selected";
                                      log("file is deleted!");
                                    });
                                    log(result!.files.single.path.toString());
                                  },
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                )
                            ],
                          ),
                          Text(
                            "*Allowed *.jpeg, *.jpg, *.png, max size of 3 MB",
                            softWrap: true,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          isActive: currentStep >= 0,
        ),
        Step(
          title: const Text("Timeline & Budget"),
          content: Container(),
          isActive: currentStep >= 1,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          title: const Text("Job Requirement",
              style: TextStyle(fontSize: 25, color: Colors.white)),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff6FC9E4),
              Color(0xffE793B8),
            ])),
          ),
        ),
        body: Stepper(
          physics: const BouncingScrollPhysics(),
          steps: getStep(),
          type: StepperType.horizontal,
          currentStep: currentStep,
          onStepContinue: () {
            final isLastStep = currentStep == getStep().length - 1;
            if (isLastStep) {
              print("Complete");
            } else {
              setState(() {
                currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            final bool isFirstStep = currentStep == 0;
            if (isFirstStep) {
              print("Back to start");
            } else {
              setState(() {
                currentStep -= 1;
              });
            }
          },
        ));
  }
}
