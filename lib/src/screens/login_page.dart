import "package:flutter/material.dart";

class Login extends StatefulWidget {
  const Login({super.key});
  @override
    // ignore: library_private_types_in_public_api
    _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login>{
  // ignore: unused_field
  bool _loading = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color.fromARGB(255, 18, 211, 166),
                  Color.fromARGB(255, 12, 121, 160),
                ],
            )),
            height: 300,
            child: Center(
              child: Image.asset(
                "assets/images/cooking.png",
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -80),
            child: Center(
              child: SingleChildScrollView(
                child: Card(
                  elevation: 4,
                  color: const Color.fromARGB(255, 253, 251, 245),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: const EdgeInsets.only(left: 20,right: 20,top: 250, bottom: 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                    child: SizedBox(
                      height: 310,
                      child: ListView(
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Usuario:",
                            ),
                          ),
                          const SizedBox(height: 10,),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Contraseña:",
                            ),
                            obscureText: true,
                          ),
                          const SizedBox(height: 25,),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 12, 3, 61),
                              foregroundColor: const Color.fromARGB(255, 250, 255, 219), 
                              padding: const EdgeInsets.symmetric(vertical: 15)
                            ),
                            onPressed: (){
                              _login(context);
                            }, 
                            
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text("Iniciar sesión"),
                                if(_loading)
                                  Container(
                                    height: 20,
                                    width: 20,
                                    margin: const EdgeInsets.only(left: 30),
                                    child: const CircularProgressIndicator(),
                                  )
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text("¿No estás registrado?"),
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: const Color.fromARGB(255, 33, 65, 243)
                                ),
                                onPressed: (){
                                  _showRegister(context);
                                }, 
                                child: const Text("Regístrate")
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  
  void _login(BuildContext context) {
    if(!_loading){
      setState(() {
        _loading = true;
      });
    }
  }
  
  void _showRegister(BuildContext context) {
    Navigator.of(context).pushNamed("/register");
  }
}