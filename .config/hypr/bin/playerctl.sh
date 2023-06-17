#!/usr/bin/bash
artis=$(playerctl metadata artist)
title=$(playerctl metadata title)
echo "$artis - $title"