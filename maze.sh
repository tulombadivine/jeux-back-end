#!/bin/bash
echo " 
 __ __ __      # ______      # __          # ______      # ______      # ___ __ __     # ______      #  # _________  # ______      #
/_//_//_/\     #/_____/\     #/_/\         #/_____/\     #/_____/\     #/__//_//_/\    #/_____/\     #  #/________/\ #/_____/\     #
\:\\:\\:\ \    #\::::_\/_    #\:\ \        #\:::__\/     #\:::_ \ \    #\::\| \| \ \   #\::::_\/_    #  #\__.::.__\/ #\:::_ \ \    #
 \:\\:\\:\ \   # \:\/___/\   # \:\ \       # \:\ \  __   # \:\ \ \ \   # \:.      \ \  # \:\/___/\   #  #   \::\ \   # \:\ \ \ \   #
  \:\\:\\:\ \  #  \::___\/_  #  \:\ \____  #  \:\ \/_/\  #  \:\ \ \ \  #  \:.\-/\  \ \ #  \::___\/_  #  #    \::\ \  #  \:\ \ \ \  #
   \:\\:\\:\ \ #   \:\____/\ #   \:\/___/\ #   \:\_\ \ \ #   \:\_\ \ \ #   \. \  \  \ \#   \:\____/\ #  #     \::\ \ #   \:\_\ \ \ #
    \_______\/ #    \_____\/ #    \_____\/ #    \_____\/ #    \_____\/ #    \__\/ \__\/#    \_____\/ #  #      \__\/ #    \_____\/ #
               ##             ##             ##             ##             ##               ##             ##  ##            ##             ##
"
echo " __ __ __     # ________      # ______     # ______      # ___   # ______      #  # _______     # ________      # ___ __ __     # ______      #
/__//_//_/\    #/_______/\     #/_____/\    #/_____/\     #/__/\  #/_____/\     #  #/______/\    #/_______/\     #/__//_//_/\    #/_____/\     #
\::\| \| \ \   #\::: _  \ \    #\:::__\/    #\::::_\/_    #\::\ \ #\::::_\/_    #  #\::::__\/__  #\::: _  \ \    #\::\| \| \ \   #\::::_\/_    #
 \:.      \ \  # \::(_)  \ \   #   /: /     # \:\/___/\   # \:_\/ # \:\/___/\   #  # \:\ /____/\ # \::(_)  \ \   # \:.      \ \  # \:\/___/\   #
  \:.\-/\  \ \ #  \:: __  \ \  #  /::/___   #  \::___\/_  #       #  \_::._\:\  #  #  \:\\_  _\/ #  \:: __  \ \  #  \:.\-/\  \ \ #  \::___\/_  #
   \. \  \  \ \#   \:.\ \  \ \ # /_:/____/\ #   \:\____/\ #       #    /____\:\ #  #   \:\_\ \ \ #   \:.\ \  \ \ #   \. \  \  \ \#   \:\____/\ #
    \__\/ \__\/#    \__\/\__\/ # \_______\/ #    \_____\/ #       #    \_____\/ #  #    \_____\/ #    \__\/\__\/ #    \__\/ \__\/#    \_____\/ #
               ##               ##            ##             ##       ##             ##  ##             ##               ##               ##             ##
"
echo ""
echo "YOU ARE LOST IN A MAZE, YOU HAVE TO FIND YOUR WAY OUT ..."
echo ""
echo "___________________________________  
| _____ |   | ___ | ___ ___ | |   | |
| |   | |_| |__ | |_| __|____ | | | |
| | | |_________|__ |______ |___|_| |
| |_|   | _______ |______ |   | ____|
| ___ | |____ | |______ | |_| |____ |
|___|_|____ | |   ___ | |________ | |
|   ________| | |__ | |______ | | | |
| | | ________| | __|____ | | | __| |
|_| |__ |   | __|__ | ____| | |_| __|
|   ____| | |____ | |__ |   |__ |__ |
| |_______|_______|___|___|___|_____|
"
echo ""
game_running=true
room_number=2
while [ "$game_running" = true ]
do
    if [ $room_number -eq 1 ]
    then
        echo "There are 2 doors in your room: (n)orth, (e)ast, where do you want to go ?"
           echo "
             .----------.         .----------.     
\   (  ||    ||  )  / \   (   ||    || )     /
 \   ~-||====||-~  /   \   ~--||====||-~    /
  \    ||    ||   /     \     ||    ||    /
  |    ||====||  /      |     ||====||   / 
  |__  ||    ||  |      |___  ||    ||  | 
  | |\ ||====||__|      |  |\ ||====||__|     
  | | \      /|  |      |  | \       /| |     
  | |  \    / |  |      |  |   \    / | |    
  | |   \__|  |  |      |  |     \__| | |
  | |   |__|  |  |      |  |     |__| | |
  | |   /  |  |  |      |  |     /  | | |
  | |  /    \ |  |      |  |   /    \ | |
  | | /      \|  |      |  | /       \| |  
  |_|/        |__|      |__|/         \_|
  |              |      |               |
  |              |      |               |
  /              \      /                \   
 /                \    /                   \  
/                  \ /                       \
        "
        read choice
        if [ "$choice" = "n" ]
        then
            clear
            echo "> going to north..."
            room_number=4
            elif [ "$choice" = "e" ]
            then
                clear
                echo "> going to east..."
                room_number=2
            else
               echo "THIS CHOICE DOESN'T EXIST!"
            fi
        elif [ $room_number -eq 2 ]
        then
            echo "There are 3 doors in your room: (n)orth, (w)est, (e)ast, where do you want to go ?"
                      echo "
             .----------.         .----------.     
\   (  ||    ||  )  / \   (   ||    || )     /
 \   ~-||====||-~  /   \   ~--||====||-~    /
  \    ||    ||   /     \     ||    ||    /
  |    ||====||  /      |     ||====||   / 
  |__  ||    ||  |      |___  ||    ||  | 
  | |\ ||====||__|      |  |\ ||====||__|     
  | | \      /|  |      |  | \       /| |     
  | |  \    / |  |      |  |   \    / | |    
  | |   \__|  |  |      |  |     \__| | |
  | |   |__|  |  |      |  |     |__| | |
  | |   /  |  |  |      |  |     /  | | |
  | |  /    \ |  |      |  |   /    \ | |
  | | /      \|  |      |  | /       \| |  
  |_|/        |__|      |__|/         \_|
  |              |      |               |
  |              |      |               |
  /              \      /                \   
 /                \    /                   \  
/                  \ /                       \
        "
            read choice
            if [ "$choice" = "n" ]
            then
                clear
                echo "> going to north..."
                room_number=5
            elif [ "$choice" = "w" ]
            then
                clear
                echo "> going to west..."
                room_number=1
            elif [ "$choice" = "e" ]
            then
                clear
                echo "> going to east..."
                room_number=3
            else
               echo "THIS CHOICE DOESN'T EXIST!"
            fi
        elif [ $room_number -eq 3 ]
        then
             # TODO: complete
            echo "There are 2 doors in your room: (n)orth, (w)est, where do you want to go?"
                      echo "
             .----------.         .----------.     
\   (  ||    ||  )  / \   (   ||    || )     /
 \   ~-||====||-~  /   \   ~--||====||-~    /
  \    ||    ||   /     \     ||    ||    /
  |    ||====||  /      |     ||====||   / 
  |__  ||    ||  |      |___  ||    ||  | 
  | |\ ||====||__|      |  |\ ||====||__|     
  | | \      /|  |      |  | \       /| |     
  | |  \    / |  |      |  |   \    / | |    
  | |   \__|  |  |      |  |     \__| | |
  | |   |__|  |  |      |  |     |__| | |
  | |   /  |  |  |      |  |     /  | | |
  | |  /    \ |  |      |  |   /    \ | |
  | | /      \|  |      |  | /       \| |  
  |_|/        |__|      |__|/         \_|
  |              |      |               |
  |              |      |               |
  /              \      /                \   
 /                \    /                   \  
/                  \ /                       \
        "
            read choice
            if [ "$choice" = "n" ]
            then
            clear
            echo "> going to north..."
            room_number=6
        elif [ "$choice" = "w" ]
        then
            clear
            echo "> going to west..."
            room_number=2
        else
           echo "THIS CHOICE DOESN'T EXIST!"
        fi
        elif [ $room_number -eq 4 ]
        then
            echo ">>>>>>>>>>>> It's a trap... you are DEAD :/"
echo "   _____              __  __   ______      ____   __      __  ______   _____  
  / ____|     /\     |  \/  | |  ____|    / __ \  \ \    / / |  ____| |  __ \ 
 | |  __     /  \    | \  / | | |__      | |  | |  \ \  / /  | |__    | |__) |
 | | |_ |   / /\ \   | |\/| | |  __|     | |  | |   \ \/ /   |  __|   |  _  / 
 | |__| |  / ____ \  | |  | | | |____    | |__| |    \  /    | |____  | | \ \ 
  \_____| /_/    \_\ |_|  |_| |______|    \____/      \/     |______| |_|  \_\
  "

            game_running=false
        elif [ $room_number -eq 5 ]
        then
            # TODO: complete
            echo "There is 1 door in your room: (s)outh, where do you want to go?"
                      echo "
             .----------.         .----------.     
\   (  ||    ||  )  / \   (   ||    || )     /
 \   ~-||====||-~  /   \   ~--||====||-~    /
  \    ||    ||   /     \     ||    ||    /
  |    ||====||  /      |     ||====||   / 
  |__  ||    ||  |      |___  ||    ||  | 
  | |\ ||====||__|      |  |\ ||====||__|     
  | | \      /|  |      |  | \       /| |     
  | |  \    / |  |      |  |   \    / | |    
  | |   \__|  |  |      |  |     \__| | |
  | |   |__|  |  |      |  |     |__| | |
  | |   /  |  |  |      |  |     /  | | |
  | |  /    \ |  |      |  |   /    \ | |
  | | /      \|  |      |  | /       \| |  
  |_|/        |__|      |__|/         \_|
  |              |      |               |
  |              |      |               |
  /              \      /                \   
 /                \    /                   \  
/                  \ /                       \
        "
            read choice
          if [ "$choice" = "s" ]
          then
              clear
              echo "> going to south..."
              room_number=2
          else
             echo "THIS CHOICE DOESN'T EXIST!"
             echo "
             XXXXXXX       XXXXXXX
X:::::X       X:::::X
X:::::X       X:::::X
X::::::X     X::::::X
XXX:::::X   X:::::XXX
   X:::::X X:::::X   
    X:::::X:::::X    
     X:::::::::X     
     X:::::::::X     
    X:::::X:::::X    
   X:::::X X:::::X   
XXX:::::X   X:::::XXX
X::::::X     X::::::X
X:::::X       X:::::X
X:::::X       X:::::X
XXXXXXX       XXXXXXX
                     
             "
          fi
        elif [ $room_number -eq 6 ]
        then
            echo ">>>>>>>>>>>> You found the EXIT... Congratulations :)"
            read choice
            game_running=false
            echo "
                                                                                                                                                                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                  ''''''                   
        CCCCCCCCCCCCC     OOOOOOOOO     NNNNNNNN        NNNNNNNN        CCCCCCCCCCCCCRRRRRRRRRRRRRRRRR                  AAA               TTTTTTTTTTTTTTTTTTTTTTT '::::'   SSSSSSSSSSSSSSS 
     CCC::::::::::::C   OO:::::::::OO   N:::::::N       N::::::N     CCC::::::::::::CR::::::::::::::::R                A:::A              T:::::::::::::::::::::T '::::' SS:::::::::::::::S
   CC:::::::::::::::C OO:::::::::::::OO N::::::::N      N::::::N   CC:::::::::::::::CR::::::RRRRRR:::::R              A:::::A             T:::::::::::::::::::::T ':::''S:::::SSSSSS::::::S
  C:::::CCCCCCCC::::CO:::::::OOO:::::::ON:::::::::N     N::::::N  C:::::CCCCCCCC::::CRR:::::R     R:::::R            A:::::::A            T:::::TT:::::::TT:::::T':::'  S:::::S     SSSSSSS
 C:::::C       CCCCCCO::::::O   O::::::ON::::::::::N    N::::::N C:::::C       CCCCCC  R::::R     R:::::R           A:::::::::A           TTTTTT  T:::::T  TTTTTT''''   S:::::S            
C:::::C              O:::::O     O:::::ON:::::::::::N   N::::::NC:::::C                R::::R     R:::::R          A:::::A:::::A                  T:::::T               S:::::S            
C:::::C              O:::::O     O:::::ON:::::::N::::N  N::::::NC:::::C                R::::RRRRRR:::::R          A:::::A A:::::A                 T:::::T                S::::SSSS         
C:::::C              O:::::O     O:::::ON::::::N N::::N N::::::NC:::::C                R:::::::::::::RR          A:::::A   A:::::A                T:::::T                 SS::::::SSSSS    
C:::::C              O:::::O     O:::::ON::::::N  N::::N:::::::NC:::::C                R::::RRRRRR:::::R        A:::::A     A:::::A               T:::::T                   SSS::::::::SS  
C:::::C              O:::::O     O:::::ON::::::N   N:::::::::::NC:::::C                R::::R     R:::::R      A:::::AAAAAAAAA:::::A              T:::::T                      SSSSSS::::S 
C:::::C              O:::::O     O:::::ON::::::N    N::::::::::NC:::::C                R::::R     R:::::R     A:::::::::::::::::::::A             T:::::T                           S:::::S
 C:::::C       CCCCCCO::::::O   O::::::ON::::::N     N:::::::::N C:::::C       CCCCCC  R::::R     R:::::R    A:::::AAAAAAAAAAAAA:::::A            T:::::T                           S:::::S
  C:::::CCCCCCCC::::CO:::::::OOO:::::::ON::::::N      N::::::::N  C:::::CCCCCCCC::::CRR:::::R     R:::::R   A:::::A             A:::::A         TT:::::::TT             SSSSSSS     S:::::S
   CC:::::::::::::::C OO:::::::::::::OO N::::::N       N:::::::N   CC:::::::::::::::CR::::::R     R:::::R  A:::::A               A:::::A        T:::::::::T             S::::::SSSSSS:::::S
     CCC::::::::::::C   OO:::::::::OO   N::::::N        N::::::N     CCC::::::::::::CR::::::R     R:::::R A:::::A                 A:::::A       T:::::::::T             S:::::::::::::::SS 
        CCCCCCCCCCCCC     OOOOOOOOO     NNNNNNNN         NNNNNNN        CCCCCCCCCCCCCRRRRRRRR     RRRRRRRAAAAAAA                   AAAAAAA      TTTTTTTTTTT              SSSSSSSSSSSSSSS   
                                                                                                                                                                                             
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                              
            "
    fi
 done
