%% First Half of data
% Pivot runs for 1000 times.

% This is data copied from running the synthetic experiments on other
% computers

dList1 = [2 3 4 5 10 11];

ObjZono = [    1.0000    1.0000    1.0000    1.0000    1.0000
    0.9998    0.9984    1.0000    1.0000    1.0000
    0.9989    0.9973    0.9933    0.9981    0.9967
    0.9811    0.9972    0.9872    0.9823    0.9781
    0.9031    0.9136    0.9097    0.9249    0.9042
    0.9080    0.8953    0.8851    0.8867    0.9103];

ObjPivot = [     0.9822    0.9785    1.0000    0.9964    0.9915
    0.9944    0.9916    0.9651    0.9815    0.9883
    0.9843    0.9731    0.9857    0.9613    0.9797
    0.9817    0.9808    0.9748    0.9753    0.9638
    0.9341    0.9487    0.9359    0.9357    0.9664
    0.9581    0.9306    0.9166    0.9255    0.9420];

ObjCGW = [    0.9690    0.9584    1.0000    0.9378    0.9171
    0.9544    0.9023    0.8550    0.9712    0.9074
    0.9797    0.8384    0.9497    0.8392    0.9620
    0.9754    0.9682    0.8918    0.8767    0.8702
    0.9315    0.8634    0.8739    0.9105    0.8630
    0.9523    0.8425    0.9071    0.9391    0.9017];

tPiv = [    1.9148    1.8887    1.8875    2.0682    1.8795
    2.2384    2.2587    2.0290    1.9997    1.8682
    1.9662    2.0338    2.2210    2.0902    1.8411
    1.9984    2.0826    1.8984    2.2501    1.8205
    1.9120    1.8605    1.8556    1.8529    1.8394
    1.8521    1.8504    1.8497    1.8462    1.8626];

tZono = [    1.8503    2.1737    1.9788    1.9104    1.9344
    2.2198    2.4757    2.6930    2.4517    2.3781
    2.9596    2.9865    2.9047    3.2474    3.0651
    3.6629    3.5940    3.6675    3.5958    3.8187
    7.4279    7.1716    8.7353    7.4060    7.2136
    8.3520    8.2982    8.4216    8.3270    8.3391];

tCGW = [    8.1018    7.0454    6.9968    7.0941    6.6161
    7.3875    7.2384    8.2352    7.8615    7.0848
    6.8095    6.9621    6.4822    7.8886    6.5682
    6.7750    6.1414    6.5830    6.2595    6.1748
    6.1688    5.5063    5.3351    5.6386    5.7810
    5.6175    5.6652    5.3600    5.5243    6.0345];

tExact = [   0.002853206000000   0.001942805000000   0.001545328000000   0.001777937000000   0.001503161000000
   0.099576056000000   0.013406120000000   0.002204984000000   0.001993164000000   0.007961883000000
   0.023873982000000   0.005726158000000   0.254152735000000   0.132850266000000   0.006926990000000
   0.004947824000000   3.036828417000000   0.908592112000000   0.016282732000000   0.050423434000000
   0.006835532000000   4.582801795000000   0.353597889000000   4.220968814000000   1.462327077000000
   4.333688003000000   0.407422252000000   0.024624037000000   0.031760244000000   1.423594497000000]*1000;

%% Medians

tz = median(tZono,2);
tp = median(tPiv,2);
tE = median(tExact,2);
tc = median(tCGW,2);
oz = median(ObjZono,2);
op = median(ObjPivot,2);
oc = median(ObjCGW,2);

%% Next list

dList2 = [6 7 8 9];

ObjCGW = [
    0.8420    0.7864    0.8873    0.7995    0.9240
    1.4700    0.8470    0.9509    0.8398    0.8552
    0.8126    0.7694    0.8990    0.8575    0.9428
    0.8705    0.8990    0.8850    0.8717    0.8756];

ObjPivot =[

    0.9700    0.9606    0.9595    0.9472    0.9574
    1.5563    0.9711    0.9599    0.9718    0.9679
    0.9653    0.9515    0.9466    0.9540    0.9700
    0.9672    0.9598    0.9494    0.9726    0.9373];

ObjZono =[

    0.9668    0.9660    0.9660    0.9653    0.9527
    1.5067    0.9472    0.9452    0.9475    0.9424
    0.9329    0.9307    0.9290    0.9404    0.9324
    0.9186    0.9386    0.9099    0.9209    0.9040
];

tZono =[

    4.1029    5.4577    5.4030    4.0571    4.1383
    4.7253    4.8507    6.0046    4.9288    4.7104
    6.6924    7.3416    7.1226    6.0356    5.7437
    6.6001    6.4804    6.3230    6.5073    6.3662];

tPiv =[

    1.9262    1.8384    1.8566    2.2216    1.9456
    2.2483    2.3760    2.2970    1.8380    1.8821
    2.0591    2.0505    2.0302    2.0275    1.8303
    1.8056    1.9933    2.0047    2.1393    1.9330];

tExact =[

    0.0048    0.0455    0.0752    1.1793    0.0060
    0.0984    0.1771    0.0627    0.0414    0.0815
    1.7522    0.9091    0.0422    1.0579    1.8741
    0.3706    1.2711    0.0558    0.0039    0.0459]*1000;

tCGW =[

    6.9994    5.7635    5.8463    5.8953    6.5814
    6.0065    5.8590    6.1652    5.6492    5.8779
    7.1915    7.3563    6.6580    6.7901    5.9654
    5.6666    5.5927    6.1080    6.3998    5.9279];

%% New Medians:

tz2 = median(tZono,2);
tp2 = median(tPiv,2);
tE2 = median(tExact,2);
tc2 = median(tCGW,2);
oz2 = median(ObjZono,2);
op2 = median(ObjPivot,2);
oc2 = median(ObjCGW,2);

%% Everything

Objectives = sortrows([oz op oc dList1'; oz2 op2 oc2 dList2'],4);
dList = Objectives(:,4);
oZ = Objectives(:,1);
oP = Objectives(:,2);
oC = Objectives(:,3);
figure(5)
plot(dList,oZ,'g');
hold on
plot(dList,oP,'b');
hold on
plot(dList,oC,'r');

%% Plot
figure(1); clf;
Ds = dList;
dmax = 11;
%plot(Ds,Objectives,'.-','LineWidth',2,'markersize',15);
plot(Ds,oZ,'.-','LineWidth',2,'markersize',15,'color','g');
hold on
plot(Ds,oC,'.-','LineWidth',2,'markersize',15,'color','r');
hold on
plot(Ds,oP,'.-','LineWidth',2,'markersize',15,'color','b');
box off
%set(gca,'XTick',[2,15])
%set(gca,'XTickLabel',[2,15]);
xlim([2,dmax]);
ylim([.75,1]);
legend('ZonoCC','CGW','Pivot')
legend('Location','Southeast');
legend boxoff
xlabel('rank d');
ylabel({'Approximation of Optimal'});
set_figure_size([2.25*1.5,1.75*1.5]);
%
%print(gcf,sprintf('Synthetic1Objectives.pdf'),'-dpdf');
print(gcf,sprintf('Syn1.eps'),'-depsc2');
Process_AtendHeader('Syn1.eps','');


%% Times

Times = sortrows([dList1' tE tc tz tp; dList2' tE2 tc2 tz2 tp2],1);
