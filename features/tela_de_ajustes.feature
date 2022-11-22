#language: en
#enconding: UTF-8
  Feature: Apresentar opções de ajustes para o úsuario

      @usr
    Scenario: Apresentar Tela de Perfil do Usuario
      Given que eu quero acessar a area de perfil
      When eu clicar no botao de Ajustes
      Then deve ser apresentado o menu para o perfil

      @notificacao
    Scenario: Apresentar Tela de Notificacoes
      Given que eu quero ir para a tela de notificacoes
      When eu clicar no botao de Ajustes
      Then deve ser apresentado o menu para a tela de notificacoes
