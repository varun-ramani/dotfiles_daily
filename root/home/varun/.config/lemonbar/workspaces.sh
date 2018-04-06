#!/usr/bin/zsh

WSTXT=""
updateWorkspaces() {
    raw=$(i3-msg -t get_workspaces)
    json=$(echo ${raw} | jshon -a -k)
    echo ${json}
}
updateWorkspaces
