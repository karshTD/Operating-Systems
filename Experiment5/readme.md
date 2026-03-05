Aim

To implement a shell script that demonstrates the use of the case...esac statement in Linux by creating a simple interactive menu-driven program.

Learning Outcomes

Understand how the case...esac conditional statement works in shell scripting.

Demonstrate how a shell script can execute different operations based on user input using Linux commands.

Problem Statement

Students often need quick utility tools while working in a Linux terminal. Develop a Student Utility Tool using a shell script that provides a simple menu allowing the user to perform small tasks such as checking grade classification, calculating BMI, or displaying a motivational message. The script should repeatedly display the menu until the user chooses to exit. The program must use the case...esac statement to perform different actions based on the user’s selection.

Description

The script displays a menu with multiple options. The user selects an option by entering a number. Based on the input, the case...esac statement determines which block of commands should execute. A while loop is used so that the program continues running until the user selects the exit option.

Algorithm

Start the script.

Use a while loop to continuously display the menu.

Display different options to the user.

Read the user’s choice using the read command.

Use the case...esac statement to match the choice with the corresponding operation.

Execute the selected operation.

If the user selects exit, terminate the loop and stop the progra
