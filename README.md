
<img src="https://img.shields.io/badge/Made%20with-Bash-1f425f.svg">

<div id="header" align="center">
  Script in bash to store your passwords or tokens of any service securely and locally.
  </div>
  
  
## 💭 Installing
1. First clone my repository ``git clone https://github.com/mavinsi/passwarden ``
2. Give execution permission to the script ``sudo chmod +x install.sh``
3. now run the install script ``sudo ./install.sh``

## 🏃 Usage

To start store your password or token: ``passwarden -S service_name password_or_token``

Now you can view your stored password or token: ``passwarden -V service_name``

or also list all stored passwords or tokens: ``passwarden -L``

If you prefer you can remove your password or token: ``passwarden -R service_name``
