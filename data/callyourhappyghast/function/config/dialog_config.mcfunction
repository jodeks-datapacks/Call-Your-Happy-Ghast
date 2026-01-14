scoreboard players set @a callyourhappyghast.config 0

$dialog show @s {\
  type:"minecraft:multi_action",\
  title:"Call Your Happy Ghast Config",\
  "body": [\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:goat_horn"\
      }\
    }\
  ],\
  inputs:[\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_no_player_on_happy_ghast",\
      "label": "Calling doesn't work when player is mounting the happy ghast",\
      "initial": $(no_player_on_happy_ghast),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_mount_automatically",\
      "label": "Automatically mount the happy ghast after calling it",\
      "initial": $(mount_automatically),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_happy_ghast_owner",\
      "label": "Only the first player that bound a horn to a happy ghast can call it",\
      "initial": $(happy_ghast_owner),\
      "on_true": "1",\
      "on_false": "0"\
    },\
  ],\
  columns:1,\
    "exit_action": {\
    "label": "Save",\
    "action": {\
      type:"dynamic/run_command",\
      template:"function callyourhappyghast:config/save_config {dialog_happy_ghast_owner:$(dialog_happy_ghast_owner), dialog_no_player_on_happy_ghast:$(dialog_no_player_on_happy_ghast), dialog_mount_automatically:$(dialog_mount_automatically)}"\
    }\
  },\
  actions:[\
    {\
      "label": "Save",\
      "action": {\
        type:"dynamic/run_command",\
        template:"function callyourhappyghast:config/save_config {dialog_happy_ghast_owner:$(dialog_happy_ghast_owner), dialog_no_player_on_happy_ghast:$(dialog_no_player_on_happy_ghast), dialog_mount_automatically:$(dialog_mount_automatically)}"\
      }\
    }\
  ]\
}