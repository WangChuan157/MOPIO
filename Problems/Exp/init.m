%ÿ�д���һ����Ʒ��ÿ�д���һ������
%�豸����
% A = [3,1,2,3,4,0,0,0;
%     1,4,2,3,0,0,0,0;
%     3,4,1,2,1,0,0,0;
%     2,3,4,1,4,3,0,0;
%     4,2,3,4,1,3,4,0;
%     1,2,1,3,4,1,3,1];
%ʱ�����
% B = [8,2,4,24,6,0,0,0;
%     4,5,3,4,0,0,0,0;
%     3,7,15,20,8,0,0,0;
%     7,6,21,1,16,3,0,0;
%     10,4,8,4,12,6,1,0;
%     1,4,7,3,5,2,5,8];
function l = init(A)

%���ɻ�������
C = (A~=0);
list = zeros(1,sum(C(:)));
w = size(A,1);
b = 1;
for i=1:w
    n = sum(A(i,:)~=0);
    e = b+n-1;
    
    for j = b:e
        list(j) = i;
    end
    b = e + 1;
end
l = list;