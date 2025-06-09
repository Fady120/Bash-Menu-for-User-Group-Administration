#!/bin/bash

while true; do
    echo -e "\n===================="
    echo "  Main Menu"
    echo "===================="
    echo "1) User"
    echo "2) Group"
    echo "3) Exit"
    echo "--------------------"

    read -p "Enter a number, pls: " option

    case $option in
        1)
            while true; do
                echo -e "\n--------------------"
                echo "  User Options"
                echo "--------------------"
                echo "1) Add User"
                echo "2) Delete User"
                echo "3) Return to the Main Menu"
                echo "--------------------"

                read -p "Enter a number, pls: " userOption

                case $userOption in
                    1)
                        read -p "👨 Enter the name of the user: " userName
                        sudo useradd "$userName"
                        if [[ $? -eq 0 ]]; then
                            echo "✅ User $userName was added successfully"
                        fi
                        ;;
                    2)
                        read -p "👨 Enter the name of the user: " userName
                        sudo userdel -r "$userName"
                        if [[ $? -eq 0 ]]; then
                            echo "✅ User $userName was deleted successfully"
                        fi
                        ;;
                    3)
                        break
                        ;;
                    *)
                        echo "❌ Wrong number. Please, try again."
                        ;;
                esac
            done
            ;;
        2)
            while true; do
                echo -e "\n--------------------"
                echo "  Group Options"
                echo "--------------------"
                echo "1) Add Group"
                echo "2) Delete Group"
                echo "3) Rename Group"
                echo "4) Return to the Main Menu"
                echo "--------------------"

                read -p "Enter a number, pls: " groupOption

                case $groupOption in
                    1)
                        read -p "🦉 Enter the name of the group you want to add: " groupName
                        sudo groupadd "$groupName"
                        if [[ $? -eq 0 ]]; then
                            echo "✅ Group $groupName was added successfully"
                        fi
                        ;;
                    2)
                        read -p "🦉 Enter the name of the group you want to delete: " groupName
                        sudo groupdel "$groupName"
                        if [[ $? -eq 0 ]]; then
                            echo "✅ Group $groupName was deleted successfully"
                        fi
                        ;;
                    3)
                        read -p "🦉 Enter the name of the group you want to rename: " groupName
                        read -p "🧐 What is the new name? " newGroupName
                        sudo groupmod -n "$newGroupName" "$groupName"
                        if [[ $? -eq 0 ]]; then
                            echo "✅ Group $groupName was renamed to $newGroupName"
                        fi
                        ;;
                    4)
                        break
                        ;;
                    *)
                        echo "❌ Wrong number. Please, try again."
                        ;;
                esac
            done
            ;;
        3)
            echo -e "\n👋 Exiting the script. Goodbye!"
            break
            ;;
        *)
            echo "❌ Wrong number. Please, try again."
            ;;
    esac
done