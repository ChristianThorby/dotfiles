# New Workstation Setup

Follow these steps in order.

---

## Clone Repositories

Clone dotfiles into home directory (required for `stow`):

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
