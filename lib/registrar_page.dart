

import 'package:flutter/material.dart';
import 'package:myapp/custom_input.dart';

class RegistrarPage extends StatelessWidget {
 RegistrarPage({super.key});

  final TextEditingController nombreController = TextEditingController();
  final TextEditingController correoController = TextEditingController();
  final TextEditingController telefonoController = TextEditingController();
  final TextEditingController contraseniaController = TextEditingController();
final TextEditingController contrasenia2Controller = TextEditingController();
  // equivalente al controller del formulario
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Registro'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  CuntomInput(
                    label: 'Nombre',
                    maxLength: 10,
                    minLength: 3,
                    controller: nombreController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'El nombre es obligatorio';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  CuntomInput(
                    controller: correoController,
                    label: 'Correo',
                    icon: Icons.email,
                    maxLength: 50,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'El correo es obligatorio';
                      }

                      if (!value.contains('@')) {
                        return 'El correo no es válido';
                      }
                       if (!value.endsWith('unah.hn')) {
                        return 'El correo no es válido';
                      }


                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  CuntomInput(
                    controller: telefonoController,
                    label: 'Telefono',
                    maxLength: 8,
                    icon: Icons.phone,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'El numero es obligatorio';
                      }

                      if (int.tryParse(value) == null ||
                          !value.startsWith('9')) {
                        return 'El teléfono no es válido';
                      }
                       if (!value.startsWith('3')) {
                        return 'El numero no es válido';
                      }
                      return null;
                    },
                  ),
                  
                  
                  const SizedBox(height: 16),
                  CuntomInput(
                    controller: contraseniaController,
                    label: 'Contraseña',
                    icon: Icons.lock,
                    obscureText: true,
                    maxLength: 30,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'La contraseña es obligatorio';
                      }
                      return null;
                    },
                  ),CuntomInput(
                    controller: contrasenia2Controller,
                    label: 'Confirme Contraseña',
                    icon: Icons.lock,
                    obscureText: true,
                    maxLength: 30,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'La contraseña es obligatorio';
                      }
                      if (value != contraseniaController.text) {
                        return 'Las contraseñas no coinciden';
                      } 
                      return null;
                    },
                  ),
                  ElevatedButton(
                  onPressed: () {
                     if (!formKey.currentState!.validate()) {
              return;
            }

            final data = {
              'nombre': nombreController.text,
              'correo': correoController.text,
              'telefono': telefonoController.text,
             
              'contrasenia': contraseniaController.text,
            };

            print(data);
                    // Acción
                  },
                  child: const Text(
                    ' registrarse',
                    style: TextStyle(fontSize: 20),
                  ),
                )

                 
                ],
              ),
            ),
          ),
        ),
       );
  }
}