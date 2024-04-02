import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Jorge',
      'last_name': 'Roco',
      'email': 'roco@gmail.com',
      'password': '123456',
      'role': 'admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  suffixIcon: Icons.group_outlined,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  hintText: 'Apellido del usuario',
                  labelText: 'Apellido',
                  suffixIcon: Icons.group_outlined,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  hintText: 'Correo',
                  labelText: 'Correo',
                  suffixIcon: Icons.email_outlined,
                  textInputType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  hintText: 'Contraseña',
                  labelText: 'Contraseña',
                  suffixIcon: Icons.password,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: 'admin', child: Text('admin')),
                    DropdownMenuItem(
                        value: 'super admin', child: Text('super admin')),
                    DropdownMenuItem(
                        value: 'developer', child: Text('developer')),
                    DropdownMenuItem(value: 'QA', child: Text('QA')),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'admin';
                  },
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('formulario no valido');
                        return;
                      }
                      print(formValues);
                    },
                    child: const Center(
                      child: Text('Guardar'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
