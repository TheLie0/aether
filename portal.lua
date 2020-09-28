--[[

  Code for the Aether portal, created wath the help of the 
  portal_examples.lua file from the nether mod.

  --

  Copyright (C) 2020 Treer
  Permission to use, copy, modify, and/or distribute this software for
  any purpose with or without fee is hereby granted, provided that the
  above copyright notice and this permission notice appear in all copies.
  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL
  WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR
  BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES
  OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
  WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
  ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
  SOFTWARE.

]]--

local S = nether.get_translator

nether.register_portal("aether_portal", {
	frame_node_name     = "nether:glowstone",
	wormhole_node_color = 2, -- 2 is blue
	particle_texture    = {
		name      = "nether_particle_anim1.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 7,
			aspect_h = 7,
			length = 1,
		},
		scale = 1.5
	},
	title = S("Floatlands Portal"),
	book_of_portals_pagetext = S([[Requiring 14 blocks of glowstone, and constructed like a nether portal.
This portal seemed to bring us to some kind of heavenly paradise.@1]],
	floatlands_flavortext),

	is_within_realm = function(pos) -- return true if pos is inside the Aether
		-- TODO: Get these values from mod-wide constants.
		return (pos.y > 250 and pos.y < 1000)
	end,

	find_realm_anchorPos = function(surface_anchorPos, player_name)
		-- This function isn't needed, since this type of portal always goes to the surface
		minetest.log("error" , "find_realm_anchorPos called for aether portal")
		return {x=0, y=0, z=0}
	end,
})