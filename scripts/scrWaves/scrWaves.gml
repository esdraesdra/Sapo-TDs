/// @function					newWave(enemyType, enemyCount, enemyTimeBetween);
/// @param enemyType			inimigo que vai ser spawnado na wave
/// @param enemyCount			quantiade de inimigos que vão ser spawnados na wave
/// @param enemyTimeBetween		tempo entre os spawns
/// @description				Spawnar as waves

function newWave(enemyType, enemyCount,enemyTimeBetween){
	// Caso o botão de x2 seja ativado aumenta a velocidade em x2
	if buttonX2_isActivated{ enemyTimeBetween = enemyTimeBetween/2;}
	
	// spawne o inimigo atraves do nome q é colocado
	switch (enemyType) {
		case oEnemy_1:
			var teste = function(){ instance_create_layer(-16,128,"layer_enemies",oEnemy_1)}
			break;
		default:
	}
	
	globalvar _newWave;
	_newWave = time_source_create(time_source_game, enemyTimeBetween, time_source_units_frames, teste,[],enemyCount,time_source_expire_nearest);
	
	//Só spawnar caso o botão de pause esteja desativado
	if !buttonStop_isActivated{		
		time_source_start(_newWave);
	}
}

function checkRounds(){
	
		switch (actualRound) {
	    case 1:
	        newWave(oEnemy_1,5,6);
	        break;
	    default:
	        // code here
	        break;
	}
}