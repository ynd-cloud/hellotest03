import 'package:flutter/material.dart';
import 'package:hellotest03/services/LoggerService.dart';
import 'package:hellotest03/services/RegisterProduct.dart';
import 'package:hellotest03/services/ShowNotification.dart';
 
class RegisterProductPage extends StatefulWidget {
  @override
  _RegisterProductPage createState() => _RegisterProductPage();
}
 
class _RegisterProductPage extends State<RegisterProductPage> {
  //===================================================================================
  // 1) DECLARE VARIABLE
  //===================================================================================
  final _idController = TextEditingController();
    final _descriptionController = TextEditingController();    
  final _nameController = TextEditingController();
  final _remarkController = TextEditingController();  
  final _priceController = TextEditingController();  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Page'),),
      body: SafeArea(child: ListView(    
        children: <Widget>[
          //==========================================================================
          // 1) TEXTBOX 
          //==========================================================================              
         TextFormField(decoration: InputDecoration(labelText: '*Product ID', prefixIcon: Icon(Icons.email)),controller: _idController),
          TextFormField(decoration: InputDecoration(labelText: '*Description', prefixIcon: Icon(Icons.near_me)),controller: _nameController,),
          TextFormField(decoration: InputDecoration(labelText: '*name', prefixIcon: Icon(Icons.vpn_key)),controller: _descriptionController),                         
          TextFormField(decoration: InputDecoration(labelText: 'remark', prefixIcon: Icon(Icons.network_cell)),controller: _remarkController),
          TextFormField(decoration: InputDecoration(labelText: 'Price', prefixIcon: Icon(Icons.phone)),controller: _priceController,keyboardType: TextInputType.number,),
          //==========================================================================
          // 2) BUTTON
          //==========================================================================                
          RaisedButton(onPressed: ()
          {
            //========================================================================
            // 3) PRINT LOG
            //======================================================================== 
            logger.i("id" + _idController.text);
            logger.i("name " + _nameController.text);
            //========================================================================
            // 4) VALIDATE
            //========================================================================             
            if (_idController.text == "" || _nameController.text ==""){
              showMessageBox(context, "Error", "Please enter ID or Name", actions: [dismissButton(context)]);
              logger.e("ID or Name cannot be null");              
            } // IF
            //========================================================================
            // 5) SIGNUP USER
            //========================================================================             
            else {
              registerProduct(context, {"productid": _idController.text,"name": _nameController.text, "description":_descriptionController.text, "remark":_remarkController.text, "price":_priceController.text}, _idController.text);
              //signupUser(context, {"username": _usernameController.text, "password": _passwordController.text,"fullname": _fullnameController.text,"lineid": _lineidController.text ,"mobileno": _mobilenoController.text ,"company": _companyController.text},_usernameController.text);              
            }  
            //========================================================================
            // 6) BUTTON NAME
            //========================================================================                         
          },child: Text('SAVE'),),      
        ],
      )
      ),
    );
  }
}