
%%% Pour les interpréteurs Prolog n'ayant pas la fonction append
append([],X,X).                                 
append([A|B],C,[A|D]):- append(B,C,D).  

%%%% fonction principale récupérant les préfixes, les suffixes et le mot racine
racine(RACINE,MOT):- write('Liste de tous les préfixes: '),     
                         tous_les_prefixes(TABLEAU,MOT), 
                         nl,write('Liste de tous les suffixes: '),     
                         tous_les_suffixes(RACINE,TABLEAU).          

%%%fonction récursive pour trouver tous les préfixes
tous_les_prefixes(TABLEAU,MOT):- recuperation_prefixe(LISTE,MOT),tous_les_prefixes(TABLEAU,LISTE).    
tous_les_prefixes(TABLEAU,TABLEAU).                                   

recuperation_prefixe(LISTE,MOT):- prefixe(PREFIXE),           
                              append(PREFIXE,LISTE,MOT),  
                              nl,write(PREFIXE).           

%%%fonction récursive pour trouver tous les suffixes
tous_les_suffixes(RACINE,TABLEAU):- recuperation_suffixe(LISTE,TABLEAU),tous_les_suffixes(RACINE,LISTE).      
tous_les_suffixes(RACINE,RACINE).                               

recuperation_suffixe(LISTE,TABLEAU):- suffixe(SUFFIXE),           
	                              append(LISTE,SUFFIXE,TABLEAU),  
	                              nl,write(SUFFIXE).           
       
