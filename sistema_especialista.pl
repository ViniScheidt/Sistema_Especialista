diagnosticos(T, FC, FR, PA, SaO2, D, Id, Co) :-
sin_leves(T, FC, FR, PA, SaO2, D, Id, Co) ;
sin_medios(T, FC, FR, Id, Co) ;
sin_graves(T, FR, PA, SaO2, D, Id, Co).

sin_leves(T, FC, FR, PA, SaO2, D, Id, Co) :-
temp_leve(T),
fc_leve(FC),
fr_leve(FR),
ps_leve(PA),
saO2_leve(SaO2),
d_leve(D),
id_leve(Id),
co_leve(Co),
write('Sintoma leve e deve ficar em casa, em observação por 14 dias.').

temp_leve(T) :- T > 34, T < 38.
fc_leve(FR) :- FR < 100.
fr_leve(FC) :- FC < 18.
ps_leve(PA) :- PA > 100.
saO2_leve(SaO2) :- SaO2 > 94.
d_leve(D) :- D = 'Não'.
id_leve(Id) :- Id < 60.
co_leve(Co) :- Co = 0.

sin_medios(T,FC,FR,Id,Co) :-
temp_media(T),
fc_media(FC),
fr_media(FR),
id_media(Id),
co_media(Co),
write('Sintoma médio e deve ficar em casa, em observação por 14 dias.').

temp_media(T) :- (T < 35) ;(T > 36 , T < 40).
fc_media(FC) :- FC > 100.
fr_media(FR) :- (FR > 18 , FR < 31).
id_media(Id) :- (Id > 59 , Id < 80).
co_media(Co) :- Co = 1.

sin_graves(T,FR,PA,SaO2,D,Id,Co) :-
temp_grave(T),
fr_grave(FR),
ps_grave(PA),
saO2_grave(SaO2),
d_grave(D),
id_grave(Id),
co_grave(Co),
write('Grave e deve ser encaminhado para o hospital.').

temp_grave(T) :- T > 39.
fr_grave(FR) :- FR > 30.
ps_grave(PA) :- (PA > 89 , PA < 101) ; (PA < 90).
saO2_grave(SaO2) :- SaO2 < 95.
d_grave(D) :- D = 'Sim'.
id_grave(Id) :- Id > 80.
co_grave(Co) :- (Co = 2) ; (Co > 2).