%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: /home/autorun/Documents/rashid/quran-simple.csv
%
% Auto-generated by MATLAB on 28-Oct-2020 22:32:15

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 3);

% Specify range and delimiter
opts.DataLines = [1, Inf];
opts.Delimiter = "|";

% Specify column names and types
opts.VariableNames = ["verse", "ayah", "text"];
opts.VariableTypes = ["double", "double", "string"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, "text", "WhitespaceRule", "preserve");
opts = setvaropts(opts, "text", "EmptyFieldRule", "auto");

% Import the data
quransimple = readtable("/home/autorun/Documents/rashid/quran-simple.csv", opts);


%% Clear temporary variables
clear opts

quran_simple_array={};
for ii=1:height(quransimple)
    ayah=quransimple{ii,1};
    verse=quransimple{ii,2};
    quran_simple_array{ayah}{verse}=char(quransimple{ii,3});
end

%%
strfind(quransimple{1,3},'الرَّحْمَنِ')
strfind(quransimple{1,3},'الرَّحِيم')


strfind(quran_simple_array{1},'الرَّحْمَنِ')
strfind(quran_simple_array{1},'الرَّحْمَن')

table=readtable('names_arabic.txt');

strfind(quran_simple_array{1},table{1,1})
strfind(quran_simple_array{1},'الرّحمان')


names{1}=quran_simple_array{1}{1}(16:25);

strfind(quran_simple_array{3},names{1});


%% TESTING
tmp=native2unicode('مَرْحَبًا‎');
hex_meem = hex(uint32(tmp(1)));
meem_char = char(1605);
diacritical_start = hex2dec('64b');
diacritical_end = hex2dec('65f');
