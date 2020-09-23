#!/usr/bin/env bash

set -o errexit

#disable alt+f4
gsettings set org.gnome.desktop.wm.keybindings switch-windows []

#disable alt+tab
gsettings set org.gnome.desktop.wm.keybindings close []

#change alt+space to ctrl+alt+c for closing browser
gsettings set org.gnome.desktop.wm.keybindings activate-window-menu "['Ctrl<Alt><C>']"

#block alt+f2
gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog []

#disable terminal 
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal []

#hide taskbar
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false

#remove screensaver and autolock
gsettings set org.gnome.desktop.screensaver lock-enabled false


#### remove Firefox shortcuts with empty system shortcuts module ####

#create new custom system shortcuts, that will override firefox shortcuts
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings
"['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/new-window/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/new-private-window/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/addons/',  '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/open-file/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/save-page/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/exit/']"

## set names for new custom system shortcuts
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/new-window/ name 'firefox-new-window'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/new-private-window/ name 'firefox-new-private-window'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/addons/ name 'firefox-addons'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/open-file/ name 'firefox-open-file'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/save-page/ name 'firefox-save-page'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/exit/ name 'firefox-exit'

## set command that will executed by shortcut - empty command in our case
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/new-window/ command '/bin/false'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/new-private-window/ command '/bin/false'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/addons/ command '/bin/false'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/open-file/ command '/bin/false'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/save-page/ command '/bin/false'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/exit/ command '/bin/false'

## set shortcut
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/new-window/ binding '<Ctrl>n'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/new-private-window/ binding '<Ctrl><Shift>p'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/addons/ binding '<Ctrl><Shift>a'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/open-file/ binding '<Ctrl>o'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/save-page/ binding '<Ctrl>s'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/exit/ binding '<Ctrl>q'
