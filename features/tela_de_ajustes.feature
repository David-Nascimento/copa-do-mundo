#language: en
#enconding: UTF-8
  Feature: Apresentar opções de ajustes para o úsuario

      @perfil
    Scenario: Apresentar Tela de Perfil do Usuario
      Given que eu esteja na tela principal do app
      When eu clicar no icone de ajustes
      And seguir para a tela de perfil
      Then deve ser apresentado a tela para efetuar o login
