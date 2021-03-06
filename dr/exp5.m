%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%-please cite
% Jonas Peters, Dominik Janzing, Bernhard Schoelkopf (2010): Identifying Cause and Effect on Discrete Data using Additive Noise Models, 
% in Y.W. Teh and M. Titterington (Eds.), Proceedings of The Thirteenth International Conference on Artificial Intelligence and Statistics (AISTATS) 2010, 
% JMLR: W&CP 9, pp 597-604, Chia Laguna, Sardinia, Italy, May 13-15, 2010,
%
%-if you have problems, send me an email:
%jonas.peters ---at--- tuebingen.mpg.de
%
%Copyright (C) 2010 Jonas Peters
%
%    This file is part of discrete_anm.
%
%    discrete_anm is free software: you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation, either version 3 of the License, or
%    (at your option) any later version.
%
%    discrete_anm is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License
%    along with discrete_anm.  If not, see <http://www.gnu.org/licenses/>.
%   
clear all;
rand('seed',1)
load('data/bladder')
data=bladder;
[fct11_fw, p11, fct11_bw, p11_bw]=fit_both_dir_discrete(data(:,3),1,data(:,8),1,0.05,0);
[fct12_fw, p12, fct12_bw, p12_bw]=fit_both_dir_discrete(data(:,3),1,data(:,9),1,0.05,0);
[fct21_fw, p21, fct21_bw, p21_bw]=fit_both_dir_discrete(data(:,4),1,data(:,8),1,0.05,0);
[fct22_fw, p22, fct22_bw, p22_bw]=fit_both_dir_discrete(data(:,4),1,data(:,9),1,0.05,0);
[fct31_fw, p31, fct31_bw, p31_bw]=fit_both_dir_discrete(data(:,5),1,data(:,8),1,0.05,0);
[fct32_fw, p32, fct32_bw, p32_bw]=fit_both_dir_discrete(data(:,5),1,data(:,9),1,0.05,0);
[fct41_fw, p41, fct41_bw, p41_bw]=fit_both_dir_discrete(data(:,6),1,data(:,8),1,0.05,0);
[fct42_fw, p42, fct42_bw, p42_bw]=fit_both_dir_discrete(data(:,6),1,data(:,9),1,0.05,0);
[fct51_fw, p51, fct51_bw, p51_bw]=fit_both_dir_discrete(data(:,7),1,data(:,8),1,0.05,0);
[fct52_fw, p52, fct52_bw, p52_bw]=fit_both_dir_discrete(data(:,7),1,data(:,9),1,0.05,0);
[fct61_fw, p61, fct61_bw, p61_bw]=fit_both_dir_discrete(data(:,1)+0.1*data(:,2),0,data(:,8),1,0.05,0);
[fct62_fw, p62, fct62_bw, p62_bw]=fit_both_dir_discrete(data(:,1)+0.1*data(:,2),0,data(:,9),1,0.05,0);
[fct71_fw, p71, fct71_bw, p71_bw]=fit_both_dir_discrete(round(data(:,1)+0.1*data(:,2)),0,data(:,8),1,0.05,0);
[fct72_fw, p72, fct72_bw, p72_bw]=fit_both_dir_discrete(round(data(:,1)+0.1*data(:,2)),0,data(:,9),1,0.05,0);


%'35,9' Temperature of patient
%'no' Occurrence of nausea
%'no' Lumbar pain
%'yes' Urine pushing (continuous need for urination)
%'yes' Micturition pains
%'yes' Burning of urethra, itch, swelling of urethra outlet
%'yes' decision: Inflammation of urinary bladder
%'no' decision: Nephritis of renal pelvis origin 



