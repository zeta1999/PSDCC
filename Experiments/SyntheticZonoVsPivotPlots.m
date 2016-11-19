%% More ZonoVsPivot 
% These are results from running SyntheticZonoVsPivot.m

tPiv = [

    2.8956    2.7709    2.7563
    3.0582    3.0734    3.0200
    3.3609    3.3279    3.1852
    3.3760    3.3577    3.4272
    3.6416    3.5659    3.6250
    4.0573    3.8608    3.8357
    4.1960    4.2942    4.3711
    4.6395    4.6845    4.5693
    5.1234    5.2098    5.0501
    5.4730    5.4684    5.4822
    7.2756    7.1055    6.9583
   11.5230   11.4953   11.5452
   28.2367   28.4061   28.5568];

tZono = [

    0.1659    0.1484    0.1481
    0.2864    0.2369    0.2796
    0.3720    0.4491    0.3806
    0.6138    0.5600    0.5688
    0.7261    0.6621    0.7907
    0.9693    0.9647    0.9591
    1.2793    1.3120    1.3090
    1.7731    1.7663    1.7854
    2.3264    2.3559    2.3861
    2.9557    2.9585    3.0349
    5.7759    5.7177    5.8014
   12.7209   12.3024   12.5187
   28.8301   30.0764   30.2418];

ObjPiv = [0.000006605535353   0.000006196630923   0.000006217899754
   0.000040793702352   0.000038122804621   0.000037321988319
   0.000159497586610   0.000151260168441   0.000144765980734
   0.000339365192286   0.000344043506329   0.000352239345721
   0.000583691980934   0.000574889652616   0.000619632007553
   0.001377173812084   0.001337222752553   0.001381123367240
   0.002369622607341   0.002360337105512   0.002356829712525
   0.005336347689859   0.005388811681693   0.005355079948669
   0.009171877032602   0.009368552308976   0.009427074059315
   0.014845802775593   0.014922492092911   0.014594244703412
   0.059593998820116   0.058348846308917   0.058634914816110
   0.235696004451114   0.235435262614890   0.233713900981653
   1.463407507517277   1.462547217364256   1.461973367407812]*1e+09;


ObjZono = [
   0.000006628150321   0.000006127983423   0.000006219195900
   0.000039852022965   0.000038115151774   0.000037416535931
   0.000160297879619   0.000151767763526   0.000146225685774
   0.000341069021228   0.000347739897033   0.000354680016881
   0.000591486843481   0.000576713510676   0.000625014227896
   0.001392264483303   0.001354084525186   0.001390054084173
   0.002415825227005   0.002407063021741   0.002384596284032
   0.005416654603847   0.005472857813260   0.005447350894530
   0.009358018733417   0.009545429988901   0.009575963525213
   0.015176492603888   0.015193143711695   0.014840232735379
   0.060886220058061   0.059673617604588   0.059809215968271
   0.240373324421559   0.240851279843755   0.238490074220960
   1.498084887643356   1.496110952306988   1.494144493729014]*1e+09;

Avals = [
   0.000017650512397   0.000016363997446   0.000017146198863
   0.000110906072917   0.000105313869488   0.000103914804068
   0.000449258004257   0.000425848253035   0.000408414447865
   0.000956939922821   0.000973850687068   0.000993653413797
   0.001667771471184   0.001630216267386   0.001744523895253
   0.003923121978493   0.003805627043669   0.003901832554314
   0.006791822003583   0.006773559967947   0.006741762444969
   0.015305954819135   0.015456587300824   0.015393978554862
   0.026468166260754   0.026958329168079   0.027134809345231
   0.042868798626405   0.042961251503229   0.042095075949854
   0.171894599906216   0.168589712083358   0.169185496124344
   0.682367035794699   0.682105729141752   0.676965885063858
   4.238562262227327   4.237825408395779   4.239544566696433]*1e+09;

Nvals = [100,250,500,750,1000,1500,2000,3000,4000,5000,10000,20000,50000];
%%

tz = median(tZono,2);
tp = median(tPiv,2);
oz = median(ObjZono,2);
op = median(ObjPiv,2);

figure(1)
plot(Nvals,oz./op,'.','markersize',20)

%%
Oza = ObjZono./Avals;
Opa = ObjPiv./Avals;

oza = median(Oza,2);
opa = median(Opa,2);

figure(2)
plot(Nvals,oza)
hold on
plot(Nvals,opa)

%%
figure(3)
semilogx(Nvals,tp,'b')
hold on
semilogx(Nvals,tz,'g')

%%

figure(1);
clf;
semilogx(Nvals,oz./op,'.','MarkerSize',12);
ylim([1,1.03]);
xlim([min(Nvals),max(Nvals)])
box off;
ylabel({'Benefit of ','ZonoCC over Pivot'});
xlabel('problem size n');
set_figure_size([2.25,1.75]);
print(gcf,sprintf('Syn2ZvPobj.eps'),'-depsc2');
Process_AtendHeader('Syn2ZvPobj.eps','');

%%
%!open Syn2ZvPobj.eps

%% Runtimes
figure(2)
clf;
loglog(Nvals,tp,'.-','LineWidth',1,'markersize',10,'color','b');
hold on
loglog(Nvals,tz,'.-','LineWidth',1,'markersize',10,'color','g');
hold off
xlim([min(Nvals),max(Nvals)]);
set(gca,'XTick',[100,50000])
set(gca,'XTickLabel',[100,50000]);
%set(gca,'YScale','log');
box off;
legend('Pivot','ZonoCC','Location','Northwest');
legend boxoff;

xlabel('problem size n');
ylabel({'Runtime in seconds'});
set_figure_size([2.25,1.75]);
%print(gcf,sprintf('search-cluster-%i',i),'-depsc2');
%print(gcf,sprintf('Syn2ZvPrun.pdf'),'-dpdf');
print(gcf,sprintf('SynZvPrun.eps'),'-depsc2');
Process_AtendHeader('SynZvPrun.eps','');




