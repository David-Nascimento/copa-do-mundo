# App Copa do Mundo

Projeto Criado em Ruby utilizando BDD(Gherkin) para escrita dos cenários de Testes.

## Pré Requisitos
* Windows - Mac - Linux
* Android SDK
* Xcode 
* Ruby 3.0.4
* Appium ***(latest)***
* Node.js ***(latest)***

### Instalar Appium e Dependencias
Mac
```sh
brew install node
npm install -g appium
npm install wd
```
Windows

Instalar [Node.js](https://nodejs.org/en/download/)
```sh
npm install -g appium
npm install wd
```

Linux (Ubuntu, Mint)

Instalar [Node.Js](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04)

### Cenários: 
```Cucumber
Cenário 1: Tela de login
Cenário 1.1: Tela de Notificações

Cenário 2: Tabela de grupos
Cenário 2.1: Times por grupo

Cenário 3: Seleções
Cenário 3.1: Selecionar Time
Cenário 3.2: Titulos e Jogadores
Cenário 3.3: Procurar por Jogador
Cenário 3.4: Buscar Artilheiro
Cenário 3.5: Buscar Estadio

Cenário 4: Partidas
```

### Executar Teste de Aceitação
```Ruby
rake acceptance[@tag]
```