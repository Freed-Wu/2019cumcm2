[m n]=size(data);
dbstop if error
for jj=1:m
	temp=regexp(data(jj,1),'[^\x00-\xff]{1,6}','match');
	if ~isempty(temp)
		data(jj,1)=temp(1);
	end
end
pt=1;
for jj=1:m
	flag=find(data(:,1)==data(2,1));
	[m1 n1]=size(flag);
	if m1>20
		data_next=data(flag,:);
		eval(['data_',num2str(pt),'=data_next;'])
		data(flag,:)=[];
		pt=pt+1;
	else
		data(flag,:)=[];
	end
	[p q]=size(data);
	if p<2
		break;
	end
end
	
