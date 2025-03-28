% Fakta: hubungan keluarga
suami(david, amy).
suami(jack, karen).
suami(john, susan).

ayah(david, liza).
ayah(david, john).
ayah(jack, ray).
ayah(jack, susan).
ayah(john, peter).
ayah(john, mary).

ibu(amy, liza).
ibu(amy, john).
ibu(karen, ray).
ibu(karen, susan).
ibu(susan, peter).
ibu(susan, mary).

% Aturan: hubungan keluarga
anak(X, Y) :- ayah(Y, X); ibu(Y, X). % Anak adalah yang memiliki ayah atau ibu
kakek(X, Z) :- ayah(X, Y), (ayah(Y, Z); ibu(Y, Z)). % Kakek adalah ayah dari orang tua Z
nenek(X, Z) :- ibu(X, Y), (ayah(Y, Z); ibu(Y, Z)). % Nenek adalah ibu dari orang tua Z
cucu(X, Y) :- kakek(Y, X); nenek(Y, X). % Cucu adalah keturunan dari kakek atau nenek
saudara(X, Y) :- ayah(Z, X), ayah(Z, Y), X \= Y. % Saudara memiliki ayah yang sama tetapi bukan diri sendiri

% Aturan tambahan: jenis kelamin
laki_laki(david).
laki_laki(jack).
laki_laki(john).
laki_laki(ray).
laki_laki(peter).

perempuan(amy).
perempuan(karen).
perempuan(susan).
perempuan(liza).
perempuan(mary).

% Aturan: hubungan suami-istri
istri(X, Y) :- suami(Y, X). % Istri adalah pasangan dari suami
menikah(X, Y) :- suami(X, Y); istri(X, Y). % Aturan untuk mencari pasangan menikah*
