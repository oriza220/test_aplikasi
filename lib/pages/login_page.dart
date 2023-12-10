import 'package:flutter/material.dart';
import 'package:test_aplikasi/pages/home_container.dart';
import 'package:test_aplikasi/utilities/settings.dart';
import 'package:test_aplikasi/widgets/custom_divider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.discordapp.com/attachments/798745994103095322/1182141656078749799/login_page_background.png?ex=65839e35&is=65712935&hm=e02decbe2213bba8a626525bfee075efa20b8da1c39a1e88dff0463ef5722664&"),
                    fit: BoxFit.cover)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 60),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Center(
                        child: Text(
                          "Pinjam Dulu",
                          style: TextStyle(
                              fontSize: 45,
                              fontFamily: "GodoB",
                              color: warnaCerah.withOpacity(0.9),
                              shadows: tambahBayangan),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.only(),
                        child: Image.network(
                            "https://cdn.discordapp.com/attachments/611552007764836372/1180035934973083769/logo_2_waifu2x_art_noise2_scale_1.png?ex=657bf51a&is=6569801a&hm=298e09e62d621198fa113897f4cbc65ee631bec8f9864d5b8e76ce1e02ec7c15&"),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Center(
                          child: CustomDivider(width: 100),
                        )),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Center(
                          child: Text(
                        "The First P2p Laptop Lending App",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "GodoB",
                            color: warnaCerah.withOpacity(0.7)),
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    CustomDivider(width: double.infinity),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: TextStyle(
                                color: warnaCerah.withOpacity(0.5),
                                fontFamily: 'GodoB'),
                            fillColor: Colors.blue[200],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(13, 13)),
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontFamily: "GodoB",
                                color: Colors.white.withOpacity(0.5)),
                            fillColor: Colors.blue[200],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(13, 13)),
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    CustomDivider(width: double.infinity),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          width: 100,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                surfaceTintColor: MaterialStatePropertyAll(Colors.white),
                                  shape: MaterialStatePropertyAll(
                                      ContinuousRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(15, 15)))),
                                  side: MaterialStateProperty.all(
                                      BorderSide(color: Colors.white)),
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeContainer()));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontFamily: "GodoB",
                                  color: Colors.blue[200],
                                  // color: Colors.blue[200],
                                ),
                              ))),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Center(child: CustomDivider(width: 100))),
                    Container(padding: EdgeInsets.only(top: 30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(13, 13))),
                          width: 60,
                          height: 60,
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.network(
                                "https://cdn.discordapp.com/attachments/798745994103095322/1181045688969207828/Git-Icon-Black.png?ex=657fa183&is=656d2c83&hm=50366f9742c8aa42890987dc24776d59c2d86869eff0cabc9de6ab0314fd082a&"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(13, 13))),
                            width: 60,
                            height: 60,
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.network(
                                  "https://cdn.discordapp.com/attachments/611552007764836372/1181040507527385129/google_logo_icon_169090.png?ex=657f9caf&is=656d27af&hm=f8888f6316418a36d20cc32ce3860328f06031d396e9c55c432e30fc5f5e822d&"),
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
