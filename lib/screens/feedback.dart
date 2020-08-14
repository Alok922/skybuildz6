import 'package:flutter/material.dart';

class Feedback extends StatefulWidget {
  @override
  _FeedbackState createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedback> {
  String _name;
  String _email;
  String _phone;
  String _feedback;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      maxLength: 20,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is required';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone number'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phone number is required';
        }

        return null;
      },
      onSaved: (String value) {
        _phone = value;
      },
    );
  }

  Widget _buildFeedback() {
    return TextFormField(
      maxLines: 8,
      decoration: InputDecoration(
          filled: true,
          border: InputBorder.none,
          labelText: 'Write your feedback'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Feedback is required';
        }

        return null;
      },
      onSaved: (String value) {
        _feedback = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.1,
        backgroundColor: Color(0xFF4F51C0),
        title: Text('Feedback'),
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildName(),
              _buildEmail(),
              _buildPhoneNumber(),
              _buildFeedback(),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: RaisedButton(
                  focusElevation: 0,
                  highlightElevation: 0,
                  splashColor: Colors.white.withOpacity(0.1),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    print(_name);
                    print(_email);
                    print(_phone);
                    print(_feedback);
                  },
                  color: Color(0xFF4F51C0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Send',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
