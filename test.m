% %kuo
% 
 load('1060511_kuo_R3_L2_sub_sum.mat');
 figure(1)
 A=data(3,:);
 plot(A);
 title('kuo');
 ra = 0;
 rb = 0;
 rc = 0;
 rd = 0;
 x1=0;
 x2=0;
 fla = 0;
 cnt = 1;
 temp = 0;
 timethread = 0;
 %fileID = fopen('kuo_test.txt', 'w');
 y=0;
 time = 0;
 text(622080,data(3, 622080),'x','color','r');
 for x2 = 1: 5387-1
      for x1 = 1: 256
          temp = x1+(x2*256);
          if data(3, temp) <= -125  && cnt == 1
              y=data(3,temp);
              ra = temp;
              cnt = cnt * -1;
          elseif data(3, temp) >y && cnt == -1
              rb = temp;
              cnt = cnt * -1;
              rc = rb - ra;
              %fprintf(fileID, 'ra_x%d\n', ra);
              %fprintf(fileID, '%d\n', rc);
              if rc>80
                 fla=fla+1; 
                 if fla == 1
                     timethread = temp;
                     %fprintf(fileID, 'HI\n');
                 end    
              end
          end
          time = temp-timethread;
          if time==10000
             if fla>=2&&ra>519680
                 %fprintf(fileID, 'tire ra_x%d\n', temp); 
                  text(temp,data(3, temp),'o','color','r');
                 % mark tire position if you need
%                  text(temp,data(3, temp),['o (',num2str(temp),',',num2str(data(3, temp)),')'],'color','r');
             end
             fla = 0;
           end 
      end   
 end
%  fclose(fileID);
%     
% 
% %shin
% 
 load('1060518_shin_R3_L2_sub_sum.mat');
 A=data(3,:);
 figure(5)
 plot(A);
 title('shin');
 ra = 0;
 rb = 0;
 rc = 0;
 rd = 0;
 x1=0;
 x2=0;
 fla = 0;
 cnt = 1;
 temp = 0;
 timethread = 0;
 %fileID = fopen('shin_test.txt', 'w');
 y=0;
 time = 0;
 text(583680,data(3, 583680),'x','color','r');
 for x2 = 1: (length(data(3,:))/256)-1
      for x1 = 1: 256
          temp = x1+(x2*256);
          if data(3, temp) <= -125  && cnt == 1
              y=data(3,temp);
              ra = temp;
              cnt = cnt * -1;
          elseif data(3, temp) >y && cnt == -1
              rb = temp;
              cnt = cnt * -1;
              rc = rb - ra;
             % fprintf(fileID, 'ra_x%d\n', ra);
             % fprintf(fileID, '%d\n', rc);
              if rc>90
                 fla=fla+1; 
                 if fla == 1
                     timethread = temp;
                 end    
              end
          end
          time = temp-timethread;
          if time==10000
             if fla>2&&ra>470528
                % fprintf(fileID, 'tire ra_x%d\n', temp);
                text(temp,data(3, temp),'o','color','r');
                 % mark tire position if you need
%                  text(temp,data(3, temp),['o (',num2str(temp),',',num2str(data(3, temp)),')'],'color','r');
             end
             fla = 0;
           end 
      end   
 end
%  fclose(fileID);



% 
% 
% %candy
% 
load('1060601_candy_R3_L2_sub_sum.mat');
figure(4)
 A=data(3,:);
 plot(A);
 title('candy');
 ra = 0;
 rb = 0;
 rc = 0;
 rd = 0;
 x1=0;
 x2=0;
 fla = 0;
 cnt = 1;
 temp = 0;
 timethread = 0;
 %fileID = fopen('candy_test.txt', 'w');
 y=0;
 time = 0;
 text(652800,data(3, 652800),'x','color','r');
 for x2 = 1: (length(data(3,:))/256)-1
      for x1 = 1: 256
          temp = x1+(x2*256);
          if data(3, temp) <= -125  && cnt == 1
              y=data(3,temp);
              ra = temp;
              cnt = cnt * -1;
          elseif data(3, temp) >y && cnt == -1
              rb = temp;
              cnt = cnt * -1;
              rc = rb - ra;
              %fprintf(fileID, 'ra_x%d\n', ra);
              %fprintf(fileID, '%d\n', rc);
              if rc>90
                 fla=fla+1; 
                 if fla == 1
                     timethread = temp;
                 end    
              end
          end
          time = temp-timethread;
          if time==10000
             if fla>3&&ra>484864
                 %fprintf(fileID, 'tire ra_x%d\n', temp);  
                 text(temp,data(3, temp),'o','color','r');
                 % mark tire position if you need
%                  text(temp,data(3, temp),['o (',num2str(temp),',',num2str(data(3, temp)),')'],'color','r');
             end
             fla = 0;
           end 
      end   
 end
 %fclose(fileID);
 
 
%  
% %martin
load('1060606_martin_R3_L2_sub_sum.mat');
figure(3)
 A=data(3,:);
 plot(A);
 title('martin');
ra = 0;
 rb = 0;
 rc = 0;
 rd = 0;
 x1=0;
 x2=0;
 fla = 0;
 cnt = 1;
 temp = 0;
 timethread = 0;
%  fileID = fopen('martin_test.txt', 'w');
 y=0;
 time = 0;
 text(906240,data(3, 906240),'x','color','r');
 for x2 = 1: (length(data(3,:))/256)-1
      for x1 = 1: 256
          temp = x1+(x2*256);
          if data(3, temp) <= -125  && cnt == 1
              y=data(3,temp);
              ra = temp;
              cnt = cnt * -1;
          elseif data(3, temp) >y && cnt == -1
              rb = temp;
              cnt = cnt * -1;
              rc = rb - ra;
%               fprintf(fileID, 'ra_x%d\n', ra);
%               fprintf(fileID, '%d\n', rc);
              if rc>80
                 fla=fla+1; 
                 if fla == 1
                     timethread = temp;
                 end    
              end
          end
          time = temp-timethread;
          if time==10000
             if fla>3&&ra>507136
                 %fprintf(fileID, 'tire ra_x%d\n', temp); 
                  text(temp,data(3, temp),'o','color','r');
                 % mark tire position if you need
%                  text(temp,data(3, temp),['o (',num2str(temp),',',num2str(data(3, temp)),')'],'color','r');
             end
             fla = 0;
           end 
      end   
 end
%  fclose(fileID);

 

% % %ting
 load('1060614_ting_R3_L2_sub_sum.mat');
 figure(6)
 A=data(3,:);
 plot(A);
 title('ting');
 ra = 0;
 rb = 0;
 rc = 0;
 rd = 0;
 x1=0;
 x2=0;
 fla = 0;
 cnt = 1;
 temp = 0;
 timethread = 0;
 %fileID = fopen('ting_test.txt', 'w');
 y=0;
 time = 0;
 text(768000,data(3, 768000),'x','color','r');
 for x2 = 1: (length(data(3,:))/256)-1
      for x1 = 1: 256
          temp = x1+(x2*256);
          if data(3, temp) <= -125  && cnt == 1
              y=data(3,temp);
              ra = temp;
              cnt = cnt * -1;
          elseif data(3, temp) >y && cnt == -1
              rb = temp;
              cnt = cnt * -1;
              rc = rb - ra;
              %fprintf(fileID, 'ra_x%d\n', ra);
              %fprintf(fileID, '%d\n', rc);
              if rc>80
                 fla=fla+1; 
                 if fla == 1
                     timethread = temp;
                 end    
              end
          end
          time = temp-timethread;
          if time==10000
             if fla>3&&ra>605952
                 %fprintf(fileID, 'tire ra_x%d\n', temp); 
                 text(temp,data(3, temp),'o','color','r');
                 % mark tire position if you need
%                  text(temp,data(3, temp),['o (',num2str(temp),',',num2str(data(3, temp)),')'],'color','r');
             end
             fla = 0;
           end 
      end   
 end
%  fclose(fileID);



% 
%  
%%wei
 load('1060524_wei_R3_L2_sub_sum.mat');
 figure(7)
 A=data(3,:);
 plot(A);
 title('wei');
 ra = 0;
 rb = 0;
 rc = 0;
 rd = 0;
 x1=0;
 x2=0;
 fla = 0;
 cnt = 1;
 temp = 0;
 timethread = 0;
 %fileID = fopen('wei_test.txt', 'w');
 y=0;
 time = 0;
 text(645120,data(3, 645120),'x','color','r');
 for x2 = 1: (length(data(3,:))/256)-1
      for x1 = 1: 256
          temp = x1+(x2*256);
          if data(3, temp) <= -125  && cnt == 1
              y=data(3,temp);
              ra = temp;
              cnt = cnt * -1;
          elseif data(3, temp) >y && cnt == -1
              rb = temp;
              cnt = cnt * -1;
              rc = rb - ra;
              %fprintf(fileID, 'ra_x%d\n', ra);
              %fprintf(fileID, '%d\n', rc);
              if rc>80
                 fla=fla+1; 
                 if fla == 1
                     timethread = temp;
                 end    
              end
          end
          time = temp-timethread;
          if time==10000
             if fla>=2&&ra>470528
                 %fprintf(fileID, 'tire ra_x%d\n', temp);  
                 text(temp,data(3, temp),'o','color','r');
                 % mark tire position if you need
%                  text(temp,data(3, temp),['o (',num2str(temp),',',num2str(data(3, temp)),')'],'color','r');
             end
             fla = 0;
           end 
      end   
 end
%  fclose(fileID);

%%lisa
 load('1060628_lisa_R3_L2_sub_sum.mat');
 figure(8)
 A=data(3,:);
 plot(A);
 title('lisa');
 ra = 0;
 rb = 0;
 rc = 0;
 rd = 0;
 x1=0;
 x2=0;
 fla = 0;
 cnt = 1;
 temp = 0;
 timethread = 0;
 %fileID = fopen('lisa_test.txt', 'w');
 y=0;
 time = 0;
 text(721920,data(3, 721920),'x','color','r');
 for x2 = 1: (length(data(3,:))/256)-1
      for x1 = 1: 256
          temp = x1+(x2*256);
          if data(3, temp) <= -125  && cnt == 1
              y=data(3,temp);
              ra = temp;
              cnt = cnt * -1;
          elseif data(3, temp) >y && cnt == -1
              rb = temp;
              cnt = cnt * -1;
              rc = rb - ra;
              %fprintf(fileID, 'ra_x%d\n', ra);
              %fprintf(fileID, '%d\n', rc);
              if rc>90
                 fla=fla+1; 
                 if fla == 1
                     timethread = temp;
                 end    
              end
          end
          time = temp-timethread;
          if time==10000
             if fla>3&&ra>579328
                 %fprintf(fileID, 'tire ra_x%d\n', temp);  
                 text(temp,data(3, temp),'o','color','r');
                 % mark tire position if you need
%                  text(temp,data(3, temp),['o (',num2str(temp),',',num2str(data(3, temp)),')'],'color','r');
             end
             fla = 0;
           end 
      end   
 end
%  fclose(fileID)

%enya
 load('1060519_enya_R3_L2_sub_sum.mat');
 figure(2)
 A=data(3,:);
 plot(A);
 title('enya');
 axis([-inf, inf, -1000, 1000]);
 ra = 0;
 rb = 0;
 rc = 0;
 rd = 0;
 x1=0;
 x2=0;
 fla = 0;
 cnt = 1;
 temp = 0;
 timethread = 0;
 %fileID = fopen('kuo_test.txt', 'w');
 y=0;
 time = 0;
 text(829440,data(3, 829440),'x','color','r');
 for x2 = 1: 5387-1
      for x1 = 1: 256
          temp = x1+(x2*256);
          if data(3, temp) <= -125  && cnt == 1
              y=data(3,temp);
              ra = temp;
              cnt = cnt * -1;
          elseif data(3, temp) >y && cnt == -1
              rb = temp;
              cnt = cnt * -1;
              rc = rb - ra;
              %fprintf(fileID, 'ra_x%d\n', ra);
              %fprintf(fileID, '%d\n', rc);
              if rc>80
                 fla=fla+1; 
                 if fla == 1
                     timethread = temp;
                     %fprintf(fileID, 'HI\n');
                 end    
              end
          end
          time = temp-timethread;
          if time==10000
             if fla>=2&&ra>610000
                 %fprintf(fileID, 'tire ra_x%d\n', temp); 
                  text(temp,data(3, temp),'o','color','r');
                 % mark tire position if you need
%                  text(temp,data(3, temp),['o (',num2str(temp),',',num2str(data(3, temp)),')'],'color','r');
             end
             fla = 0;
           end 
      end   
 end