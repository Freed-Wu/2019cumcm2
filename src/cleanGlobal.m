data=data_ori;
[m n]=size(data);
dbstop if error
for jj=2:m
	temp=regexp(data(jj,10),'[a-z|0-9]{1,20}','match');
	if ~isempty(temp)
		[m0 n0]=size(temp);
		if n0==1|((n0==2)&(str2double(temp(2))==0))
			data(jj,10)=temp(1);
		else
			data(jj,10)=str2double(temp(1))+str2double(temp(2))*10^
			(-fix(log10(str2double(temp(2)))+1));
		end
	end
end
flag_pt=1;
for jj=2:m
	if ~(isnan(str2double(data(jj,13)))|isnan(str2double(data(jj,13))))
		data_su(flag_pt,:)=data(jj,:);
		flag_pt=flag_pt+1;
	end
end
data=data_su;
