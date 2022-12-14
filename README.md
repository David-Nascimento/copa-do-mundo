# App Copa do Mundo
Projeto Criado em Ruby utilizando BDD(Gherkin) para escrita dos cenários de Testes.

## Pré Requisitos
* Windows - Mac - Linux
* Java JDK 8
* Android SDK
* Xcode 
* Ruby 3.0.4
* Appium ***(latest)***
* Node.js ***(latest)***

### Instalar Appium e Dependencias
Instalar [Node.js](https://nodejs.org/en/download/)
```sh
npm install -g appium
npm install wd
```

### Instalar Allure Command Line
```sh
npm install -g allure-commandline
```

#### Clonar o projeto
```sh
git clone https://github.com/David-Nascimento/copa-do-mundo.git
```

### Navegar até o diretorio
```sh
cd copa-do-mundo
```

### Instalar dependencias do projeto
```ruby
gem install bundler
bundle install
```

### Executar Teste de Aceitação
```Ruby
rake acceptance[tag]
```

### Allure Report
```sh
 allure serve allure-results/android/
              or
 allure serve allure-results/ios/
```

### Estrutura do projeto
![Capturar1](https://user-images.githubusercontent.com/53004819/204099330-a27ba4ab-7054-4344-a578-61f82cbe6afb.PNG)

### User Story: 
```Cucumber
Cenário 01: Tela de Partida
    Sendo um usuario do app
    Posso visualizar todos os jogos que irão ser transmitidos no dia
    Para que eu possa acompanhar cada jogo dos times que serão transmitidos ao vivo

Cenário 02: Informação do jogo
    Sendo um usuario do app
    Posso acessar cada partida
    Para que eu possa visualizar toda a informação do jogo
```

### Cenários de Testes:
```Cucumber
Cenário: Tela de Partida
    Dado que eu esteja na tela principal do app
    Quando estiver na tela de partidas
    Entao devo visualizar os jogos que irão ser transmitidos no dia
    
Cenário: Informação do jogo
    Dado que eu esteja na tela principal do app
    Quando eu selecionar uma partida
    Então deve ser apresentado a informação da partida
```