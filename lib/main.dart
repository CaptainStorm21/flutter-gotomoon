import 'package:flutter/material.dart';
import 'package:flutter_gotomoon/pages/home_page.dart';

/*
I would like to explain what the main function is, and this is basically the
entry point is flutter project.
whe the little project is run or spun up, what is going to happen is that this made
function is going to be called and then whatever is between this main function is 
what's basically going  to determine the functionality of our application or what it does.
In the case of Flutter, Flutter gives us a very useful function run app, which expects us to give
a widget ...  the widgets are basically the building block of Flutter.
Widgets are small building blocks that we combine together, which either can be UI elements, 
which can be something
And they come together to kind of give our application, some structure, our program, some structure.
 now what we need to do for our run app application, for it to actually spin up
 an application is that we need to provide a widget which will basically act
as the application container for our app

*/
void main() {
  runApp(const App());
}

/*
what this is trying to say is that a stateless widget is a Typekit widget that when
it has been constructed, the data within it is not going to change.
*/
class App extends StatelessWidget {
/*
This is just a good practice to do in Flutter, and keys are basically 
a way for us to maintain state and flutter and kind of keep track of the 
state of a Widget and flutter.
*/
  const App({Key? key}) : super(key: key);

/*
So what it's basically trying to tell me is that for every
stateless widget in dart or Flutter, we need to have a built
method or an that's implemented within the definition of our class.
And this build a method basically describes to the Flutter SDK
how our actual application is going to
*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go To Moon',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 53, 78), ),
      home: const HomePage(),
    );
  }


}