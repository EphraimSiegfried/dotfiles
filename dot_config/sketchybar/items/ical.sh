#!/bin/sh
POPUP_CLICK_SCRIPT="sketchybar --set ical popup.drawing=toggle"

sketchybar --add       item            ical right                         \
           --set       ical            update_freq=180                    \
                                       icon=􀉉                             \
                                       popup.align=right                  \
                                       script="$PLUGIN_DIR/ical_2.sh"       \
                                       click_script="$POPUP_CLICK_SCRIPT" \
           --subscribe ical            mouse.entered                      \
                                       mouse.exited                       \
                                       mouse.exited.global                \
                                       mouse.clicked                      \
                                                                          \
           --add       item            ical.template popup.ical           \
           --set       ical.template   drawing=off                        \
                                       background.corner_radius=12        \
                                       padding_left=7                     \
                                       padding_right=7                    \

