rough = xlsread('sandpaper_roughness.xlsx');
medium = xlsread('construction_roughness.xlsx');
smooth = xlsread('table_roughness.xlsx');

train = [rough; medium; smooth];

result(1:10) = 1;
result(11:20) = 2;
result(21:30) = 3;
result = result';

Mdl = fitctree(train, result);
view(Mdl, 'mode', 'graph');

