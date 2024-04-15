# Nerd Fonts

This is a set of scripts to simplify the installation of [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) for your systems and IDEs.

## Prerequisites
Before running the script, ensure that you have the following installed:

1. [Homebrew](https://brew.sh)
2. Git (for local installation)

## Usage
You can install the Nerd Font script in two ways: locally via Git clone or remotely via cURL.

```bash
curl -sS https://raw.githubusercontent.com/nlebedevinc/nerd-fonts/main/brew-all.sh | sh
```

To install a specific Nerd Font, pass the font name as an argument. The following will install `font-fira-code-nerd-font` as an example. The full list of currently supported Nerd Fonts is availabe [here](https://github.com/ryanoasis/nerd-fonts#patched-fonts).

```bash
curl -sS https://raw.githubusercontent.com/nlebedevinc/nerd-fonts/main/brew.sh font-fira-code-nerd-font | sh
```

### Local
Open your terminal and navigate to the directory where you want to clone the repository.

Clone the repository
```bash
git clone https://github.com/nlebedevinc/nerd-fonts.git
cd nerd-fonts 
```

Make the script executable
```bash
chmod +x brew-all.sh brew.sh
```

Run the script to install all support Nerd Fonts
```bash
./brew-all.sh
```

To install specific font. Replace font-fira-code-nerd-font with the name of the Nerd Font package you want to install.
```bash
./install_nerd_font.sh font-fira-code-nerd-font
```

## Troubleshooting
If you encounter any issues during the installation, please check the following:

- Ensure that Homebrew is installed and up-to-date.
- Check if the Homebrew cask-fonts repository has been tapped successfully.
- Verify that you have the necessary permissions to install the fonts.
- If the issue persists, please create an issue on the repository's GitHub page, providing detailed information about the problem.

## Contributing
Contributions to this project are welcome. If you find any bugs, have suggestions for improvements, or would like to add new features, please create an issue or submit a pull request.

## License
This project is licensed under the MIT License.
