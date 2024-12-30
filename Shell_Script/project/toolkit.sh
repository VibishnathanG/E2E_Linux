#!/bin/bash

echo "Please choose a script to run:"
select choice in "folder_organiser.sh" "cruft_remover.sh" "Exit"; do
    case $choice in
        "folder_organiser.sh")
            echo "Running File Organizer script..."
            ./file_organizer.sh
            break
            ;;
        "cruft_remover.sh")
            echo "Running cruft script..."
            ./cruft_remover.sh  
            break
            ;;
        "Exit")
            echo "Exiting."
            break
            ;;
        *)
            echo "Invalid choice. Please select again."
            ;;
    esac
done
