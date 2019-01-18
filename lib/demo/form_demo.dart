import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterFormDemo(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterFormDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterFormDemo> {
  final reigsterFormKey = GlobalKey<FormState>();
  String username, password;
  bool autoValidate = false;

  void submitRegisterForm() {
    if (reigsterFormKey.currentState.validate()) {
      reigsterFormKey.currentState.save();
      debugPrint('username=>$username');
      debugPrint('password=>$password');

      Scaffold.of(context)
          .showSnackBar(SnackBar(
        backgroundColor: Colors.green[700],
          content: Text('registering...'),
        duration: Duration(milliseconds: 500),
      )
      );
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  String validatorUserName(value) {
    if (value.isEmpty) {
      return 'username is Empty';
    }
    return null;
  }

  String validatorPwd(value) {
    if (value.isEmpty) {
      return 'password is Empty';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: reigsterFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'username',
              helperText: '',
            ),
            onSaved: (value) {
              username = value;
            },
            validator: validatorUserName,
            autovalidate: autoValidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'password',
              helperText: '',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: validatorPwd,
            autovalidate: autoValidate,
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              elevation: 0.0,
              color: Theme.of(context).accentColor,
              onPressed: submitRegisterForm,
              child: Text(
                'submit',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextFeildDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TextFeildState();
  }
}

class TextFeildState extends State<TextFeildDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController.text = 'init';
    textEditingController.addListener(() {
      debugPrint('controller input ===> ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
//      onChanged: (value) {
//        debugPrint('onchanged---$value');
//      },
      controller: textEditingController,
      onSubmitted: (value) {
        debugPrint('submit----$value');
      },
      decoration: InputDecoration(
          icon: Icon(Icons.description),
          labelText: 'title',
          hintText: 'input title',
//        border: InputBorder.none,
//        border: OutlineInputBorder(),
          filled: true),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
