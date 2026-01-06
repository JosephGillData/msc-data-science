%% Making empty parameter matrices and targets
x = 1:200;

x = x';
train_test_rh = rh_lists; % insert here
train_test_lh = lh_lists; % insert here
coef_shape_rh = size(train_test_rh);
number_of_rh = coef_shape_rh(3);
coef_shape_lh = size(train_test_lh);
number_of_lh = coef_shape_lh(3);
number_of = number_of_rh + number_of_lh;

train_test = cat(3, train_test_rh,train_test_lh);
targets_train_test_rh = ones(number_of_rh,1);
targets_train_test_lh = -1.* ones(number_of_lh,1);
targets = cat(1, targets_train_test_rh,targets_train_test_lh);

coef_four1 = 88;
coef_four2 = 132;
coef_four3 = 176;
coef_four4 = 220;
coef_four5 = 264;
coef_four6 = 308;
coef_four7 = 352;
coef_four8 = 396;

param_matrix_A160108_four1 = zeros(number_of,coef_four1);
param_matrix_A160108_four2 = zeros(number_of,coef_four2);
param_matrix_A160108_four3 = zeros(number_of,coef_four3);
param_matrix_A160108_four4 = zeros(number_of,coef_four4);
param_matrix_A160108_four5 = zeros(number_of,coef_four5);
param_matrix_A160108_four6 = zeros(number_of,coef_four6);
param_matrix_A160108_four7 = zeros(number_of,coef_four7);
param_matrix_A160108_four8 = zeros(number_of,coef_four8);
%% Obtaining parameters for Four1
disp('Four 1')
for num = 1:number_of
    param_list_four1 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_four1 = fit(x,sample,'fourier1');
        params_four1 = coeffvalues(fit_four1);  
        param_list_four1 = cat(2,param_list_four1, params_four1);
    end
    param_matrix_A160108_four1(num,:) = param_list_four1;
end

Tbl_A160108_four1 = array2table(param_matrix_A160108_four1);
Tbl_A160108_four1.target_var = targets;
Tbl_A160108_four1.target_var = categorical(Tbl_A160108_four1.target_var);
Tbl_A160108_four1 = Tbl_A160108_four1(randperm(size(Tbl_A160108_four1,1)), :);
save('Tbl_A160108_four1.mat', 'Tbl_A160108_four1')
%% Obtaining parameters for Four2
disp('Four 2')
for num = 1:number_of
    param_list_four2 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_four2 = fit(x,sample,'fourier2');
        params_four2 = coeffvalues(fit_four2);  
        param_list_four2 = cat(2,param_list_four2, params_four2);
    end
    param_matrix_A160108_four2(num,:) = param_list_four2;
end

Tbl_A160108_four2 = array2table(param_matrix_A160108_four2);
Tbl_A160108_four2.target_var = targets;
Tbl_A160108_four2.target_var = categorical(Tbl_A160108_four2.target_var);
Tbl_A160108_four2 = Tbl_A160108_four2(randperm(size(Tbl_A160108_four2,1)), :);
save('Tbl_A160108_four2.mat', 'Tbl_A160108_four2')
%% Obtaining parameters for Four3
disp('Four 3')
for num = 1:number_of
    param_list_four3 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_four3 = fit(x,sample,'fourier3');
        params_four3 = coeffvalues(fit_four3);  
        param_list_four3 = cat(2,param_list_four3, params_four3);
    end
    param_matrix_A160108_four3(num,:) = param_list_four3;
end

Tbl_A160108_four3 = array2table(param_matrix_A160108_four3);
Tbl_A160108_four3.target_var = targets;
Tbl_A160108_four3.target_var = categorical(Tbl_A160108_four3.target_var);
Tbl_A160108_four3 = Tbl_A160108_four3(randperm(size(Tbl_A160108_four3,1)), :);
save('Tbl_A160108_four3.mat', 'Tbl_A160108_four3')
%% Obtaining parameters for Four4
disp('Four 4')
for num = 1:number_of
    param_list_four4 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_four4 = fit(x,sample,'fourier4');
        params_four4 = coeffvalues(fit_four4);  
        param_list_four4 = cat(2,param_list_four4, params_four4);
    end
    param_matrix_A160108_four4(num,:) = param_list_four4;
end

Tbl_A160108_four4 = array2table(param_matrix_A160108_four4);
Tbl_A160108_four4.target_var = targets;
Tbl_A160108_four4.target_var = categorical(Tbl_A160108_four4.target_var);
Tbl_A160108_four4 = Tbl_A160108_four4(randperm(size(Tbl_A160108_four4,1)), :);
save('Tbl_A160108_four4.mat', 'Tbl_A160108_four4')
%% Obtaining parameters for Four5
disp('Four 5')
for num = 1:number_of
    param_list_four5 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_four5 = fit(x,sample,'fourier5');
        params_four5 = coeffvalues(fit_four5);  
        param_list_four5 = cat(2,param_list_four5, params_four5);
    end
    param_matrix_A160108_four5(num,:) = param_list_four5;
end

Tbl_A160108_four5 = array2table(param_matrix_A160108_four5);
Tbl_A160108_four5.target_var = targets;
Tbl_A160108_four5.target_var = categorical(Tbl_A160108_four5.target_var);
Tbl_A160108_four5 = Tbl_A160108_four5(randperm(size(Tbl_A160108_four5,1)), :);
save('Tbl_A160108_four5.mat', 'Tbl_A160108_four5')
%% Obtaining parameters for Four6
disp('Four 6')
for num = 1:number_of
    param_list_four6 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_four6 = fit(x,sample,'fourier6');
        params_four6 = coeffvalues(fit_four6);  
        param_list_four6 = cat(2,param_list_four6, params_four6);
    end
    param_matrix_A160108_four6(num,:) = param_list_four6;
end

Tbl_A160108_four6 = array2table(param_matrix_A160108_four6);
Tbl_A160108_four6.target_var = targets;
Tbl_A160108_four6.target_var = categorical(Tbl_A160108_four6.target_var);
Tbl_A160108_four6 = Tbl_A160108_four6(randperm(size(Tbl_A160108_four6,1)), :);
save('Tbl_A160108_four6.mat', 'Tbl_A160108_four6')
%% Obtaining parameters for Four7
disp('Four 7')
for num = 1:number_of
    param_list_four7 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_four7 = fit(x,sample,'fourier7');
        params_four7 = coeffvalues(fit_four7);  
        param_list_four7 = cat(2,param_list_four7, params_four7);
    end
    param_matrix_A160108_four7(num,:) = param_list_four7;
end

Tbl_A160108_four7 = array2table(param_matrix_A160108_four7);
Tbl_A160108_four7.target_var = targets;
Tbl_A160108_four7.target_var = categorical(Tbl_A160108_four7.target_var);
Tbl_A160108_four7 = Tbl_A160108_four7(randperm(size(Tbl_A160108_four7,1)), :);
save('Tbl_A160108_four7.mat', 'Tbl_A160108_four7')
%% Obtaining parameters for Four8
disp('Four 8')
for num = 1:number_of
    param_list_four8 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_four8 = fit(x,sample,'fourier8');
        params_four8 = coeffvalues(fit_four8);  
        param_list_four8 = cat(2,param_list_four8, params_four8);
    end
    param_matrix_A160108_four8(num,:) = param_list_four8;
end

Tbl_A160108_four8 = array2table(param_matrix_A160108_four8);
Tbl_A160108_four8.target_var = targets;
Tbl_A160108_four8.target_var = categorical(Tbl_A160108_four8.target_var);
Tbl_A160108_four8 = Tbl_A160108_four8(randperm(size(Tbl_A160108_four8,1)), :);
save('Tbl_A160108_four8.mat', 'Tbl_A160108_four8')





















