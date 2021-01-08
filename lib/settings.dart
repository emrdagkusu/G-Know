import 'package:flutter/material.dart';
import 'package:gknow/deleteUser.dart';
import 'package:gknow/login.dart';
import 'package:gknow/profile.dart';
import 'package:provider/provider.dart';
import 'authenticationService.dart';
import 'changeUsername.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(child: Text('Settings')),
        backgroundColor: Colors.black,
      ),
      body: _buildLayout(screenSize),
    );
  }

  Widget _buildLayout(double screenSize) {
    return Container(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(screenSize / 20),
                  child: Text(
                    'Account',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Sign Out'),
            subtitle: Text(Profile.username),
            leading: Icon(
              Icons.subdirectory_arrow_left_sharp,
              color: Colors.black,
            ),
            onTap: () {
              context.read<AuthenticationService>().signOut();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Login()));
            },
          ),
          ListTile(
            title: Text('Change Profile Username'),
            subtitle: Text('For GitHub account that shows in the  profile'),
            leading: Icon(
              Icons.track_changes_sharp,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ChangeUsername()));
            },
          ),
          ListTile(
            title: Text('Change G-Know Password'),
            subtitle: Text('When you click this you will get an reset e-mail'),
            leading: Icon(
              Icons.lock,
              color: Colors.black,
            ),
            onTap: () {
              context.read<AuthenticationService>().changePassword();
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (BuildContext context) => LanguagesScreen()));
            },
          ),
          Divider(
            height: 20,
            thickness: 2,
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(screenSize / 20),
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('News'),
            subtitle: Text('From your GitHub account'),
            leading: Icon(
              Icons.notifications_active,
              color: Colors.black,
            ),
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (BuildContext context) => LanguagesScreen()));
            },
          ),
          ListTile(
            title: Text('Community'),
            subtitle: Text('From your favourite users'),
            leading: Icon(
              Icons.notifications_active,
              color: Colors.black,
            ),
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (BuildContext context) => LanguagesScreen()));
            },
          ),
          Divider(
            height: 20,
            thickness: 2,
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(screenSize / 20),
                  child: Text(
                    'Misc',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Terms of Service'),
            // subtitle: Text('From your favourite user\'s ' ),
            leading: Icon(
              Icons.description,
              color: Colors.black,
            ),
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (BuildContext context) => LanguagesScreen()));
            },
          ),
          ListTile(
            title: Text('Open source licenses'),
            // subtitle: Text('From your favourite user\'s ' ),
            leading: Icon(
              Icons.collections_bookmark,
              color: Colors.black,
            ),
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (BuildContext context) => LanguagesScreen()));
            },
          ),
          Divider(
            height: 20,
            thickness: 2,
          ),
          ListTile(
            title: Text('Delete Account'),
            // subtitle: Text('From your favourite user\'s ' ),
            leading: Icon(
              Icons.delete_forever,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Deleteuser()));
            },
          ),
          Divider(
            height: 20,
            thickness: 2,
          ),
        ],
      )),
    );
  }
}
