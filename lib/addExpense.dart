import 'package:flutter/material.dart';

class AddExpense extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _AddExpenseState();
  }
}
class _AddExpenseState extends State<AddExpense>  {
  var _expenses = ['Food','Shopping','Transportation','Health'];
  var _currentItemSelected = 'Shopping';
  var _sources=['Net Banking','Cash','Cash apps'];
  var _currentValueSelected='Net Banking';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Expense"),
        backgroundColor: Colors.deepPurple[900],
        centerTitle: true,
      ),
      body: Container(
        color:Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(30.0),
              child: new Form(
                autovalidate: true,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new TextFormField(
                      decoration: new InputDecoration(
                          labelText: "Enter amount",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(),
                          )
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    Divider(
                      thickness: 2.0,
                      color:Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: "Enter date",
                        fillColor: Colors.white,

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(),
                        ),
                      ),

                    ),
                    Divider(
                      thickness: 2.0,
                      color:Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    FormField<String>(
                      builder: (FormFieldState<String> state) {
                        return InputDecorator(
                          decoration: InputDecoration(
                              errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                              hintText: 'Please select expense',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                          isEmpty: _currentItemSelected == '',
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: _currentItemSelected,
                              isDense: true,
                              onChanged: (String newValue) {
                                setState(() {
                                  _currentItemSelected = newValue;
                                  state.didChange(newValue);
                                });
                              },
                              items: _expenses.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                    ),
                    Divider(
                      thickness: 2.0,
                      color:Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    TextField(
                      maxLines: 5,
                      decoration: InputDecoration(hintText: "Enter your body here", border: OutlineInputBorder(),
                          labelText: 'Description'),
                    ),
                    Divider(
                      thickness: 2.0,
                      color:Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    FormField<String>(
                      builder: (FormFieldState<String> state) {
                        return InputDecorator(
                          decoration: InputDecoration(
                              errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                              hintText: 'Please select expense',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                          isEmpty: _currentValueSelected == '',
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: _currentValueSelected,
                              isDense: true,
                              onChanged: (String newValue) {
                                setState(() {
                                  _currentValueSelected = newValue;
                                  state.didChange(newValue);
                                });
                              },
                              items: _sources.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 30),
                    RaisedButton(
                      onPressed: () {},
                      child: const Text(
                          'Save',
                          style: TextStyle(fontSize: 20)
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
