//Dryad Scene
package classes.Scenes.Areas.Forest 
{
	import classes.*;
	import classes.BaseContent;
	import classes.BodyParts.*;
	import classes.display.SpriteDb;

	public class DryadScene extends BaseContent
	{
		
		public function DryadScene() {}
		
		public function encounterdryad():void {
			clearOutput();
			//rustle in the bushes
			outputText("While walking through the  glade you notice a rustling in the bushes.   Do you investigate?\n\n");
			doYesNo( fightagainstdryad,combat.cleanupAfterCombat);
			
						
		}
		public  function fightagainstdryad(): void {
			spriteSelect(SpriteDb.s_dryad);
			outputText("Walking up to where you heard the rustling, you notice what looks like a tree.   This tree appears to be wearing a dress made of leaves and straw.  You take a step closer and notice the tree has the silhouette of a slender woman.   Taking yet another step closer, you see this tree looks more like a person than a tree.   Her hair is thin vines with leaves growing off of them and she has a human-like face,  mouth, wooden arms, hands with claw-like fingers, legs and feet.   Before you can decide what to think her eyes pop open, glowing red, hungry eyes. . . Her lips curl into a wicked smile and she lunges at you! ");
				startCombat(new Dryad());
			}
		public function winagainstdryad():void {
			clearOutput();
			outputText("The dryad creaks like old wood as she collapses to the ground, too [if (monster.HP <= 0)injured|aroused] to continue fighting. ");
			if (player.hasCock() && player.lust >= 33) {
				outputText("\n\nWhile gazing on her prone figure carnal desire wells up inside you.   Do you have your way with her? ");
				doYesNo( winAgainstdryadRape , combat.cleanupAfterCombat);
			}
			else {
				combat.cleanupAfterCombat();
			}
		}
		
		public  function winAgainstdryadRape():void {
			clearOutput();

			if (player.hasCock()) {
				outputText("Crouching down beside her, you run your hands up her legs pulling her dress up while doing so.   Seeing her girly parts exposed, you remove your armor and whip out your member.  You roll her onto her stomach and place both hands on her hips.   Throwing caution into the wind, you roughly plow her and immediately regret it.   Your [cock] receives numerous splinters and pull out receiving even more.   You stagger from the pain and limp back to camp. ");
			} 
			else
			   outputText("You saunter over to the defeated dryad and roughly grab her by the hair.  \n  'Lick it!' you demand and she she complies.   You keep her licking until you are satisfied then toss her aside and head back to camp smelling of tree sap.");
			dynStats("lib", -2, "cor", 3);
			combat.cleanupAfterCombat();
		}
		
		public  function loseTodryad(fromBattle:Boolean = true):void {
			clearOutput();
			if (player.isVisiblyPregnant()) outputText(images.showImage("dryad-loss-female-preg"));
			else outputText(images.showImage("dryad-loss-female"));
			if (fromBattle) outputText("Too badly " + (player.HP <= 0 ? "injured" : "aroused") + " by the dryad, you give in  and let her she wants to you.\n\n");
			if (player.hasCock()) {
				outputText("The dryad rushes towards you and wraps her arms around you.   Her bark-like skin is cold and rough.   Your bodies entangle as her sap rubs onto your person.    She places a hand behind your head and locks eyes with you.   Her glowing red eyes burn desire into your skull.   Her lips part and she frenchs you deeply.\n\n"); 
				outputText("Seeing you suitablely aroused, she tears into your clothing until your [cock]  is exposed.\n"); 
				outputText("'Pollinate me' !  she demands hungrily.");
				outputText("She places her hand on your [cock] and sticky sap oozes from her palm lubricates your member.\n");
				outputText("Greedily, her hand jerks your member until you feel like you are about to burst.   She senses this and kneels in front of your [cock].   Her leaf hair falls down in front of her face as you spray all over her hair and face.\n");
				outputText("Satisfied, she stands up and looks at you one last time 'I will to shed a thousand seeds.'   As she steps away her leaf-hair seems to brighten and flowers start to bud from her locks.\n");
				outputText("You wake up several hours later wondering what just happened.\n");
			} else if (player.hasVagina() && player.gender == 2){
				
				monster.createCock();
				monster.cocks[0].cockLength = 15;
				monster.cocks[0].cockThickness = 2.5;
				monster.cocks[0].cockType = CockTypesEnum.HUMAN;
				
				outputText("The dryad rushes towards you and wraps her arms around you.   Her bark-like skin is cold and rough.   Your bodies entangle as her sap rubs onto your person.    She places a hand behind your head and locks eyes with you.   Her glowing red eyes burn desire into your skull.   Her lips part and she frenchs you deeply.\n\n"); 
				outputText("Seeing you suitablely aroused, she tears into your clothing until your [vagina]  is exposed.\n"); 
				outputText("Spinning your limp body around, she pushes you down across a nearby stump." + ((player.isVisiblyPregnant()) ? " The dryad rubs your plump, pregnant belly from behind. Smiling wickedly she says, <i>“You have already been pollinated, but you can still take mine”" : " <i>Now I pollinate you") + "</i>! \n");
				outputText("She places her hand on her " + monster.cockDescript(0) + " and sticky sap oozes from her palm lubricates her member.\n");
				outputText("Greedily, she spreads your " + player.assDescript() + " and places her cock at your entrance before slamming into your [vagina] with a single stroke. \n");
				player.cuntChange(16, true, true, false);
				outputText("You yelp at the sudden intrustion and grit your teeth as she beings to pump you.  Her hands roam your " + player.breastDescript(0) + "[if (isPregnant = true) and pregant gut], groping as she pleases.   She begins to pick up the pace of her pumping.  Wet, sqelching noises emenating from your [vagina] accentuate the slapping noises caused by her apple-sized balls smacking your underside with each thrust.  \n");
				outputText("Suddenly, she she grips your " + player.hipDescript() + " hard, digging her nails into your felsh and burrys her cock into your folds, its head kissing your cervix.  You feel a pressure building within her cock as her balls tighten before releasing a flood of scorching, viscous fluid into your guts.  You feel your womb filled to the brim and begin bulging your tummy while your entrance is plugged. \n");
				outputText("Satisfied, she places a hand flat against your backside and attempts to withdraw her cock.  With a <i>POP!</i> her cock pulls free from your abused pussy followed by a splash of white cum. \n"); 
				outputText("She looks at you one last time [if (isPregnant = true)<i>“Shed a thousand seeds.”</i>][if (isPregnant = false)“Enjoy shedding my seeds.”</i>] As she steps away her leaf - hair seems to brighten and flowers start to bud from her locks.\n");
				outputText("You wake up several hours later wondering what just happened.\n");
				player.knockUp(PregnancyStore.PREGNANCY_IMP, PregnancyStore.INCUBATION_IMP, 101);
			}
			else {
				outputText("The dryad sees that you no longer have the ability to fight.   You open your mouth to say something but she kisses you to keep you from talking.    Thus, your words come out as a surprised squeaking sounds.   She works her way around your body kissing and groping as she goes.   She continues working away until you are a shuddering mess in her arms");
			}
			player.orgasm('Generic');
			dynStats("lib", -2, "cor", 3);
			if (fromBattle)
				combat.cleanupAfterCombat();
			else
				doNext(camp.returnToCampUseTwoHours);
		}
	}
}
