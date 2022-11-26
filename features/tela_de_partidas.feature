#language: en
#enconding: UTF-8
  @jogos
  Feature: Tela de Partidas

    Background:
      Given carrego minha pagina de ajustes

      @partidas
      Scenario: Tela de Partida
        Given que eu esteja na tela principal do app
        When estiver na tela de partidas
        Then devo visualizar os jogos que irão ser transmitidos no dia

        @status_partida
      Scenario: Informação do jogo
        Given que eu esteja na tela principal do app
        When eu selecionar uma partida
        Then deve ser apresentado a informação da partida