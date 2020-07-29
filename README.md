# Finanace App

An Android Application that facilitates the management of business processes that deal with money. 


class LoginScreen extends StatefulWidget {

  LoginScreen({Key key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences preferences;

  bool isLoggedIn = false;
  bool isLoading = false;
  FirebaseUser currentUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isSignedIn();
  }
  void isSignedIn() async{
    this.setState(() {
      isLoggedIn = true;

    });

    preferences = await SharedPreferences.getInstance();

    isLoggedIn = await googleSignIn.isSignedIn();

    if(isLoggedIn)
      {
        Navigator.push(context, MaterialPageRoute(builder : (context) => HomeScreen(currentUserId: preferences.getString("id"))));

      }
    this.setState(() {
      isLoading = false;

    });

  }


  @override
  Widget build(BuildContext context) {

     return Scaffold(
       body: Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(
             begin: Alignment.topRight,
             end: Alignment.bottomLeft,
             colors: [Colors.lightBlueAccent, Colors.purpleAccent]
           ),
         ),
         alignment: Alignment.center ,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,

           children: <Widget>[
             Text(
               "Finance  APP",
               style: TextStyle(fontSize: 82.0, color: Colors.white, fontFamily: "Signatra") ,
             ),
             GestureDetector(
               onTap: controlSignIn ,
               child: Center(
                 child: Column(
                   children: <Widget>[
                     Container(
                       width: 270.0,
                       height: 65.0,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage("assets/images/google_signin_button.png"),
                           fit: BoxFit.cover,

                           ),

                       ),

                     ),

                     Padding(
                       padding: EdgeInsets.all(1.0),
                       child: isLoading ? circularProgress() : Container(

                       ),
                     ),
                   ]
                 ),
               ),
             ),
           ],
         ),
       ),
     );



  }

 Future<Null> controlSignIn() async{

    preferences = await SharedPreferences.getInstance();
    this.setState(()
        {
          isLoading = true;

        });

GoogleSignInAccount googleUser = await googleSignIn.signIn();
GoogleSignInAuthentication googleAuthentication = await googleUser.authentication;
final AuthCredential credential = GoogleAuthProvider
    .getCredential(idToken: googleAuthentication.idToken, accessToken: googleAuthentication.accessToken);

FirebaseUser firebaseUser = (await firebaseAuth.signInWithCredential(credential)).user;

// Sign in success

if(firebaseUser != null)
  {
    // if already signed up
    final QuerySnapshot  resultQuery = await  Firestore.instance
        .collection("users").where("id", isEqualTo: firebaseUser.uid ).getDocuments() ;
    final List<DocumentSnapshot> documentSnapshots = resultQuery.documents;

    // if user is new

    if(documentSnapshots.length == 0)

      {
        Firestore.instance.collection("users").document(firebaseUser.uid).setData({

          "username" : firebaseUser.displayName,
          "photoUrl" : firebaseUser.photoUrl,
          "createdAt" : DateTime.now().millisecondsSinceEpoch.toString(),
        });

        // write data locally

        currentUser = firebaseUser;
        await preferences.setString("id", currentUser.uid);
        await preferences.setString("username", currentUser.displayName);
        await preferences.setString("photoUrl", currentUser.photoUrl);

  }
    else {

      //retrieve data from firebase
      currentUser = firebaseUser;
      await preferences.setString("id", documentSnapshots[0]["id"]);
      await preferences.setString("username", documentSnapshots[0]["username"]);
      await preferences.setString("photoUrl", documentSnapshots[0]["photoUrl"]);
    }
    Fluttertoast.showToast(msg: "Sign In Success !!");
    this.setState(() {
      isLoading = false;

    });

    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(currentUserId: firebaseUser.uid)));
  }

// sign in failed

 else {

   Fluttertoast.showToast(msg: "Please try again !!");
   this.setState(() {
     isLoading = false;

   });

   }



  }

}

