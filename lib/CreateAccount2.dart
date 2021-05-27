import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taks1/Privacy.dart';

enum GenderType {
  male,
  female,
}

class CreateAccount2 extends StatefulWidget {
  @override
  _CreateAccount2State createState() => _CreateAccount2State();
}

class _CreateAccount2State extends State<CreateAccount2> {
  GenderType genderType = GenderType.male;
  List<String> photoUrl = [
    "https://images.unsplash.com/photo-1563306406-e66174fa3787?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "assets/back.png",
                        width: MediaQuery.of(context).size.width / 12,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Create Account",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Profile Picture",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "upload your picture",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    if (index < 5)
                      return Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                height: 120,
                                width: 120,
                                child: Image.network(
                                  photoUrl[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Image.asset(
                            "assets/Delete.png",
                            height: 30,
                            width: 30,
                          ),
                        ],
                      );
                    else {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset("assets/outlinepic.png"),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    "assets/picture.png",
                                    height: 50,
                                    width: 50,
                                  ),
                                  Text("Add more \n   picture")
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }
                  }),
              SizedBox(
                height: 10,
              ),
              Text(
                "Gender",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "select your gender",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.withOpacity(0.5))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                         onTap: (){
                          setState(() {
                            genderType = GenderType.male;
                          });
                        },
                                              child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(15)),
                              color: genderType == GenderType.male
                                  ? Colors.yellow
                                  : Colors.white),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.male),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "male",
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          )),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 100,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            genderType = GenderType.female;
                          });
                        },
                                              child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(15)),
                              color: genderType == GenderType.female? Colors.yellow: Colors.white),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.female),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Female", style: TextStyle(fontSize: 18))
                            ],
                          )),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 100,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Privacy()));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade700),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
