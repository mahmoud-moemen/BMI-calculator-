import 'package:flutter/material.dart';

import '../../shared/component/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40.0),
                  defaultFormField(
                    controller: emailController,
                    label: 'email',
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validator: (value)
                    {
                      if (value == null || value.isEmpty) {
                        return 'email must not be empty';
                      }
                      return '';
                    },
                  ),
                  SizedBox(height: 15.0),
                  defaultFormField(
                    controller: passwordController,
                    label: 'password',
                    prefix: Icons.lock,
                    type:TextInputType.visiblePassword ,
                    validator: (value)
                    {
                      if (value == null || value.isEmpty) {
                        return 'password must not be empty';
                      }
                      return '';
                    },
                    suffix: isPassword? Icons.visibility: Icons.visibility_off,
                    isPassword: isPassword,
                    suffixPressed: ()
                    {
                      setState(()
                      {
                        isPassword = !isPassword;
                      });
                    },
                  ),
                  SizedBox(height: 20.0),
                  defaultButton(
                    text: 'login',
                    radias: 20.0,
                    callback: () {
                      if (formKey.currentState != null && formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Register Now'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
