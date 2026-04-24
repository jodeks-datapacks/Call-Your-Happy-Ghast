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
        "fallback": "Calling doesn't work when player is mounting the Happy Ghast"\
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
        "fallback": "Automatically mount the Happy Ghast after calling it"\
      },\
      "initial": $(mount_automatically),\
      "on_true": "1",\
      "on_false": "0"\
    }\
  ],\
  columns:1,\
  actions:[\
    {\
        "label": {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
      "action": {\
        type:"dynamic/run_command",\
        template:"function call_your_happy_ghast:config/save_config {dialog_no_player_on_happy_ghast:$(dialog_no_player_on_happy_ghast), dialog_mount_automatically:$(dialog_mount_automatically)}"\
      }\
    }\
  ]\
}