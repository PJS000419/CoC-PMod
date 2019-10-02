package classes.Scenes.Dungeons.DragonCity 
{
	import classes.BaseContent;
	import classes.GlobalFlags.kFLAGS;

	public class KoboldScenes extends BaseContent
	{
		public function KoboldScenes() {}
		
		public function victoryOverPunyKobold():void {
			flags[kFLAGS.DRAGON_CITY_KOBOLDS_VICTORIES]++;
			clearOutput();
			outputText("This is where you will get to dominate the kobold you bested.");
			menu();
			addButton(0, "Get Sucked", koboldBJ);
			addButton(1, "Get Licked", koboldNomz);
			if (monster.HP <= 0) addButton(3, "Kill 'Em", killKobold4YerMurderBonerz);
			addButton(4, "Leave", combat.cleanupAfterCombat);
		}
		
		private function koboldBJ():void {
			clearOutput();
			outputText("This scene will have the kobold suck you off. You enjoy a good orgasm and the kobold gets your fill!");
			player.orgasm('dick');
			combat.cleanupAfterCombat();
		}
		
		private function koboldNomz():void {
			clearOutput();
			outputText("This scene will have the kobold eat you out. You enjoy a good orgasm and the kobold looks to be in a messy state!");
			player.orgasm('vaginal');
			combat.cleanupAfterCombat();
		}
		
		private function killKobold4YerMurderBonerz():void {
			clearOutput();
			outputText("You make a quick work of the scaly fiend before hauling the now-lifeless corpse, hiding it from plain sight.");
			flags[kFLAGS.DRAGON_CITY_KOBOLDS_KILLED]++;
			combat.cleanupAfterCombat();
		}
		
		public function loseToKoboldzYAPYAPYAP():void {
			clearOutput();
			outputText("This is where you will get a bad end.");
			outputText("\n\nOf course, since the dungeon is still under construction, the kobold lets you go.");
			outputText("\n\n//getGame().gameOver();");
			combat.cleanupAfterCombat();
		}
		
		public function aWildKoboldAppears():void {
			clearOutput();
			outputText("A wild kobold has appeared while traversing the corridor!");
			startCombat(new Kobold());
		}
		
	}

}