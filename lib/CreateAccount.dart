import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:taks1/CreateAccount2.dart';
import 'package:taks1/SignIn.dart';
import 'package:taks1/main.dart';

class CreateAccount extends StatefulWidget {
  final GoogleSignInAccount googleSignInAccount;
  CreateAccount(this.googleSignInAccount);
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController dobd = TextEditingController();
  TextEditingController dobm = TextEditingController();
  TextEditingController doby = TextEditingController();
  TextEditingController religion = TextEditingController();
  TextEditingController annualIncone = TextEditingController();

  bool isNUll(TextEditingController controller) {
    return controller.text.trim() == null;
  }

  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: Form(
                    key: key,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => SignIn()));
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
                        Text("Personal Details",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
                              child: TextField(
                                controller: fname,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    labelText: "First Name",
                                    hintText: "First Name"),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
                              child: TextField(
                                controller: lname,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    labelText: "Last Name",
                                    hintText: "Last Name"),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (s) {
                            int d = int.tryParse(s);
                            if (d != null) {
                              if (d > 9999999999) {
                                return "Phone Number should be 10 digits only";
                              }
                            } else {
                              return "Enter a valid number";
                            }
                            return s.isEmpty ? "Enter a Number" : null;
                          },
                          controller: phone,
                          decoration: InputDecoration(
                              prefix: Text("+91"),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              labelText: "Phone Number",
                              hintText: "1010101010"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Date of birth",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: TextFormField(
                                validator: (s) {
                                  int d = int.tryParse(s);
                                  if (d != null) {
                                    if (d > 12) {
                                      return "Date should be less than 12";
                                    }
                                  } else {
                                    return "Enter a valid number";
                                  }
                                  return s.isEmpty ? "Enter a Number" : null;
                                },
                                controller: dobm,
                                decoration: InputDecoration(
                                    //suffixIcon: Icon(Icons.arrow_drop_down),
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    labelText: "Month",
                                    hintText: "Month"),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3.5,
                              child: TextFormField(
                                validator: (s) {
                                  int d = int.tryParse(s);
                                  if (d != null) {
                                    if (d > 31) {
                                      return "Date should be less than 31";
                                    }
                                  } else {
                                    return "Enter a valid number";
                                  }
                                  return s.isEmpty ? "Enter a Number" : null;
                                },
                                controller: dobd,
                                decoration: InputDecoration(
                                    //suffixIcon: Icon(Icons.arrow_drop_down),
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    labelText: "Day",
                                    hintText: "Day"),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3.5,
                              child: TextFormField(
                                validator: (s) {
                                  int d = int.tryParse(s);
                                  if (d != null) {
                                    if (d > 2000) {
                                      return "Year should be less than 2000";
                                    }
                                  } else {
                                    return "Enter a valid number";
                                  }
                                  return s.isEmpty ? "Enter a Number" : null;
                                },
                                controller: doby,
                                decoration: InputDecoration(
                                    //suffixIcon: Icon(Icons.arrow_drop_down),
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    labelText: "Year",
                                    hintText: "Year"),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Religion",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: religion,
                          decoration: InputDecoration(
                              //suffixIcon: Icon(Icons.arrow_drop_down),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              labelText: "Religion",
                              hintText: "Select your religion"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Income",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Enter your yearly income"),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: annualIncone,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              labelText: "eg. 250.000",
                              hintText: "eg. 250.000"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () async {
                  key.currentState.save();
                  if (isNUll(fname) ||
                      isNUll(lname) ||
                      isNUll(annualIncone) ||
                      isNUll(dobd) ||
                      isNUll(dobm) ||
                      isNUll(doby) ||
                      isNUll(religion) ||
                      isNUll(phone)) {
                    messenger.currentState.showSnackBar(
                        SnackBar(content: Text("Fill All the Details")));
                  } else {
                    if (key.currentState.validate()) {
                      GoogleSignInAccount accont = widget.googleSignInAccount;
                      await FirebaseFirestore.instance
                          .collection('user')
                          .doc(accont.id)
                          .set({
                        "First Name": fname.text,
                        "Last Name": lname.text,
                        "DoB": dobd.text + "-" + dobm.text + "-" + doby.text,
                        "Phone": phone.text,
                        "Religion": religion.text,
                        "Annual Income": annualIncone.text,
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateAccount2()));
                    } else {
                      messenger.currentState.showSnackBar(
                          SnackBar(content: Text("Invalid data")));
                    }
                  }
                },
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccount2()));
                  },
                                  child: Container(
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Column(
//             children: [
//               Image.network(_userObj.photoUrl),
//               Text(_userObj.displayName),
//               Text(_userObj.email),
//               TextButton(onPressed: (){
//                 _googleSignIn.signOut().then((value){
//                   setState(() {
//                     _isLoggedIn = false;
//                   });
//                 }).catchError((e){});
//               }, child: Text("LogOut"))
//             ],
//           ):
