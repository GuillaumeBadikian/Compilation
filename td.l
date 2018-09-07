%%
[a-zA-Z][a-zA-Z0-9]* {printf("Chaine de longueur %d : %s",yyleng,yytext);}
.|n ;
%%


%%
#include {printf("#inclure");}
int {printf("entier");}
printf {printf("imprimer");}
\"[^"]*\" {ECHO;}
[a-zA-Z][a-zA-Z0-9]* {ECHO;}

%%


/*exo5*/
%{
	int aa=0,ab =0, ac=0,ba=0,bb=0,bc=0,ca=0,cb=0,cc=0;
	
}%
%%
aa {a/a++;}
ab {a/b++;}
ac {a/c++;}
ba {b/a++;}
bb {b/b++;}
bc {b/c++;}
ca {c/a++;}
cb {c/b++;}
cc {c/c++;}
%%

/* exo6 */
%%
[a-z] {printf("%c",yytext[0]-'a'+'A');}
[A-Z] {printf("%c",yytext[0]-'A'+'a');}

/*exo7*/
%{
	int nbbegin=0,nbendd=0,nbendf=0,nbend=0,nbif=0,nbthen=0,ndelse=0,nbendif=0,nbfor=0,nbendfor=0;
}%
%%
	^end {nbendd,REJECT}
	end$ {nbendf,REJECT}
	end {nbend,REJECT}
	^end[ ]*if {nbendifd,REJECT}
	end[ ]*if$ {nbendiff,REJECT}
	end [ ]*if {nbendif,REJECT}
	^end[ ]*for {nbendford,REJECT}
	end[ ]*for$ {nbendforf,REJECT}
	end [ ]*for {nbendfor,REJECT}
	
	(begin|end|if|for|then|else|to|do) {int i; for i=0;i<yyleng;i++) printf(*);}
	[ ] {printf("_");}
	
%%


/* exo8*/
