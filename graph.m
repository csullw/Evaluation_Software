function graph(u,legend_title)  % ���ݾ��߶Ȼ�������ͼ
global GUI;
Y=u';
n=size(Y,2);
X=1:n;
h=bar(X,Y,0.5);
switch legend_title
    case 'Topsis��'
        set(h,'FaceColor',[1 1 0]);
        h_gca=GUI.axes_1;
        box off;
    case 'GRA��'
        set(h,'FaceColor',[0 0.9 0.3]);
        h_gca=GUI.axes_2;
        box off;
    case 'TG��'
        set(h,'FaceColor',[1 0 0.3]);
        h_gca=GUI.axes_3;
        box off;
end
ylim([0 1]);
ylabel('���߶�','FontSize',10)
legend(legend_title,'FontSize',10,'FontName','Times New Roman',...
    'Location','NorthWest');
set(h_gca,'xtick',1:n);
solu_cell=Scell_create(n);
set(h_gca,'XTickLabel',solu_cell,'FontSize',8,'FontName','Times New Roman');
xtb=get(h_gca,'xticklabel');%��ȡ���������ǩ���
xt=get(h_gca,'XTick');%��ȡ��������̶Ⱦ��
yt=get(h_gca,'YTick');
xtextp=xt;%ÿ����ǩ����λ�õĺ����꣬�����ȻӦ�ú�ԭ��һ��
ytextp=-0.15*yt(2)*ones(1,length(xt));
text(xtextp,ytextp,xtb,'HorizontalAlignment','right','rotation',45,...
    'fontsize',8);
set(gca,'XtickLabel','')
Y_1=roundn(u,-2);
for i=1:n
    text(X(i),Y_1(i),num2str(Y_1(i)),'HorizontalAlignment','center',...
        'VerticalAlignment','bottom','FontSize',8,'FontName','Times New Roman');
end




