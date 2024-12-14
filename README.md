# ZSHReady
ZSHReady is a collection of scripts and configurations designed to speed up the setup of the ZSH terminal on a new Linux system. This project allows you to quickly achieve a personalized, well-configured, and functional terminal.



$.zshrc file
The .zshrc file is a ZSH configuration file designed to enhance the user experience by setting up custom aliases, history settings, and prompt configurations. Here's a breakdown of its features:

--Aliases
Contains classic aliases, such as the ls command, and an essential alias for manually executing the backup of the .zsh_history file.

--History Management
The .zsh_history file requires a configuration with several setopt commands. These commands prevent duplicate commands from overloading the history and allow multiple terminals to save their commands simultaneously.

--Prompt Configuration
The project includes an automatic setup for simplified prompt configuration. The selected prompt style is Fade with White, Gray, Blue, offering a clean and visually appealing terminal experience. 



$rotate_history.sh
he rotate_history.sh script is a Bash script designed to manage and backup the .zsh_history file automatically. Here's how it works:

--Directory Setup:
Creates a backup directory (~/.zsh_history_backups) if it doesn't exist.

--History Rotation:
Checks if the .zsh_history file has reached or exceeded 2000 lines using wc -l.
If the threshold is met, it creates a timestamped backup of the .zsh_history file in the backup directory.
Clears the original .zsh_history file to start fresh.
This script ensures that the history file remains clean and prevents it from growing indefinitely, while also keeping backups for future reference.
