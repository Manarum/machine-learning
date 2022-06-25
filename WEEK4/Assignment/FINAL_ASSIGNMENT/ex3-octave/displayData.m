function [h,display_array]=displayData(X,example_width)
if ~exist('example_width')|| isempty(example_width)
    example_width=round(sqrt(size(X,2)));
end
colormap(gray);
[m,n]=size(X);
example_height=(n/example_width);

display_row=floor(sqrt(m));
display_col=ceil(m/display_row);

pad=1;
display_array=-ones(pad+display_row*(example_height+pad),pad+display_col*(example_width+pad));

curr_ex=1;
for j=1:display_row
    for i=1:display_col
        if curr_ex>m,
            break;
        end
        max_val=max(abs(X(curr_ex,:)));
        display_array(pad+(j-1)*(example_height+pad)+(1:example_height),pad+(i-1)*(example_width+pad)+(1:example_width))=reshape(X(curr_ex,:),example_height,example_width)/max_val;
        curr_ex=curr_ex+1;
        if curr_ex>m,
            break;
        end
        
    end
end

        
        
h=imagesc(display_array,[-1 1]);
colorbar;
axis image off;

end

