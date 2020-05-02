##########################################################################################
#priority 1000

import crafttweaker.item.IIngredient;
import mods.jei.JEI.hideCategory;
import mods.jei.JEI.removeAndHide;

print("==================== loading misc removal.zs ====================");
##########################################################################################


### CRAFTING RECIPE REMOVALS BY OUTPUT ###
val craftingRemovalOut as IIngredient[] = [
	<actuallyadditions:block_empowerer>,
	<actuallyadditions:block_misc:2>,
	<advancedrocketry:platepress>,
	<advgenerators:turbine_adv_alloy>,
	<advgenerators:turbine_enderium>,
	<advgenerators:turbine_manyullyn>,
	<ae2wtlib:infinity_booster_card>,
	<appliedenergistics2:quartz_glass>,
	<atum:scarab>,
	<bloodmagic:altar>,
	<bloodmagic:decorative_brick>,
	<bloodmagic:soul_forge>,
	<botania:pool>,
	<botania:quartz:6>,
	<botania:runealtar>,
	<buildinggadgets:buildingtool>,
	<buildinggadgets:destructiontool>,
	<buildinggadgets:exchangertool>,
	<deepmoblearning:glitch_infused_boots>,
	<deepmoblearning:glitch_infused_chestplate>,
	<deepmoblearning:glitch_infused_helmet>,
	<deepmoblearning:glitch_infused_leggings>,
	<draconicevolution:awakened_core>,
	<draconicevolution:wyvern_core>,
	<enderio:block_cap_bank:1>,
	<enderio:block_cap_bank:2>,
	<enderio:block_cap_bank:3>,
	<enderio:item_material:66>,
	<environmentaltech:litherite_crystal>,
	<extendedcrafting:material:7>,
	<extendedcrafting:material>,
	<extendedcrafting:table_advanced>,
	<extrautils2:angelring:1>,
	<extrautils2:angelring:2>,
	<extrautils2:angelring:3>,
	<extrautils2:angelring:4>,
	<extrautils2:angelring:5>,
	<extrautils2:angelring>,
	<extrautils2:teleporter:1>,
	<fluxnetworks:fluxcore>,
	<ic2:blockmachinemv>,
	<ic2:itemmisc:500>,
	<ic2:itemtoolcutter>,
	<ic2c_extras:craftinghammer>,
	<immersiveengineering:metal_device1:13>,
	<mekanism:basicblock:8>,
	<modularmachinery:itemmodularium>,
	<ore:blockGlassHardened>,
	<ore:dustLumium>,
	<randomthings:timeinabottle>,
	<rftools:machine_frame>,
	<tcomplement:alloy_tank>,
	<tcomplement:high_oven_controller>,
	<tconstruct:casting:1>,
	<tconstruct:casting>,
	<tconstruct:channel>,
	<tconstruct:faucet>,
	<tconstruct:seared_tank>,
	<tconstruct:smeltery_io>,
	<tconstruct:soil>,
	<tconstruct:throwball:1>,
	<teslacorelib:machine_case>,
	<thaumcraft:baubles:*>,
	<thaumcraft:cinderpearl>,
	<thaumcraft:inlay>,
	<thaumcraft:plank_greatwood>,
	<thaumcraft:plate:1>,
	<thaumcraft:plate:2>,
	<thaumcraft:plate:3>,
	<thaumcraft:plate>,
	<thaumcraft:recharge_pedestal>,
	<thaumcraft:smelter_basic>,
	<thaumcraft:stone_arcane>,
	<thaumcraft:vis_resonator>,
	<thermalfoundation:glass:8>,
	<thermalfoundation:material:24>,
	<thermalfoundation:material:256>,
	<thermalfoundation:material:257>,
	<thermalfoundation:material:291>,
	<thermalfoundation:upgrade:2>,
	<thermalfoundation:upgrade:3>
];
for entry in craftingRemovalOut {
    recipes.remove(entry);
}


### FURNACE RECIPE REMOVALS BY INPUT/OUTPUT ###
// [<input>, output]
val furnaceRecipeRemovalInOut as IIngredient[][] = [
	[<ore:logWood>, <ore:charcoal>],
	[<ore:oreAluminum>, <ore:ingotAluminum>],
	[<ore:oreAmber>, <ore:gemAmber>],
	[<ore:oreAmethyst>, <ore:gemAmethyst>],
	[<ore:oreAquamarine>, <ore:gemAquamarine>],
	[<ore:oreArdite>, <ore:ingotArdite>],
	[<ore:oreAstralStarmetal>, <ore:ingotAstralStarmetal>],
	[<ore:oreBoron>, <ore:ingotBoron>],
	[<ore:oreCinnabar>, <ore:quicksilver>],
	[<ore:oreCoal>, <ore:coal>],
	[<ore:oreCobalt>, <ore:ingotCobalt>],
	[<ore:oreCopper>, <ore:ingotCopper>],
	[<ore:oreDiamond>, <ore:gemDiamond>],
	[<ore:oreDilithium>, <ore:dustDilithium>],
	[<ore:oreEmerald>, <ore:gemEmerald>],
	[<ore:oreGold>, <ore:ingotGold>],
	[<ore:oreIridium>, <ore:ingotIridium>],
	[<ore:oreIron>, <ore:ingotIron>],
	[<ore:oreLapis>, <ore:gemLapis>],
	[<ore:oreLead>, <ore:ingotLead>],
	[<ore:oreLithium>, <ore:ingotLithium>],
	[<ore:oreMagnesium>, <ore:ingotMagnesium>],
	[<ore:oreMalachite>, <ore:gemMalachite>],
	[<ore:oreMithril>, <ore:ingotMithril>],
	[<ore:oreOsmium>, <ore:ingotOsmium>],
	[<ore:orePeridot>, <ore:gemPeridot>],
	[<ore:orePlatinum>, <ore:ingotPlatinum>],
	[<ore:oreQuartz>, <ore:gemQuartz>],
	[<ore:oreQuartzBlack>, <ore:gemQuartzBlack>],
	[<ore:oreRedstone>, <ore:dustRedstone>],
	[<ore:oreRuby>, <ore:gemRuby>],
	[<ore:oreSapphire>, <ore:gemSapphire>],
	[<ore:oreSilver>, <ore:ingotSilver>],
	[<ore:oreTanzanite>, <ore:gemTanzanite>],
	[<ore:oreThorium>, <ore:ingotThorium>],
	[<ore:oreTopaz>, <ore:gemTopaz>]
];
for entry in furnaceRecipeRemovalInOut {
	furnace.remove(entry[1], entry[0]);
}


### COMPLETE REMOVALS ###
val completeRemoval as IIngredient[] = [
	<actuallyadditions:block_bio_reactor>,
	<actuallyadditions:block_coal_generator>,
	<actuallyadditions:block_furnace_solar>,
	<actuallyadditions:block_heat_collector>,
	<actuallyadditions:block_leaf_generator>,
	<actuallyadditions:item_bag>,
	<actuallyadditions:item_color_lens>,
	<actuallyadditions:item_damage_lens>,
	<actuallyadditions:item_drill_upgrade_block_placing>,
	<actuallyadditions:item_drill_upgrade_five_by_five>,
	<actuallyadditions:item_drill_upgrade_fortune_ii>,
	<actuallyadditions:item_drill_upgrade_fortune>,
	<actuallyadditions:item_drill_upgrade_silk_touch>,
	<actuallyadditions:item_drill_upgrade_speed_ii>,
	<actuallyadditions:item_drill_upgrade_speed_iii>,
	<actuallyadditions:item_drill_upgrade_speed>,
	<actuallyadditions:item_drill_upgrade_three_by_three>,
	<actuallyadditions:item_drill:0>,
	<actuallyadditions:item_drill:1>,
	<actuallyadditions:item_drill:10>,
	<actuallyadditions:item_drill:11>,
	<actuallyadditions:item_drill:12>,
	<actuallyadditions:item_drill:13>,
	<actuallyadditions:item_drill:14>,
	<actuallyadditions:item_drill:15>,
	<actuallyadditions:item_drill:2>,
	<actuallyadditions:item_drill:3>,
	<actuallyadditions:item_drill:4>,
	<actuallyadditions:item_drill:5>,
	<actuallyadditions:item_drill:6>,
	<actuallyadditions:item_drill:7>,
	<actuallyadditions:item_drill:8>,
	<actuallyadditions:item_drill:9>,
	<actuallyadditions:item_explosion_lens>,
	<actuallyadditions:item_mining_lens>,
	<actuallyadditions:item_misc:18>,
	<actuallyadditions:item_more_damage_lens>,
	<actuallyadditions:item_wings_of_the_bats>,
	<advgenerators:turbine_blade_bronze>,
	<advgenerators:turbine_blade_iron>,
	<advgenerators:turbine_bronze>,
	<advgenerators:turbine_gold>,
	<advgenerators:turbine_iron>,
	<advgenerators:turbine_kit_bronze>,
	<advgenerators:turbine_kit_gold>,
	<advgenerators:turbine_kit_gold>,
	<advgenerators:turbine_kit_steel>,
	<advgenerators:turbine_rotor_bronze>,
	<advgenerators:turbine_rotor_gold>,
	<advgenerators:turbine_rotor_iron>,
	<appliedenergistics2:certus_quartz_axe>,
	<appliedenergistics2:certus_quartz_hoe>,
	<appliedenergistics2:certus_quartz_pickaxe>,
	<appliedenergistics2:certus_quartz_spade>,
	<appliedenergistics2:certus_quartz_sword>,
	<appliedenergistics2:nether_quartz_axe>,
	<appliedenergistics2:nether_quartz_hoe>,
	<appliedenergistics2:nether_quartz_pickaxe>,
	<appliedenergistics2:nether_quartz_spade>,
	<appliedenergistics2:nether_quartz_sword>,
	<atum:limestone_furnace>,
	<botania:specialflower>.withTag({type: "orechid"}),
	<botania:specialflower>.withTag({type: "orechidIgnem"}),
	<chickenchunks:chunk_loader:*>,
	<enderio:block_reservoir>,
	<enderio:block_simple_alloy_smelter>,
	<enderio:block_simple_crafter>,
	<enderio:block_simple_furnace>,
	<enderio:block_simple_sag_mill>,
	<enderio:block_simple_stirling_generator>,
	<enderio:block_simple_wired_charger>,
	<enderio:block_solar_panel>,
	<enderio:item_material:10>,
	<enderio:item_material:9>,
	<environmentaltech:lightning_cont_1>,
	<environmentaltech:lightning_cont_2>,
	<environmentaltech:lightning_cont_3>,
	<environmentaltech:lightning_cont_4>,
	<environmentaltech:lightning_cont_5>,
	<environmentaltech:lightning_cont_6>,
	<environmentaltech:lightning_rod_insulated>,
	<environmentaltech:lightning_rod>,
	<environmentaltech:solar_cont_1>,
	<environmentaltech:solar_cont_2>,
	<environmentaltech:solar_cont_3>,
	<environmentaltech:solar_cont_4>,
	<environmentaltech:solar_cont_5>,
	<environmentaltech:solar_cont_6>,
	<extendedcrafting:material:128>,
	<extendedcrafting:table_basic>,
	<extrautils2:machine>,
	<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}),
	<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}),
	<forestry:bottler>,
	<forestry:fermenter>,
	<forestry:moistener>,
	<forestry:rainmaker>,
	<ic2:blockcompactedgenerator:6>,
	<ic2:blockcompactedgenerator:7>,
	<ic2:blockcompactedgenerator:8>,
	<ic2:blockgenerator:1>,
	<ic2:blockgenerator:8>,
	<ic2:blockmachinelv:15>,
	<liquid:refined_biofuel>,
	<liquid:refined_fuel>,
	<mekanism:basicblock2:3>,
	<mekanism:basicblock2:4>,
	<nuclearcraft:water_source_compact>,
	<nuclearcraft:water_source_dense>,
	<nuclearcraft:water_source>,
	<ore:coinAluminum>,
	<ore:coinBronze>,
	<ore:coinConstantan>,
	<ore:coinCopper>,
	<ore:coinInvar>,
	<ore:coinIridium>,
	<ore:coinLead>,
	<ore:coinLumium>,
	<ore:coinMithril>,
	<ore:coinNickel>,
	<ore:coinPlatinum>,
	<ore:coinSilver>,
	<ore:coinTin>,
	<pressure:water_source>,
	<rftools:coalgenerator>,
	<rftools:flight_module>,
	<rftools:powercell_simple>,
	<storagedrawers:controllerslave>,
	<tconstruct:slime_boots:1>,
	<tconstruct:slime_boots:2>,
	<tconstruct:slime_boots:3>,
	<tconstruct:slime_boots:4>,
	<tconstruct:slimesling:1>,
	<tconstruct:slimesling:2>,
	<tconstruct:slimesling:3>,
	<tconstruct:slimesling:4>,
	<thermalexpansion:augment:337>,
	<thermalexpansion:augment:368>,
	<thermalexpansion:augment:369>,
	<thermalexpansion:device:10>,
	<thermalexpansion:dynamo:1>,
	<thermalexpansion:machine:5>,
	<thermalexpansion:machine:7>,
	<thermalexpansion:satchel:*>
];
for entry in completeRemoval {
    removeAndHide(entry);
}


### CATEGORY REMOVAL ###
val categoryRemoval as string[] = [
	"thermalexpansion.compactor_gear",
	"thermalexpansion.compactor_mint",
	"thermalexpansion.compactor",
	"thermalexpansion.factorizer_combine",
	"thermalexpansion.factorizer_split"
];
for entry in categoryRemoval {
    hideCategory(entry);
}


##########################################################################################
print("==================== end of misc removal.zs ====================");
