%%
fail = 'balsavimai.xlsx';
rait = 'matrices.xlsx';
 sheet =  0;
 uzz = 'C1:C138';
 priess='D1:D138';
 susilaikee='E1:E138';
 gretimumo = zeros(138,138);
% [data, matric(:,1)] =  xlsread(fail,sheet,uzz);
% [data, matric(:,2)] =  xlsread(fail,sheet,priess);
% [data, matric(:,3)] =  xlsread(fail,sheet,susilaikee);

%  for i = 1:138
%      for j = 1:3
%          if strcmp(matric(i,j), ' + ')
%              for k = i+1:138
%                  if strcmp(matric(k,j), ' + ')
%                      gretimumo(k,i) = 1;
%                  end
%              end
%          end
%      end
%  end
%  
for i = 1:13
    gretimumo = zeros(138,138);
    sheet = i;
[data, matric(:,1)] =  xlsread(fail,sheet,uzz);
[data, matric(:,2)] =  xlsread(fail,sheet,priess);
[data, matric(:,3)] =  xlsread(fail,sheet,susilaikee);
for i = 1:138
     for j = 1:3
         if strcmp(matric(i,j), ' + ')
             for k = i+1:138
                 if strcmp(matric(k,j), ' + ')
                     gretimumo(k,i) = 1;
                 end
             end
         end
     end
 end
gretimumo = gretimumo' + gretimumo;
xlswrite('matricas.csv',gretimumo, sheet)
end

%%

A = [0 1 1; 0 0 0; 0 0 0]
A' + A