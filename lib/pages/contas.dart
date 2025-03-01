import 'package:flutter/material.dart';

class Contas extends StatefulWidget {
  const Contas({super.key});

  @override
  State<Contas> createState() => _ContasState();
}

class _ContasState extends State<Contas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(12.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 145, 13, 101),
              Color.fromARGB(144, 0, 0, 0),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo da aplicação
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/contas');
              },
              child: Image.asset(
                "assets/imagens/logo.png",
                width: 250,
                height: 250,
              ),
            ),
            const SizedBox(height: 20),
            // Título
            const Text(
              "Quem é você?",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            // Ícones dos perfis de usuário
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 40,
              crossAxisSpacing: 40,
              padding: const EdgeInsets.all(20),
              children: [
                _buildProfileButton('Lucas', 'assets/imagens/lucass.png', context),
                _buildProfileButton('Claudete', 'assets/imagens/claudete.png', context),
                _buildProfileButton('Duda', 'assets/imagens/duda.png', context),
                _buildAddProfileButton(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Função para criar um botão de perfil
  Widget _buildProfileButton(String name, String imagePath, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/home'); // Navega para a tela home
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  // Função para criar o botão de adição de novo perfil
  Widget _buildAddProfileButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Coloque a navegação ou função que deseja para adicionar uma nova conta
        print("Adicionar nova conta");
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.add,
              size: 40,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Adicione uma nova conta',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
