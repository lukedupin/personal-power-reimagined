data:extend( {
	{
		type = "generator-equipment",
		name = "personal-power-burner",
		sprite = {
			filename = "__personal-power-reimagined__/graphics/burner-equipment.png",
			width = 128,
			height = 192,
			mipmap_count = 3,
			scale = 1,
			priority = "medium",
		},
		shape = {
			width = 2,
			height = 4,
			type = "full",
		},
		burner = {
			type = "burner",
			usage_priority = "secondary-output",
			fuel_categories = {"chemical"},
			---@diagnostic disable-next-line: assign-type-mismatch
			effectivity = settings.startup["personal-power-reimagined-fuel-efficiency"].value,
			---@diagnostic disable-next-line: assign-type-mismatch
			fuel_inventory_size = settings.startup["personal-power-reimagined-inventory-size"].value,
			---@diagnostic disable-next-line: assign-type-mismatch
			burnt_inventory_size = settings.startup["personal-power-reimagined-inventory-size"].value,
			smoke = {
				{
					name = "smoke",
					deviation = {0.25, 0.25},
					frequency = 20,
					position = {0, 0.5},
					height = 1,
					starting_frame = 0,
					starting_frame_deviation = 60,
				},
			},
			emissions_per_minute = {
				---@diagnostic disable-next-line: assign-type-mismatch
				pollution = settings.startup["personal-power-burner-pollution-output"].value,
			},
		},
		energy_source = {
			type = "electric",
			usage_priority = "primary-output",
			buffer_capacity = "1MJ",
			drain = "0W",
		},
		power = tostring(settings.startup["personal-power-burner-power-output"].value).."kW",
		categories = {"armor"},
	}, {
		type = "item",
		name = "personal-power-burner",
		icon = "__personal-power-reimagined__/graphics/burner-item.png",
		icon_size = 64,
		place_as_equipment_result = "personal-power-burner",
		subgroup = "equipment",
		order = "a[energy-source]-0[personal-power-burner]",
		stack_size = 20,
		drop_sound = data.raw.item["flamethrower-turret"].drop_sound,
		open_sound = data.raw.item["flamethrower-turret"].open_sound,
		pick_sound = data.raw.item["flamethrower-turret"].pick_sound,
		close_sound = data.raw.item["flamethrower-turret"].close_sound,
		inventory_move_sound = data.raw.item["flamethrower-turret"].inventory_move_sound,
	}, {
		type = "recipe",
		name = "personal-power-burner",
		enabled = false,
		energy_required = 10,
		ingredients =
		{
			{type = "item", name = "copper-cable", amount = 8},
			{type = "item", name = "steel-plate", amount = 20},
			{type = "item", name = "advanced-circuit", amount = 2},
		},
		results = {{type = "item", name = "personal-power-burner", amount = 1}},
	}
})

data:extend( {
	{
		type = "generator-equipment",
		name = "personal-power-nuclear",
		sprite = {
			filename = "__personal-power-reimagined__/graphics/nuclear-equipment.png",
			width = 128,
			height = 192,
			mipmap_count = 3,
			scale = 1,
			priority = "medium",
		},
		shape = {
			width = 2,
			height = 4,
			type = "full",
		},
		burner = {
			type = "burner",
			usage_priority = "secondary-output",
			fuel_categories = {"nuclear"},
			---@diagnostic disable-next-line: assign-type-mismatch
			effectivity = settings.startup["personal-power-reimagined-fuel-efficiency"].value,
			---@diagnostic disable-next-line: assign-type-mismatch
			fuel_inventory_size = settings.startup["personal-power-reimagined-inventory-size"].value,
			---@diagnostic disable-next-line: assign-type-mismatch
			burnt_inventory_size = settings.startup["personal-power-reimagined-inventory-size"].value,
			smoke = {},
			emissions_per_minute = {}
		},
		energy_source = {
			type = "electric",
			usage_priority = "primary-output",
			buffer_capacity = "2MJ",
			drain = "0W",
		},
		power = tostring(settings.startup["personal-power-nuclear-power-output"].value).."kW",
		categories = {"armor"},
	}, {
		type = "item",
		name = "personal-power-nuclear",
		icon = "__personal-power-reimagined__/graphics/nuclear-item.png",
		icon_size = 64,
		place_as_equipment_result = "personal-power-nuclear",
		subgroup = "equipment",
		order = "a[energy-source]-0[personal-power-nuclear]",
		stack_size = 20,
		drop_sound = data.raw.item["nuclear-reactor"].drop_sound,
		open_sound = data.raw.item["nuclear-reactor"].open_sound,
		pick_sound = data.raw.item["nuclear-reactor"].pick_sound,
		close_sound = data.raw.item["nuclear-reactor"].close_sound,
		inventory_move_sound = data.raw.item["nuclear-reactor"].inventory_move_sound,
	}, {
		type = "recipe",
		name = "personal-power-nuclear",
		enabled = false,
		energy_required = 15,
		ingredients =
		{
			{type = "item", name = "copper-cable", amount = 20},
			{type = "item", name = "steel-plate", amount = 40},
			{type = "item", name = "processing-unit", amount = 2},
		},
		results = {{type = "item", name = "personal-power-nuclear", amount = 1}},
	}
})

data:extend {
	{
		type = "generator-equipment",
		name = "personal-power-fusion",
		sprite = {
			filename = "__personal-power-reimagined__/graphics/fusion-equipment.png",
			width = 128,
			height = 192,
			mipmap_count = 3,
			scale = 1,
			priority = "medium",
		},
		shape = {
			width = 2,
			height = 4,
			type = "full",
		},
		burner = {
			type = "burner",
			usage_priority = "secondary-output",
			fuel_categories = {"fusion"},
			---@diagnostic disable-next-line: assign-type-mismatch
			effectivity = settings.startup["personal-power-reimagined-fuel-efficiency"].value,
			---@diagnostic disable-next-line: assign-type-mismatch
			fuel_inventory_size = settings.startup["personal-power-reimagined-inventory-size"].value,
			---@diagnostic disable-next-line: assign-type-mismatch
			burnt_inventory_size = settings.startup["personal-power-reimagined-inventory-size"].value,
			smoke = {},
			emissions_per_minute = {}
		},
		energy_source = {
			type = "electric",
			usage_priority = "primary-output",
			buffer_capacity = "5MJ",
			drain = "0W",
		},
		power = tostring(settings.startup["personal-power-fusion-power-output"].value).."kW",
		categories = {"armor"},
	}, {
		type = "item",
		name = "personal-power-fusion",
		icon = "__personal-power-reimagined__/graphics/fusion-item.png",
		icon_size = 64,
		place_as_equipment_result = "personal-power-fusion",
		subgroup = "equipment",
		order = "a[energy-source]-0[personal-power-fusion]",
		stack_size = 20,
		drop_sound = data.raw.item["nuclear-reactor"].drop_sound,
		open_sound = data.raw.item["nuclear-reactor"].open_sound,
		pick_sound = data.raw.item["nuclear-reactor"].pick_sound,
		close_sound = data.raw.item["nuclear-reactor"].close_sound,
		inventory_move_sound = data.raw.item["nuclear-reactor"].inventory_move_sound,
	}, {
		type = "recipe",
		name = "personal-power-fusion",
		enabled = false,
		energy_required = 15,
		ingredients =
		{
			{type = "item", name = "lithium", amount = 10},
			{type = "item", name = "steel-plate", amount = 40},
			{type = "item", name = "quantum-processor", amount = 5},
		},
		results = {{type = "item", name = "personal-power-fusion", amount = 1}},
	},
    {
        type = "technology",
        name = "personal-power-burner",
        icon = "__personal-power-reimagined__/graphics/burner-tech.png",
        icon_size = 256,
        essential = true,
        effects = {
          {
            type = "unlock-recipe",
            recipe = "personal-power-burner"
          }
        },
        prerequisites = {
          "modular-armor",
        },
        unit = {
          count = 200,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
          },
          time = 60
        }
    },
    {
        type = "technology",
        name = "personal-power-nuclear",
        icon = "__personal-power-reimagined__/graphics/nuclear-tech.png",
        icon_size = 256,
        essential = true,
        effects = {
          {
            type = "unlock-recipe",
            recipe = "personal-power-nuclear"
          }
        },
        prerequisites = {
          "modular-armor",
          "nuclear-power",
        },
        unit = {
          count = 400,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
          },
          time = 60
        }
    }
}

local tech = data.raw.technology["fusion-reactor"]
if tech ~= nil then
	table.insert(tech.effects, {type = "unlock-recipe", recipe = "personal-power-fusion"})
end
