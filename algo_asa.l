/* Algo d'ananyse syntaxique ascendante*/
/*
initialiser le pointeur de lecture
initialiser la pile e0 état initial de l'ASA
répéter indéfiniment
	soit e l'état en sommet de pile
	soit uls l'unité léxicale courante retournée par l'analyseur lexical
	Si Action[e,ulc] == décaler e' alors faire
		empiler ulc
		empiler e'
		uls<- yylex()
	Si Action[e,ulc] == reduire r    //(r étant le numéro d'une règle A -> B)
	// l'ASA sait qu'il y a une partie droite de règle de grammaire (avec des numéros d'états intercalés)
	faire
		dépiler 2*|B|symboles
		soit e" l'état découvert en sommet de pile
		empiler ASA
		empiler successeur[e",A]
		déclencher l'éventuelle action sémantique associée à la règle A->B
	Si Action[e,ulc] == accepter alors succès
	Sinon echec
	*/
	