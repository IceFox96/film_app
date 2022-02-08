import 'package:flutter/material.dart';

import '../Theme/theme_link_button.dart';

class loginWidget extends StatefulWidget {
  loginWidget({Key? key}) : super(key: key);

  @override
  State<loginWidget> createState() => _loginWidgetState();
}

class _loginWidgetState extends State<loginWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Login to your account')),),
      body: ListView(
        children: [
          HeadWidget(),
        ],
      ),
    );
  }
} 

class HeadWidget extends StatelessWidget {
  const HeadWidget({Key? key}) : super(key: key);
  final textStyle = const TextStyle(fontSize: 16,
          color: Colors.black,);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25,),
          _FormWidgetState(),
          SizedBox(height: 25,),
          Text("You must be logged into your account in order to use the edits and features of the TMDB rankings, as well as receive personalized recommendations. If you don't have an account, registering one is free and easy. ",
          style: textStyle
          ),
          TextButton(onPressed: () {},
          style: LinkButtomTheme.linkButtomTheme,
           child: Text('Registering')),
          SizedBox(height: 25),
          Text('If you registered but did not receive a confirmation email, ', 
          style: textStyle,
          ),
          TextButton(onPressed: () {
            
          },
          style: LinkButtomTheme.linkButtomTheme,
          child: Text('Confirmation email'),
          )
        ],
      ),
    );
  }
}

class _FormWidgetState extends StatefulWidget {
  _FormWidgetState({Key? key}) : super(key: key);

  @override
  State<_FormWidgetState> createState() => __FormWidgetStateState();
}

class __FormWidgetStateState extends State<_FormWidgetState> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
   String? errorlogin = null;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
   
    if (login == 'admin' && password == '123') {
      errorlogin = null;
      print('OpenApp');
    } else {
      errorlogin = 'Неправильный логин или пароль';
    }
    setState(() {
      
    });
  }
  void _resetPassword(){
    print('Reset password');
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(fontSize: 16,
          color: Color(0xFF212529),);
    final textFieldDecorator = const InputDecoration(border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    isCollapsed: true,
    );
    final buttomTextStyle = TextStyle(fontWeight: FontWeight.w700,
            fontSize: 16);
            final buttonStyle = ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 19, vertical: 8,)),
            backgroundColor: MaterialStateProperty.all(Color.fromRGBO(3, 37, 65, 1))
            );

    final errorlogin = this.errorlogin;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorlogin != null) ... [Text(errorlogin, style: TextStyle(color: Colors.red),),
        SizedBox(height: 20,)],
        Text('Username',
        style: textStyle,),
        SizedBox(height: 5,),
        TextField(
          controller: _loginTextController,
          decoration: textFieldDecorator
        ),
        SizedBox(height: 15,),
        Text('Password',
        style: textStyle,),
        SizedBox(height: 5,),
        TextField(
          controller: _passwordTextController,
          decoration: textFieldDecorator,
          obscureText: true
        ),
        SizedBox(height: 20),
        Row(
          children: [
            ElevatedButton(
              style: buttonStyle,
              onPressed: _auth,
            child: Text('To come in',
            style: buttomTextStyle,
            ),),
            SizedBox(width: 30,),
            TextButton(onPressed: _resetPassword,
            style: LinkButtomTheme.linkButtomTheme,
             child: Text('Reset the password'))
          ],
        )
      ],
    );
  }
}