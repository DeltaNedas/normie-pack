# Angel Ring
// Replaces gold with vbuck shards to make it less OP

recipes.removeByRecipeName("extrautils2:angel_ring_0");
recipes.removeByRecipeName("extrautils2:angel_ring_1");
recipes.removeByRecipeName("extrautils2:angel_ring_2");
recipes.removeByRecipeName("extrautils2:angel_ring_3");
recipes.removeByRecipeName("extrautils2:angel_ring_4");
recipes.removeByRecipeName("extrautils2:angel_ring_5");

val vbuckShard = <vbucks_mod:vbuck_shard>;
val glass = <minecraft:glass>;
val squidRing = <extrautils2:chickenring>.withDamage(1);

// Lasso with Bat in it
val lasso = <extrautils2:goldenlasso>;
val batLasso = lasso.onlyWithTag({Animal:{id:"minecraft:bat"}});

// Cursed Lasso with Ghast in it
val cursedLasso = <extrautils2:goldenlasso>.withDamage(1);
val ghastLasso = cursedLasso.onlyWithTag({Animal:{id:"minecraft:ghast"}});

recipes.addShaped(<extrautils2:angelring>,[
	[glass, vbuckShard, glass],
	[vbuckShard, squidRing, vbuckShard],
	[batLasso, vbuckShard, ghastLasso]]);
print("Angel ring reciped updated.");
