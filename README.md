# New Workstation Setup

Follow these steps in order.

---

## Clone Repositories

Clone dotfiles into home directory (`stow` requires homedir, not the usual repos dir):

```bash
git clone git@github.com:ChristianThorby/dotfiles.git ~/
```
---

## Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
https://brew.sh

---

## Install Packages

```bash
brew install iterm2 && \
brew install git && \
brew install stow && \
brew install fzf && \
brew install --cask font-meslo-lg-nerd-font && \
brew install starship
```

---

## Stow Dotfiles

From inside the dotfiles directory:

```bash
stow .
```

---

## Zsh Configuration

Add this to `.zshrc` (create the file if needed):

```bash
source ~/.zshrc_shared
```

---

## Git Configuration

Edit Git config:

```bash
vim ~/.gitconfig
```

Add:

```ini
[include]
    path = ~/.config/git/shared-config
```

---

## iTerm2 Setup

### Font
- Settings → Profiles → Text
  - Set font to **Meslo**

### Window
- Settings → Profiles → Window
  - Set **Style = Maximized**

### Cursor
- Settings → Profiles → Text → Cursor
  - Enable **Animate Movement**

### Copy Mode Shortcut
- Settings → Keys → Key Bindings
  - Add new:
    - Shortcut: `Shift + Space`
    - Action: `Select Menu Item...`
    - Menu: `Copy Mode`

---

# Docker on Mac
```bash
brew install docker colima
```

check if colima is running
```bash
colima status
```
start colima
```bash
colima start 
```
test docker
```bash
docker run hello-world
```

errors about `/var/run/docker.sock` should not happen, 
reinstall, restart, rewhatever, but should not have to mess around with env-vars to get 
docker running on mac

can give colime more resources if needed

have not tested this yet!
```bash
colima start --cpu 2 --memory 4 --disk 60
```
## Docker compose on Mac
In brew, `docker-compose` seems to refer to the plugin and not the standalone
```bash
brew install docker-compose
```
do as the install output tells you:
Compose is a Docker plugin. For Docker to find the plugin, add "cliPluginsExtraDirs" to ~/.docker/config.json:
```bash
"cliPluginsExtraDirs": [
  "/opt/homebrew/lib/docker/cli-plugins"
]
```
docker compose test
```bash
mkdir ~/docker-compose-test && \
printf "services:\n  hello_world:\n    image: hello-world\n" > ~/docker-compose-test/docker-compose.yml && \
docker compose -f ~/docker-compose-test/docker-compose.yml up && \
docker compose -f ~/docker-compose-test/docker-compose.yml down && \
rm -rf ~/docker-compose-test
```


## Bugs / Fixes
### IntelliJ (IdeaVim key hold issue on macOS)

This option comes as a prompt after installing ideavim for the first time
so only needed if choosing the wrong option
```bash
defaults write -g ApplePressAndHoldEnabled 0
```

Restart IntelliJ afterward.

---

### less missing `lesskey`

If `less` version is below 582:

```bash
brew install less
```

---

### Keyboard issue (`<` and `>` not working)

Steps:

1. Delete:
   ```
   /Library/Preferences/com.apple.keyboardtype.plist
   ```
2. Unplug keyboard
3. Restart Mac
4. Plug keyboard directly into Mac (not dock)
5. Reconfigure keyboard
