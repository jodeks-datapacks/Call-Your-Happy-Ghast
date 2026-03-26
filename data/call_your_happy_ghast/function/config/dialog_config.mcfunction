scoreboard players set @a call_your_happy_ghast.config 0

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
      "label": {\
        "translate": "call_your_happy_ghast.config.no_player_on_happy_ghast",\
        "fallback": "Calling doesn't work when player is mounting the happy ghast"\
      },\
      "initial": $(no_player_on_happy_ghast),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_mount_automatically",\
      "label": {\
        "translate": "call_your_happy_ghast.config.mount_automatically",\
        "fallback": "Automatically mount the happy ghast after calling it"\
      },\
      "initial": $(mount_automatically),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_happy_ghast_owner",\
      "label": {\
        "translate": "call_your_happy_ghast.config.happy_ghast_owner",\
        "fallback": "Only the first player that bound a horn to a happy ghast can call it"\
      },\
      "initial": $(happy_ghast_owner),\
      "on_true": "1",\
      "on_false": "0"\
    },\
  ],\
  columns:1,\
    "exit_action": {\
      "label": {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
    "action": {\
      type:"dynamic/run_command",\
      template:"function call_your_happy_ghast:config/save_config {dialog_happy_ghast_owner:$(dialog_happy_ghast_owner), dialog_no_player_on_happy_ghast:$(dialog_no_player_on_happy_ghast), dialog_mount_automatically:$(dialog_mount_automatically)}"\
    }\
  },\
  actions:[\
    {\
        "label": {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
      "action": {\
        type:"dynamic/run_command",\
        template:"function call_your_happy_ghast:config/save_config {dialog_happy_ghast_owner:$(dialog_happy_ghast_owner), dialog_no_player_on_happy_ghast:$(dialog_no_player_on_happy_ghast), dialog_mount_automatically:$(dialog_mount_automatically)}"\
      }\
    }\
  ]\
}