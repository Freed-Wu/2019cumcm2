data_NN_in=str2double(data_11(:,[9,10,13,14]))';
data_NN_out=str2double(data_11(:,15))';
data_NN_in(1,:)=0.1*(2020-data_NN_in(1,:));
 net=feedforwardnet([10,10]);
	%net=cascadeforwardnet([10,10,10]);
 net.trainFcn = 'trainlm';
 net.performFcn = 'mae';
 net.trainParam.show=1;
 net.trainParam.lr=0.1;
 net.trainParam.max_fail=5e2;
 net.trainParam.epochs=1e20;
 net.trainParam.goal=0;
 net.trainParam.min_grad=0;
 net.trainParam.max_fail=20;
 net.divideFcn = '';
 net.layers{1}.transferFcn='logsig';
 net.layers{2}.transferFcn='tansig';
 net.layers{3}.transferFcn='purelin';
	%[net,tr]=train(net,inputn,outputn,'UseParallel','yes','UseGPU','yes');
 [net,tr]=train(net,data_NN_in,data_NN_out);
 pkk=1;
 dnn_in=zeros(100*200,3);
 for i=1:100
	 for j=1:200
		 dnn_in(pkk,1)=j*0.5*0.01;
		 dnn_in(pkk,2)=i*0.3;
		 dnn_in(pkk,3)=10;
		 dnn_in(pkk,4)=1;
		 pkk=pkk+1;
	 end
 end
  X=sim(net,dnn_in');
u=find(X>0&X<12);
x1=dnn_in(u,1)*10;
x2=dnn_in(u,2);
x3=X(u);
da=[x1;x2;x3'];
scatter3(dnn_in(u,1)*10,dnn_in(u,2),X(u),1)
data_NN_in=str2double(data_1(:,[9,10,13,14]))';
data_NN_out=str2double(data_1(:,15))';
data_NN_in(1,:)=0.1*(2020-data_NN_in(1,:));
 net=feedforwardnet([10,10]);
	%net=cascadeforwardnet([10,10,10]);
 net.trainFcn = 'trainlm';
 net.performFcn = 'mae';
 net.trainParam.show=1;
 net.trainParam.lr=0.1;
 net.trainParam.max_fail=5e2;
 net.trainParam.epochs=1e20;
 net.trainParam.goal=0;
 net.trainParam.min_grad=0;
 net.trainParam.max_fail=20;
 net.divideFcn = '';
 net.layers{1}.transferFcn='logsig';
 net.layers{2}.transferFcn='tansig';
 net.layers{3}.transferFcn='purelin';
 %[net,tr]=train(net,inputn,outputn,'UseParallel','yes','UseGPU','yes');
 [net,tr]=train(net,data_NN_in,data_NN_out);
 pkk=1;
 dnn_in=zeros(100*200,3);
 for i=1:100
 for j=1:200
 dnn_in(pkk,1)=j*0.5*0.01;
 dnn_in(pkk,2)=i*0.3;
 dnn_in(pkk,3)=10;
 dnn_in(pkk,4)=1;
 pkk=pkk+1;
 end
 end
 X=sim(net,dnn_in');
u=find(X>0&X<12);
x1=dnn_in(u,1)*10;
x2=dnn_in(u,2);
x3=X(u);
da=[x1;x2;x3'];
scatter3(dnn_in(u,1)*10,dnn_in(u,2),X(u),1)
data_NN_in=str2double(data_4(:,[9,10,13,14]))';
data_NN_out=str2double(data_4(:,15))';
data_NN_in(1,:)=0.1*(2020-data_NN_in(1,:));
net=feedforwardnet([10,10]);
%net=cascadeforwardnet([10,10,10]);
net.trainFcn = 'trainlm';
net.performFcn = 'mae';
net.trainParam.show=1;
net.trainParam.lr=0.1;
net.trainParam.max_fail=5e2;
net.trainParam.epochs=1e20;
net.trainParam.goal=0;
net.trainParam.min_grad=0;
net.trainParam.max_fail=20;
net.divideFcn = '';
net.layers{1}.transferFcn='logsig';
net.layers{2}.transferFcn='tansig';
net.layers{3}.transferFcn='purelin';
%[net,tr]=train(net,inputn,outputn,'UseParallel','yes','UseGPU','yes');
[net,tr]=train(net,data_NN_in,data_NN_out);
pkk=1;
dnn_in=zeros(100*200,3);
for i=1:100
for j=1:200
dnn_in(pkk,1)=j*0.5*0.01;
dnn_in(pkk,2)=i*0.3;
dnn_in(pkk,3)=10;
dnn_in(pkk,4)=1;
pkk=pkk+1;
end
end
X=sim(net,dnn_in');
u=find(X>0&X<12);
x1=dnn_in(u,1)*10;
x2=dnn_in(u,2);
x3=X(u);
da=[x1;x2;x3'];
scatter3(dnn_in(u,1)*10,dnn_in(u,2),X(u),1)