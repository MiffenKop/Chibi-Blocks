local bl = context.bl
local item = context.item
local matrices = context.matrices
local l = bl and 1 or -1
if I:isBlock(item) then
    renderAsBlock:put(I:getName(item), false)
    M:rotateX(matrices, -90)
    M:rotateZ(matrices, 90 * l)
    M:moveY(matrices, -0.1)
    M:moveZ(matrices, 0.25)
end

local function applyTableTransforms(table)
    if I:isEmpty(item) then return end

    local values = table[I:getName(item)]
    if not values then return end

    M:moveX(matrices, values.posX or 0)
    M:moveY(matrices, values.posY or 0)
    M:moveZ(matrices, values.posZ or 0)

    M:rotateX(matrices, values.rotX or 0)
    M:rotateY(matrices, values.rotY or 0)
    M:rotateZ(matrices, values.rotZ or 0)

    M:scale(matrices, values.scaleX or 1, values.scaleY or 1, values.scaleZ or 1)
end


local positionings = {
    ["minecraft:tnt_minecart"] = {
        posX= -0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= -12.0,
      	rotZ= -86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:small_dripleaf"] = {
        posX= -0.04,
      	posY= 0.0,
      	posZ= 0.065,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:birch_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:birch_chest_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:acacia_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:acacia_chest_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:bamboo_raft"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:bamboo_chest_raft"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:cherry_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:cherry_chest_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:dark_oak_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:dark_oak_chest_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:spruce_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:spruce_chest_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:pale_oak_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:pale_oak_chest_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:oak_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:oak_chest_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:mangrove_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:mangrove_chest_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:jungle_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:jungle_chest_boat"] = {
        posX= 0.12,
      	posY= 0.125,
      	posZ= 0.08,
      	rotX= -86.0,
      	rotY= 12.0,
      	rotZ= 86.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:flowering_azalea"] = {
        posX= -0.05,
      	posY= 0.05,
      	posZ= -0.05,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:azalea"] = {
        posX= -0.05,
      	posY= 0.05,
      	posZ= -0.05,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:polished_diorite_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:daylight_detector"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.13,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:weathered_cut_copper_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:waxxed_weathered_cut_copper_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:warped_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:tuff_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:tuff_brick_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:stone_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:stonecutter"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:stone_brick_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:spruce_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:smooth_stone_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:smooth_sandstone_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:smooth_red_sandstone_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:smooth_quartz_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:sandstone_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:resin_brick_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:red_sandstone_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:red_nether_brick_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:quartz_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:purpur_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:prismarine_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:prismarine_brick_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:polished_tuff_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:polished_granite_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:polished_diorite_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:polished_deepslate_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:polished_blackstone_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:polished_blackstone_brick_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:polished_andesite_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:pale_oak_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:oxidized_cut_copper_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:waxxed_oxidized_cut_copper_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:oak_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:nether_brick_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:mud_brick_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:mossy_stone_brick_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:mossy_cobblestone_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:mangrove_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:jungle_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:granite_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:exposed_cut_copper_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:waxxed_exposed_cut_copper_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:end_stone_brick_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:diorite_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },    
    ["minecraft:deepslate_tile_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:deepslate_brick_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:dark_prismarine_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:dark_oak_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:cut_sandstone_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:cut_red_sandstone_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },    ["minecraft:cut_copper_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:waxxed_cut_copper_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:crimson_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:cobblestone_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:cobbled_deepslate_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:cherry_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:brick_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:blackstone_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:birch_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:bamboo_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:bamboo_mosaic_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:andesite_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },
    ["minecraft:acacia_slab"] = {
        posX= 0.0,
      	posY= 0.0,
      	posZ= -0.1,
      	rotX= 0.0,
      	rotY= 0.0,
      	rotZ= 0.0,
      	scaleX= 1.0,
      	scaleY= 1.0,
      	scaleZ= 1.0
    },

}

applyTableTransforms(positionings)



