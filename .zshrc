# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "$HOME/.cache/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "$HOME/.cache/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by Zap installer
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "mafredri/zsh-async"
plug "rkh/zsh-jj"
plug "zap-zsh/supercharge"
plug "romkatv/powerlevel10k"
plug "zsh-users/zsh-syntax-highlighting"
for plugin in $(find $HOME/.config/zsh -iname '*.zsh'); do
  plug "$plugin"
done

# Load and initialise completion system
autoload -Uz compinit
compinit

# Expose the GPG agent to the SSH auth socket
export SSH_AUTH_SOCK="${HOME}/.gnupg/S.gpg-agent.ssh"

# Set up the editor
export EDITOR="code -w"

alias ls="ls --color=auto"

if [ -d $HOME/.dotfiles ]; then
  alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if command -v scfw &>/dev/null; then
# BEGIN SCFW MANAGED BLOCK
alias npm="scfw run npm"
alias pip="scfw run pip"
alias poetry="scfw run poetry"
export SCFW_DD_AGENT_LOG_PORT="10365"
export SCFW_DD_LOG_LEVEL="ALLOW"
# END SCFW MANAGED BLOCK
fi
