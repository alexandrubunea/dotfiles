# My Dotfiles

Welcome to my dotfiles repository! This repository contains my personal configuration files for various tools I use daily. These dotfiles are organized to provide a seamless and optimized experience for my development environment, with a focus on productivity and aesthetic customization.

## 🌟 Features

- **Neovim**: A custom Neovim setup with a Lua configuration, plugin management via `lazy.nvim`, and enhanced LSP support.
- **Kitty**: A terminal emulator configuration with multiple themes and a custom configuration.
- **Bat**: A `bat` configuration for syntax highlighting with custom themes.
- **Starship**: A minimalistic prompt configuration.
- **Zsh**: A customized Zsh shell configuration for a better command-line experience.

## 🛠️ Tools & Technologies

- **Operating System**: Arch Linux (but these configurations should work on any Linux system)
- **Neovim**: Neovim with Lua-based configuration
- **Terminal Emulator**: Kitty
- **Shell**: Zsh
- **Syntax Highlighting**: Bat
- **Prompt**: Starship
## 🚀 Installation

1. **Clone the Repository**:
   First, clone this repository to your home directory:
   ```bash
   git clone https://github.com/your-username/dotfiles.git ~/.dotfiles
   ```

2. **Stow the Configurations**:
   Stow the configurations for your tools. To do this, you can use GNU Stow:
   ```bash
   cd ~/.dotfiles
   stow bat kitty nvim starship zsh
   ```

3. **Install Dependencies**:
   Ensure you have the necessary tools installed:

   - **Neovim**: `nvim`
   - **Kitty**: `kitty`
   - **Zsh**: `zsh`
   - **Starship**: Install Starship prompt with:
     ```bash
     curl -sS https://starship.rs/install.sh | sh
     ```
   - **Bat**: Install Bat with:
     ```bash
     sudo pacman -S bat
     ```

4. **Customize**:
   - Feel free to modify the configuration files to fit your needs.
   - The themes used in `bat` and `kitty` are based on the **Catppuccin** color scheme, but you can change them in the respective configuration files (`bat/config`, `kitty/kitty.conf`, etc.).

## 📜 Usage

- **Neovim**: Open Neovim to use the customized setup:
  ```bash
  nvim
  ```
- **Kitty**: Start a new terminal session with Kitty:
  ```bash
  kitty
  ```
- **Zsh**: Enjoy your customized Zsh shell setup. Run `zsh` if you are using another shell.
- **Starship**: The Starship prompt will automatically be used in your terminal if installed correctly.
- **Bat**: Use `bat` for syntax highlighting:
  ```bash
  bat <file_name>
  ```

## 🛡️ Disclaimer

These dotfiles are tailored to my personal preferences. They should work on most systems but may need some adjustments depending on your environment and tools. Always back up your current configuration files before overwriting them.

## 🤝 Contributing

Feel free to fork the repository and contribute your own improvements or customizations. Pull requests are always welcome!
