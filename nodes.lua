-- Groups = crumbly =dirt, cracky = stone, snappy = leaves, choppy = wood, explody, oddly_breakable_by_hand
-- New groups = aethersoil, aetherstone, temple, dungeon ,aehtertree

--Dirts
minetest.register_node("aether2:quicksoil", {
  description = 'Quick Soil',
  tiles = {"blocks/quicksoil.png"},
  groups = {crumbly = 1},
})

minetest.register_node("aether2:aether_dirt", {
  description = 'Aether Dirt',
  tiles = {"blocks/aether_dirt.png"},
  groups = {crumbly = 1},
})

minetest.register_node("aether2:aether_dirt_with_grass", {
	description = "Aether Grass",
	tiles = {"blocks/aether_grass_top.png", "blocks/aether_dirt.png",
		{name = "blocks/aether_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'aether_dirt',

})


--Stones
minetest.register_node("aether2:holystone", {
	description = "Holystone",
	tiles = {"blocks/holystone.png"},
	groups = {aetherstone = 1},
})

--Trees

minetest.register_node("aether2:skyroot_log", {
	description = "skyroot_log",
	tiles = {"blocks/skyroot_log_top.png", "blocks/skyroot_log_top.png", "blocks/skyroot_log.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {aehtertree = 1},
	on_place = minetest.rotate_node,
})

minetest.register_node("aether2:golden_oak_log", {
	description = "Golden Oak Log",
	tiles = {"blocks/golden_oak_log_top.png", "blocks/golden_oak_log_top.png", "blocks/golden_oak_log.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {aehtertree=2 },
  on_place = minetest.rotate_node,

  drop = {
    max_items = 2,
    items = {
      item = {'aether2:golden_amber'}
    },
    {
      items = {'aether2:golden_oak_log'}
    }

  }
})

minetest.register_node("aether2:skyroot_leaves", {
  description = "Skyroot Leaves",
  drawtype = "allfaces_optional",
  waving = 1,
  tiles = {"sblocks/kyroot_leaves.png"},
  special_tiles = {"blocks/skyroot_leaves_opaque.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, leaves = 1},
})

minetest.register_node("aether2:golden_oak_leaves", {
  description = "Golden Oak Leaves",
  drawtype = "allfaces_optional",
  waving = 1,
  tiles = {"blocks/golden_oak_leaves.png"},
  special_tiles = {"blocks/golden_oak_leaves_opaque.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, leaves = 1},
})


minetest.register_node("aether2:skyroot_planks", {
  description = "Skyroot Planks",
  tiles = {"blocks/skyroot_planks.png"},
  groupts = {choppy=1, oddly_breakable_by_hand=1, snappy = 1,},
})

--Placeable Items
minetest.register_node("aether2:ambrosium_torch", {
  description = "Ambrosium Torch",
  groups = {oddly_breakable_by_hand=1},
  drawtype = "mesh",
  mesh = "mbrosium_torch_floor.obj",
  inventory_image = "blocks/ambrosium_torch.png",
  wield_image = "blocks/ambrosium_torch.png",
  tiles = {{
        name = "ambrosium_torch_animated.png",
        animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
  }}
})
