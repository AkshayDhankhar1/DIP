%Name- Akshay
%BT23ECE050
clc;
clear all;
close all;

check=false; %Flag variable to check about all conditions and till then generate matrices.

while ~check
    matrix=randi([0 1],3,9); %generating a random 3*9 matrix containing 0 or 1 as values.
    row_check=all(sum(matrix,2)==5); %it calculates whether all rows sum is equivalent to 5.
    col_check=all(sum(matrix,1)>=1); %it calculates wehther all columns have atleast one 1 as element.
    if row_check&&col_check
        check=true; %triggering the flag variable when all conditions are met.
    end
end
ranges={1:9, 10:19, 20:29, 30:39, 40:49,50:59, 60:69, 70:79, 80:90}; %specifying ranges from the respective columns for each element.
ticket=zeros(3,9); %generating a ticket with all elements as 0.

for col = 1:9
    ones_count=sum(matrix(:,col)); %getting the count of ones in each column.
    nums=randsample(ranges{col}, ones_count); %select the number of values equivalent to the ones_count, randomly without repetition form the ranges based on the col number
    nums=sort(nums);
    idx=find(matrix(:,col)==1); %looks for the index where the value is in the matrix we made earlier.
    ticket(idx,col)=nums; %making the ticket and assigning the numbers wherever there is 1 in the column.
end

disp(ticket);
