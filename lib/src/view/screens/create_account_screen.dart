import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postgres_learn/src/viewmodel/login_viewmodel.dart';
import '../../viewmodel/create_account_viewmodel.dart';

class CreateAccountScreen extends StatelessWidget {
  final CreateAccountViewModel createAccountViewModel =
      Get.put(CreateAccountViewModel());

   CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller:  createAccountViewModel.usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
              // onChanged: createAccountViewModel.setUsername,
            ),
            TextFormField(
              controller: createAccountViewModel.passwordController,
              decoration: const  InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
              // onChanged: createAccountViewModel.setPassword,
            ),
            ElevatedButton(
              onPressed: createAccountViewModel.createAccount,
              child: const Text('Create Account'),
            ),

             ElevatedButton(
              onPressed: Get.put(LoginViewModel()).login,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
