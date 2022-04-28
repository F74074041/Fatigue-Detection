                        % move finished dot
candy_tired = 489418;   % 484864
candy = 652800 - candy_tired;
enya_tired = 685084;    % 603392
enya = 829440 - enya_tired;
lisa_tired = 583858;    % 579328
lisa = 721920 - lisa_tired;
wei_tired = 596604;     % 470528
wei = 645120 - wei_tired;
ting_tired = 703723;    % 605952
ting = 768000 - ting_tired;
martin_tired = 509338;  % 507136
martin = 906240 - martin_tired;
shin_tired = 481089;    % 470528
shin = 583680 - shin_tired;
kuo_tired = 545188;     % 519680
kuo = 622080 - kuo_tired;

% data = [candy enya lisa wei ting shin kuo];
data = [candy enya lisa wei ting martin shin kuo];

% 平均 d=點 s=秒 m=分
d_mean = mean(data, 'all');
s_mean = d_mean / 256;
m_mean = s_mean / 60;
% 中位數
d_median = median(data, 'all');
s_median = d_median / 256;
m_median = s_median / 60;
% 標準差
d_std = std(data);
s_std = d_std / 256;
m_std = s_std / 60;
