#language: en
#enconding: UTF-8
  Feature: Tela de Partidas

    Background:
      Given carrego minha pagina de ajustes

      @partidas
      Scenario: Tela de Partida
        Given que eu esteja na tela principal do app
        When estiver na tela de partidas
        Then devo visualizar os jogos que irão ser transmitidos no dia
