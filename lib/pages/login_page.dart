import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton=false;

  final _formKey= GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()){
setState(() {
              changeButton=true;
            });
              await Future.delayed(Duration(seconds:1 ));
              await Navigator.pushNamed(context, MyRoutes.homeRoute);
              setState(() {
              changeButton=false;
             });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                'images/login_image.png',
                 fit: BoxFit.cover,),
                 const SizedBox(height: 20.0,),
               Text('Welcome $name',
              style:const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              const SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter Username',
                    labelText: 'Username'
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Username cann't be empty";
                    }
                      return null;
                  },
                  onChanged: (value){
                    name=value;
                    setState(() {
                      
                    });
                  },
                ),
                
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter Password',
                    labelText: 'Password'
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                    return "Password cannot be empty";
                    }
                    else if(value.length<6){
                      return "Password must contain atleast 6 character";
                    }

                    return null;
                  },
                ),
                const SizedBox(
                  height: 42.0,
                ),
                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                  child: InkWell(
                    onTap: () =>moveToHome(context),
                    child: AnimatedContainer(
                      duration:const Duration(seconds: 1),
                      width:changeButton ?160 : 120,
                      height: 40,
                      alignment: Alignment.center,
                      child: changeButton? Icon(Icons.check,color: Colors.yellow,):
                       const  Text('Login',
                       style: TextStyle(
                        fontWeight: FontWeight.bold ,
                        fontSize: 20,
                        color: Colors.white
                        ),
                        ),
                        ),
                    ),
                  ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}