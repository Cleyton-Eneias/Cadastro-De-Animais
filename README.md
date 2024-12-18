# Cadastro de Animais

Este é um projeto de um sistema web simples para cadastro e gerenciamento de animais, desenvolvido com o framework Spring MVC, utilizando JSP para renderização das páginas. O sistema permite cadastrar, editar, excluir e visualizar os animais registrados, como um painel administrativo. A aplicação foi construída com foco na simplicidade e organização do código, utilizando boas práticas do Spring Framework.

## Tecnologias Utilizadas

- **Java** - Linguagem de programação principal.
- **Spring MVC** - Framework para a construção do sistema.
- **Spring Boot** - Facilita a configuração e execução do projeto.
- **JSP** - Tecnologia para renderização das páginas web.
- **Bootstrap** - Framework CSS para o layout responsivo e estilização.
- **JSTL** - Biblioteca de tags para JSP.
- **Spring Data** - Para manipulação do banco de dados.

## Funcionalidades

- **Cadastro de Animais:** Adicionar novos animais com informações como espécie, nome, idade, raça, sexo, porte, peso e personalidade.
- **Edição de Animais:** Atualizar os dados dos animais já cadastrados.
- **Exclusão de Animais:** Excluir animais do sistema.
- **Visualização de Animais:** Exibir todos os animais cadastrados em uma tabela com informações detalhadas.

## Como Usar

### Pré-requisitos

1. **Java 8 ou superior** instalado no seu computador.
2. **Spring Boot** - O projeto usa o Spring Boot para facilitar o desenvolvimento e execução.
3. **Banco de dados H2 (ou outro)** - Para armazenar os dados dos animais. (Banco de dados H2 está embutido no projeto para facilitar o uso).

### Passos para Executar o Projeto

# Primeiro, clone este repositório para sua máquina local:
git clone https://github.com/usuario/nome-do-repositorio.git

# Navegue até a pasta do projeto:
cd nome-do-repositorio

# Agora, compile o projeto utilizando Maven ou Gradle, dependendo da sua preferência.
Para Maven:
mvn clean install
Para Gradle:
gradle build

# Em seguida, execute o projeto:
Para Maven:
mvn spring-boot:run
Para Gradle:
gradle bootRun

O sistema estará disponível no navegador, acessando http://localhost:8080.

# Funcionalidade de Cadastro de Animais

Na página inicial, você pode acessar o formulário de cadastro de novos animais. Preencha os campos obrigatórios (Espécie, Nome, Idade, Raça, Sexo, Porte, Peso e Personalidade). Clique em **Cadastrar** para adicionar o animal à lista.

## Visualização e Gerenciamento de Animais

Após cadastrar um animal, você pode visualizar todos os animais cadastrados. Para editar ou excluir um animal, clique nas opções **Editar** ou **Excluir** ao lado do animal desejado.

## Estrutura do Projeto

- **Controller**: Contém os controladores que lidam com as requisições HTTP. O arquivo principal de controle é `Controlador.java`, que gerencia o fluxo de dados entre a camada de apresentação e a camada de persistência.
- **Model**: Representa os dados e as entidades do sistema. O arquivo `Animal.java` é a classe modelo que representa um animal no sistema.
- **DAO**: Acesso ao banco de dados. O arquivo `AnimalDAO.java` é responsável pelas operações de CRUD (Create, Read, Update, Delete) no banco de dados.
- **Views (JSP)**: Contém as páginas JSP para a interface do usuário. As principais páginas incluem:
  - `formulario.jsp`: Formulário para cadastrar e editar animais.
  - `visualizarcadastros.jsp`: Tabela para exibir todos os animais cadastrados.




