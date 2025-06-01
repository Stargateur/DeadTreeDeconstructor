script.on_event(defines.events.on_lua_shortcut,
  function(event)
    local player = game.players[event.player_index]
    if event.prototype_name == "dead-tree-deconstructor" then
      if player.clear_cursor() then
        player.cursor_stack.set_stack({ name = "dead-tree-deconstructor" })
      end
    end
  end)

script.on_event(defines.events.on_player_selected_area, function(event)
  local player = game.players[event.player_index]
  local n = player.mod_settings["dead-tree-deconstructor-percentage"].value / 100
  if event.item == "dead-tree-deconstructor" then
    for _, entity in pairs(event.entities) do
      if entity.tree_stage_index_max == 0 or entity.tree_stage_index / entity.tree_stage_index_max >= n then
        entity.order_deconstruction(player.force, player)
      end
    end
  end
end)
