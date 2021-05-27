import 'package:flutter/material.dart';
import 'package:taks1/Successfull.dart';

enum Security {
  private,
  public,
}

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  Security security = Security.private;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
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
                  "Privacy",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Your Profile Privacy",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Image.asset("assets/privacymain.png"),
                ),
                SizedBox(height: 10,),
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
                            security = Security.private;
                          });
                        },
                                              child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: security == Security.private
                                  ? Colors.yellow
                                  : Colors.white),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //Icon(FontAwesomeIcons.male),
                              Image.asset("assets/lock.png",height: 30,),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Private",
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
                            security = Security.public;
                          });
                        },
                                              child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: security == Security.public? Colors.yellow: Colors.white),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //Icon(FontAwesomeIcons.female),
                              Image.asset("assets/earth.png",height: 30,),
                              SizedBox(
                                width: 15,
                              ),
                              Text("Public", style: TextStyle(fontSize: 18))
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
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Successfull()));
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