=begin
  Main Class
    Primary Objective: Initalizes the game
    Initializes: player_1, player_2, new_game
    Behaviour(methods): N/A

    REF Player and Game class

  Player class
    Primary Objective: track player lives
    Initalizes: player_name, player_lives
    Behaviour(methods): Lose Life & Player Dead (determines when player is dead)

    players have 3 lives
    once player reaches 0/3 lives, is dead
    update lives of each player

  Game class -> game loop
    Primary Objective: manage game state
      Connecting question answered to player life total based on Turn
    States: game start + new turn, switch turn + new turn, end game
    Initalizes: player_1, player_2, current_player(default to be player one?) => STRETCH current_player(can be randomized or picked)
    Behaviour(methods): End Game, Announcer
    Import: Game Start, New Turn, Switch Turn, Question, Lose Life & Player Dead

    Announcer (method): 
      Declares (prints) New Game
      Declares (prints) New Turn (current_player & player life totals)
      Declares (prints) End Game (winner)

    1. Starts game 
    2. New turn => REF Turn Class
    3. Creates new question => REF in questiton class
    4. Depending on if current_player answers correctly (booelan return value from Question Class)
        updates player life with Lose Life function => REF in player class
    5. Switches turns to other player class, repeat step 2-4 => REF Turn class
    5. End game if after a turn, a player is dead => REF Player Dead method from Player Class

  Turn Class -> Manage turn Order
    Primary Objective: Track and manage turn order
    States: player_1 turn, player_2 turn
    Initializes: Current Turn, Turn Order
    Behaviour: Switch Turn

    Still TBD?


  Question class
    Primary Objective: creates question and evaluates answer
    Behaviour(methods): creates question and evaluates answer

    Outputs randomized math question(addition) => STRETCH randomize to include subtraction, multiplication, division
    Displays the randomly selected question and asks current player
    Takes a commandline USER input as answer
    Evaluates answer vs correct answer
    retuns a boolean value indicating if question was properly answered

=end