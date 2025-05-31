local select = {
  mode = "deconstruct",
  entity_type_filters = { "tree" },
  tile_filters = { "tile-unknown" },
  cursor_box_type = "entity",
  border_color = { r = 1, g = 1, b = 1 }
}

data:extend({
  {
    type = "shortcut",
    name = "dead-tree-deconstructor",
    action = "lua",
    style = "red",
    icon = "__DeadTreeDeconstructor__/graphics/dead-tree-deconstructor-64.png",
    icon_size = 64,
    small_icon = "__DeadTreeDeconstructor__/graphics/dead-tree-deconstructor-32.png",
    small_icon_size = 32
  },
  {
    type = "selection-tool",
    name = "dead-tree-deconstructor",
    subgroup = "tool",
    icon = "__DeadTreeDeconstructor__/graphics/dead-tree-deconstructor-64.png",
    icon_size = 64,
    small_icon = "__DeadTreeDeconstructor__/graphics/dead-tree-deconstructor-32.png",
    small_icon_size = 32,
    flags = { "only-in-cursor", "not-stackable", "spawnable" },
    hidden = true,
    stack_size = 1,
    select = select,
    alt_select = select
  }
})
