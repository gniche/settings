#!/bin/sh


jira="([A-z]+[A-z0-9]*(-[A-z0-9])*-[0-9]+)"
delim="[-:_,;\s]"
suffix="(($delim)(.|\n|\r)*)"

# msgValidRgx="^$jira$suffix?"

ticketRgx="^$jira((?=$delim)|(?!.))"
ticket=$(git rev-parse --abbrev-ref HEAD | grep -oP $ticketRgx)


if [ ! -z "$ticket" ]; then

  msgRgx="^$ticket$suffix?"
  if !(grep -qP $msgRgx "$1"); then
    sed -i "1s;^;$ticket: ;" "$1"
  fi

fi