import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;


class FormDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Theme(
         data: Theme.of(context).copyWith(
           primaryColor: Colors.black
         ),
         child: Container(
           padding: EdgeInsets.all(16),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               RegisterForm(),
             ],
           ),
         ),
       ),
       
    );
  }
}

class RegisterForm extends StatefulWidget {
  RegisterForm({Key key}) : super(key: key);

  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username,password;
  bool autovalidate = false;

  void submitRegisterForm(){
    if(registerFormKey.currentState.validate()){
      registerFormKey.currentState.save();
    debugPrint(username);
    debugPrint(password);
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("正在注册ing"),
      )
    );
    }else{
      setState(() {
        autovalidate = true;
      });
    }


  }

  String validatorUsername(value){
    if (value.isEmpty) {
      return "username空了";
    }
    return null;
  }
  
  String validatorPassword(v){
    if (v.isEmpty) {
      return "password空了";
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "username",
              helperText: '',
            ),
            onSaved: (v){
              username = v;
            },
            validator: validatorUsername,
            autovalidate: autovalidate,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "password",
              helperText: '',
            ),
            obscureText: true,
            onSaved: (v){
              password = v;
            },
            validator: validatorPassword,
            autovalidate: autovalidate,
          ),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text("提交",style: TextStyle(color: Colors.white),),
              onPressed: submitRegisterForm,
            ),
          )
        ],
      ),
    );
  }
}



class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  _TextFieldDemoState createState() => _TextFieldDemoState();
}
class _TextFieldDemoState extends State<TextFieldDemo> {

 final textEditingController = TextEditingController();

 @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController.text = 'HI';
    textEditingController.addListener(
      (){
          debugPrint("${textEditingController.text}lololo");
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (v){
      //   debugPrint("::$v::");
      // },
      onSubmitted: (v){
        debugPrint(":---:$v:----:");
      },
      decoration: InputDecoration(
        icon: Icon(Icons.person),
        labelText: 'username',
        hintText: "输入用户名",
        // border: InputBorder.none,
        // border: OutlineInputBorder(),
      ),
    );
  }
}
class ThemeDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}