%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%													Konark Verma 												%%%%%%%%%%%%%%
%%%%%%%%%%%%													*2018MCS2025 												%%%%%%%%%%%%%%
%%%%%%%%%%%%													Assignment-5 												%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:-op(30,fy,/\).
:-op(40,fy,->).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%														All All 												%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sentence(S1,S2,LF,T) 	:- 	determiner2(S1,S3,T1), adjective(S3,S4,Adjective1,T2), noun(S4,S5,Noun1,T3), 
							verb2(S5,S6,Verb,T4), determiner2(S6,S7,T5), adjective(S7,S8,Adjective2,T6), noun(S8,S2,Noun2,T7), 
							!, LF1 =..[Adjective1,x], LF2 =..[Noun1,x], LF3 =..[Adjective2,y], LF4 =..[Noun2,y], LF5 =..[Verb,x,y], 
							LF6=..[all,y,LF3/\LF4/\LF5], LF =..[all,x,LF1/\LF2->LF6],
							T =..[sentence,T1,T2,T3,T4,T5,T6,T7].

sentence(S1,S2,LF,T) 	:- 	determiner2(S1,S3,T1), adjective(S3,S4,Adjective,T2), noun(S4,S5,Noun1,T3), 
							verb2(S5,S6,Verb,T4), determiner2(S6,S7,T5), noun(S7,S2,Noun2,T6), 
							!, LF1 =..[Adjective,x], LF2 =..[Noun1,x], LF3 =..[Noun2,y], LF4 =..[Verb,x,y], LF5=..[all,y,LF3/\LF4], 
							LF =..[all,x,LF1/\LF2->LF5],
							T =..[sentence,T1,T2,T3,T4,T5,T6].

sentence(S1,S2,LF,T) 	:- 	determiner2(S1,S3,T1), noun(S3,S4,Noun1,T2), verb2(S4,S5,Verb,T3), 
							determiner2(S5,S6,T4), adjective(S6,S7,Adjective,T5), noun(S7,S2,Noun2,T6), 
							!, LF1 =..[Noun1,x], LF2 =..[Adjective,y], LF3 =..[Noun2,y], LF4 =..[Verb,x,y], LF5=..[all,y,LF2/\LF3/\LF4], 
							LF =..[all,x,LF1->LF5],
							T =..[sentence,T1,T2,T3,T4,T5,T6].

sentence(S1,S2,LF,T) 	:- 	determiner2(S1,S3,T1), noun(S3,S4,Noun1,T2), 
							verb2(S4,S5,Verb,T3), determiner2(S5,S6,T4), noun(S6,S2,Noun2,T5), 
							!, LF1 =..[Noun1,x], LF2 =..[Noun2,y], LF3 =..[Verb,x,y], LF4=..[all,y,LF2/\LF3], LF =..[all,x,LF1->LF4],
							T =..[sentence,T1,T2,T3,T4,T5].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%														All Exist 												%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sentence(S1,S2,LF,T) 	:- 	determiner2(S1,S3,T1), adjective(S3,S4,Adjective1,T2), noun(S4,S5,Noun1,T3), 
							verb2(S5,S6,Verb,T4), determiner3(S6,S7,T5), adjective(S7,S8,Adjective2,T6), noun(S8,S2,Noun2,T7), 
							!, LF1 =..[Adjective1,x], LF2 =..[Noun1,x], LF3 =..[Adjective2,y], LF4 =..[Noun2,y], LF5 =..[Verb,x,y], 
							LF6=..[exist,y,LF3/\LF4/\LF5], LF =..[all,x,LF1/\LF2->LF6],
							T =..[sentence,T1,T2,T3,T4,T5,T6,T7].

sentence(S1,S2,LF,T) 	:- 	determiner2(S1,S3,T1), adjective(S3,S4,Adjective,T2), noun(S4,S5,Noun1,T3), 
							verb2(S5,S6,Verb,T4), determiner3(S6,S7,T5), noun(S7,S2,Noun2,T6), 
							!, LF1 =..[Adjective,x], LF2 =..[Noun1,x], LF3 =..[Noun2,y], LF4 =..[Verb,x,y], LF5=..[exist,y,LF3/\LF4], 
							LF =..[all,x,LF1/\LF2->LF5],
							T =..[sentence,T1,T2,T3,T4,T5,T6].

sentence(S1,S2,LF,T) 	:- 	determiner2(S1,S3,T1), noun(S3,S4,Noun1,T2), verb2(S4,S5,Verb,T3), 
							determiner3(S5,S6,T4), adjective(S6,S7,Adjective,T5), noun(S7,S2,Noun2,T6), 
							!, LF1 =..[Noun1,x], LF2 =..[Adjective,y], LF3 =..[Noun2,y], LF4 =..[Verb,x,y], LF5=..[exist,y,LF2/\LF3/\LF4], 
							LF =..[all,x,LF1->LF5],
							T =..[sentence,T1,T2,T3,T4,T5,T6].

sentence(S1,S2,LF,T) 	:- 	determiner2(S1,S3,T1), noun(S3,S4,Noun1,T2), 
							verb2(S4,S5,Verb,T3), determiner3(S5,S6,T4), noun(S6,S2,Noun2,T5), 
							!, LF1 =..[Noun1,x], LF2 =..[Noun2,y], LF3 =..[Verb,x,y], LF4=..[exist,y,LF2/\LF3], LF =..[all,x,LF1->LF4],
							T =..[sentence,T1,T2,T3,T4,T5].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%														Exist All 												%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sentence(S1,S2,LF,T) 	:- 	determiner3(S1,S3,T1), adjective(S3,S4,Adjective1,T2), noun(S4,S5,Noun1,T3), 
							verb2(S5,S6,Verb,T4), determiner2(S6,S7,T5), adjective(S7,S8,Adjective2,T6), noun(S8,S2,Noun2,T7), 
							!, LF1 =..[Adjective1,x], LF2 =..[Noun1,x], LF3 =..[Adjective2,y], LF4 =..[Noun2,y], LF5 =..[Verb,x,y], 
							LF6=..[all,y,LF3/\LF4/\LF5], LF =..[exist,x,LF1/\LF2/\LF6],
							T =..[sentence,T1,T2,T3,T4,T5,T6,T7].

sentence(S1,S2,LF,T) 	:- 	determiner3(S1,S3,T1), adjective(S3,S4,Adjective,T2), noun(S4,S5,Noun1,T3), 
							verb2(S5,S6,Verb,T4), determiner2(S6,S7,T5), noun(S7,S2,Noun2,T6), 
							!, LF1 =..[Adjective,x], LF2 =..[Noun1,x], LF3 =..[Noun2,y], LF4 =..[Verb,x,y], LF5=..[all,y,LF3/\LF4], 
							LF =..[exist,x,LF1/\LF2/\LF5],
							T =..[sentence,T1,T2,T3,T4,T5,T6].

sentence(S1,S2,LF,T) 	:- 	determiner3(S1,S3,T1), noun(S3,S4,Noun1,T2), verb2(S4,S5,Verb,T3), 
							determiner2(S5,S6,T4), adjective(S6,S7,Adjective,T5), noun(S7,S2,Noun2,T6), 
							!, LF1 =..[Noun1,x], LF2 =..[Adjective,y], LF3 =..[Noun2,y], LF4 =..[Verb,x,y], LF5=..[all,y,LF2/\LF3/\LF4], 
							LF =..[exist,x,LF1/\LF5],
							T =..[sentence,T1,T2,T3,T4,T5,T6].

sentence(S1,S2,LF,T) 	:- 	determiner3(S1,S3,T1), noun(S3,S4,Noun1,T2), 
							verb2(S4,S5,Verb,T3), determiner2(S5,S6,T4), noun(S6,S2,Noun2,T5), 
							!, LF1 =..[Noun1,x], LF2 =..[Noun2,y], LF3 =..[Verb,x,y], LF4=..[all,y,LF2/\LF3], LF =..[exist,x,LF1/\LF4],
							T =..[sentence,T1,T2,T3,T4,T5].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%													Exist Exist 												%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sentence(S1,S2,LF,T) 	:- 	determiner3(S1,S3,T1), adjective(S3,S4,Adjective1,T2), noun(S4,S5,Noun1,T3), 
							verb2(S5,S6,Verb,T4), determiner3(S6,S7,T5), adjective(S7,S8,Adjective2,T6), noun(S8,S2,Noun2,T7), 
							!, LF1 =..[Adjective1,x], LF2 =..[Noun1,x], LF3 =..[Adjective2,y], LF4 =..[Noun2,y], LF5 =..[Verb,x,y], 
							LF6=..[exist,y,LF3/\LF4/\LF5], LF =..[exist,x,LF1/\LF2/\LF6],
							T =..[sentence,T1,T2,T3,T4,T5,T6,T7].

sentence(S1,S2,LF,T) 	:- 	determiner3(S1,S3,T1), adjective(S3,S4,Adjective,T2), noun(S4,S5,Noun1,T3), 
							verb2(S5,S6,Verb,T4), determiner3(S6,S7,T5), noun(S7,S2,Noun2,T6), 
							!, LF1 =..[Adjective,x], LF2 =..[Noun1,x], LF3 =..[Noun2,y], LF4 =..[Verb,x,y], LF5=..[exist,y,LF3/\LF4], 
							LF =..[exist,x,LF1/\LF2/\LF5],
							T =..[sentence,T1,T2,T3,T4,T5,T6].

sentence(S1,S2,LF,T) 	:- 	determiner3(S1,S3,T1), noun(S3,S4,Noun1,T2), verb2(S4,S5,Verb,T3), 
							determiner3(S5,S6,T4), adjective(S6,S7,Adjective,T5), noun(S7,S2,Noun2,T6), 
							!, LF1 =..[Noun1,x], LF2 =..[Adjective,y], LF3 =..[Noun2,y], LF4 =..[Verb,x,y], LF5=..[exist,y,LF2/\LF3/\LF4], 
							LF =..[exist,x,LF1/\LF5],
							T =..[sentence,T1,T2,T3,T4,T5,T6].

sentence(S1,S2,LF,T) 	:- 	determiner3(S1,S3,T1), noun(S3,S4,Noun1,T2), 
							verb2(S4,S5,Verb,T3), determiner3(S5,S6,T4), noun(S6,S2,Noun2,T5), 
							!, LF1 =..[Noun1,x], LF2 =..[Noun2,y], LF3 =..[Verb,x,y], LF4=..[exist,y,LF2/\LF3], LF =..[exist,x,LF1/\LF4],
							T =..[sentence,T1,T2,T3,T4,T5].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%													Other cases 												%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sentence(S1,S2,LF,T) 	:- 	determiner2(S1,S3,T1), adjective(S3,S4,Adjective,T2), noun(S4,S5,Noun1,T3), 
							verb2(S5,S6,Verb,T4), noun(S6,S2,Noun2,T5), 
							!, LF1 =..[Adjective,x], LF2 =..[Noun1,x], LF3 =..[Verb,x,Noun2], LF =..[all,x,LF1/\LF2->LF3],
							T =..[sentence,T1,T2,T3,T4,T5].

sentence(S1,S2,LF,T) 	:- 	determiner3(S1,S3,T1), adjective(S3,S4,Adjective,T2), noun(S4,S5,Noun1,T3), 
							verb2(S5,S6,Verb,T4), noun(S6,S2,Noun2,T5), 
							!, LF1 =..[Adjective,x], LF2 =..[Noun1,x], LF3 =..[Verb,x,Noun2], LF =..[exist,x,LF1/\LF2/\LF3],
							T =..[sentence,T1,T2,T3,T4,T5].

sentence(S1,S2,LF,T) 	:- 	determiner2(S1,S3,T1), noun(S3,S4,Noun1,T2), verb2(S4,S5,Verb,T3), noun(S5,S2,Noun2,T4), 
							!, LF1 =..[Noun1,x], LF2 =..[Verb,x,Noun2], LF =..[all,x,LF1->LF2],
							T =..[sentence,T1,T2,T3,T4].

sentence(S1,S2,LF,T) 	:- 	determiner3(S1,S3,T1), noun(S3,S4,Noun1,T2), verb2(S4,S5,Verb,T3), noun(S5,S2,Noun2,T4), 
							!, LF1 =..[Noun1,x], LF2 =..[Verb,x,Noun2], LF =..[exist,x,LF1/\LF2],
							T =..[sentence,T1,T2,T3,T4].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%													Simple cases 												%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sentence(S1,S2,LF,T) 	:- 	noun(S1,S3,Noun1,T1), verb1(S3,S4,T2), determiner1(S4,S5,T3), noun(S5,S2,Noun2,T4), 
							!, LF =..[Noun2,Noun1],
							T5 =..[nounPhrase,T1], T6 =..[nounPhrase,T3,T4], T7 =..[verbPhrase,T2,T6], T =..[sentence,T5,T7].

sentence(S1,S2,LF,T) 	:- 	noun(S1,S3,Noun1,T1), verb1(S3,S4,T2), noun(S4,S2,Noun2,T3), 
							!, LF =..[Noun2,Noun1],
							T5 =..[nounPhrase,T1], T6 =..[nounPhrase,T3], T7 =..[verbPhrase,T2,T6], T =..[sentence,T5,T7].

sentence(S1,S2,LF,T) 	:- 	noun(S1,S3,Noun1,T1), verb2(S3,S4,Verb,T2), determiner1(S4,S5,T3), noun(S5,S2,Noun2,T4), 
							!, LF =..[Verb,Noun1,Noun2],
							T5 =..[nounPhrase,T1], T6 =..[nounPhrase,T3,T4], T7 =..[verbPhrase,T2,T6], T =..[sentence,T5,T7].

sentence(S1,S2,LF,T) 	:- 	noun(S1,S3,Noun1,T1), verb2(S3,S4,Verb,T2), noun(S4,S2,Noun2,T3), 
							!, LF =..[Verb,Noun1,Noun2],
							T5 =..[nounPhrase,T1], T6 =..[nounPhrase,T3], T7 =..[verbPhrase,T2,T6], T =..[sentence,T5,T7].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

determiner1([a|X],X,determiner(a)).
determiner1([an|X],X,determiner(an)).
determiner1([the|X],X,determiner(the)).

determiner2([every|X],X,determiner(every)).
determiner2([all|X],X,determiner(all)).
determiner2([each|X],X,determiner(each)).

determiner3([a|X],X,determiner(a)).
determiner3([an|X],X,determiner(an)).
determiner3([any|X],X,determiner(any)).
determiner3([the|X],X,determiner(the)).

noun([apple|X],X,apple,noun(apple)).
noun([apples|X],X,apples,noun(apples)).
noun([ram|X],X,ram,noun(ram)).
noun([man|X],X,man,noun(man)).
noun([god|X],X,god,noun(god)).
noun([sita|X],X,sita,noun(sita)).
noun([water|X],X,water,noun(water)).
noun([teacher|X],X,teacher,noun(teacher)).
noun([course|X],X,course,noun(coarse)).
noun([teachers|X],X,teachers,noun(teachers)).
noun([courses|X],X,courses,noun(coarses)).
noun([cat|X],X,cat,noun(cat)).
noun([cats|X],X,cats,noun(cats)).
noun([rat|X],X,rat,noun(rat)).
noun([rats|X],X,rats,noun(rats)).

verb1([is|X],X,verb(is)).
verb1([are|X],X,verb(are)).

verb2([love|X],X,love,verb(love)).
verb2([loves|X],X,loves,verb(loves)).
verb2([eat|X],X,eat,verb(eat)).
verb2([eats|X],X,eats,verb(eats)).
verb2([drink|X],X,drink,verb(drink)).
verb2([drinks|X],X,drinks,verb(drinks)).
verb2([teach|X],X,teach,verb(teach)).
verb2([teaches|X],X,teaches,verb(teaches)).
verb2([hate|X],X,hate,verb(hate)).
verb2([hates|X],X,hates,verb(hates)).
verb2([walk|X],X,walk,verb(walk)).
verb2([walks|X],X,walks,verb(walks)).

adjective([good|X],X,good,adjective(good)).
adjective([fat|X],X,fat,adjective(fat)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
