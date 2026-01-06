%% Create unfiltered datasets from the raw data
A160108_data = A160108_raw.data;
B151019_data = B151019_raw.data;
B151020_data = B151020_raw.data;
B151215_data = B151215_raw.data;
C151126_data = C151126_raw.data;
C151216_data = C151216_raw.data;
C151223_data = C151223_raw.data;
D151125_data = D151125_raw.data;
E151225_data = E151225_raw.data;
E160119_data = E160119_raw.data;
E160122_data = E160122_raw.data;
F150916_data = F150916_raw.data;
F150917_data = F150917_raw.data;
F150928_data = F150928_raw.data;
%% Create butter filter
fc_below = 1; 
fc_above = 45;
fs = 200;
Wn = [fc_below/(fs/2) fc_above/(fs/2)];
[b,a] = butter(4,Wn);
%% Apply the butter filter
A160108_butter = filter(b,a,A160108_data);
B151019_butter = filter(b,a,B151019_data);
B151020_butter = filter(b,a,B151020_data);
B151215_butter = filter(b,a,B151215_data);
C151126_butter = filter(b,a,C151126_data);
C151216_butter = filter(b,a,C151216_data);
C151223_butter = filter(b,a,C151223_data);
D151125_butter = filter(b,a,D151125_data);
E151225_butter = filter(b,a,E151225_data);
E160119_butter = filter(b,a,E160119_data);
E160122_butter = filter(b,a,E160122_data);
F150916_butter = filter(b,a,F150916_data);
F150917_butter = filter(b,a,F150917_data);
F150928_butter = filter(b,a,F150928_data);
%% A160108
A160108_shape = size(A160108_butter);
A160108_length = A160108_shape(1,1);
A160108_raw_marker = A160108_raw.marker;
A160108_marker = A160108_raw_marker;

A160108_lh_starts = [];
A160108_lh_ends = [];
A160108_rh_starts = [];
A160108_rh_ends = [];

for i=2:A160108_length-1
    before = A160108_marker(i-1);
    now = A160108_marker(i);
    after = A160108_marker(i+1);
    if before == 0 && now == 1
        A160108_lh_starts = [A160108_lh_starts i];
    end
    if now == 1 && after == 0
        A160108_lh_ends = [A160108_lh_ends i];
    end
    if before == 0 && now == 2
        A160108_rh_starts = [A160108_rh_starts i];
    end
    if now == 2 && after == 0
        A160108_rh_ends = [A160108_rh_ends i];
    end
end

A160108_lh_size = size(A160108_lh_starts);
A160108_lh_num = A160108_lh_size(2);
A160108_rh_size = size(A160108_rh_starts);
A160108_rh_num = A160108_rh_size(2);

A160108_lh_lists = [];
for i=1:A160108_lh_num
    A160108_h = A160108_butter(A160108_lh_starts(i):A160108_lh_ends(i),1:22);
    A160108_lh_lists = cat(3,A160108_lh_lists,A160108_h(1:200,1:22));
end

A160108_rh_lists = [];
for i=1:A160108_rh_num
    A160108_h = A160108_butter(A160108_rh_starts(i):A160108_rh_ends(i),1:22);
    A160108_rh_lists = cat(3,A160108_rh_lists,A160108_h(1:200,1:22));
end
%% B151019
B151019_shape = size(B151019_butter);
B151019_length = B151019_shape(1,1);
B151019_raw_marker = B151019_raw.marker;
B151019_marker = B151019_raw_marker;

B151019_lh_starts = [];
B151019_lh_ends = [];
B151019_rh_starts = [];
B151019_rh_ends = [];

for i=2:B151019_length-1
    before = B151019_marker(i-1);
    now = B151019_marker(i);
    after = B151019_marker(i+1);
    if before == 0 && now == 1
        B151019_lh_starts = [B151019_lh_starts i];
    end
    if now == 1 && after == 0
        B151019_lh_ends = [B151019_lh_ends i];
    end
    if before == 0 && now == 2
        B151019_rh_starts = [B151019_rh_starts i];
    end
    if now == 2 && after == 0
        B151019_rh_ends = [B151019_rh_ends i];
    end
end

B151019_lh_size = size(B151019_lh_starts);
B151019_lh_num = B151019_lh_size(2);
B151019_rh_size = size(B151019_rh_starts);
B151019_rh_num = B151019_rh_size(2);

B151019_lh_lists = [];
for i=1:B151019_lh_num
    B151019_h = B151019_butter(B151019_lh_starts(i):B151019_lh_ends(i),1:22);
    B151019_lh_lists = cat(3,B151019_lh_lists,B151019_h(1:200,1:22));
end

B151019_rh_lists = [];
for i=1:B151019_rh_num
    B151019_h = B151019_butter(B151019_rh_starts(i):B151019_rh_ends(i),1:22);
    B151019_rh_lists = cat(3,B151019_rh_lists,B151019_h(1:200,1:22));
end
%% B151020
B151020_shape = size(B151020_butter);
B151020_length = B151020_shape(1,1);
B151020_raw_marker = B151020_raw.marker;
B151020_marker = B151020_raw_marker;

B151020_lh_starts = [];
B151020_lh_ends = [];
B151020_rh_starts = [];
B151020_rh_ends = [];

for i=2:B151020_length-1
    before = B151020_marker(i-1);
    now = B151020_marker(i);
    after = B151020_marker(i+1);
    if before == 0 && now == 1
        B151020_lh_starts = [B151020_lh_starts i];
    end
    if now == 1 && after == 0
        B151020_lh_ends = [B151020_lh_ends i];
    end
    if before == 0 && now == 2
        B151020_rh_starts = [B151020_rh_starts i];
    end
    if now == 2 && after == 0
        B151020_rh_ends = [B151020_rh_ends i];
    end
end

B151020_lh_size = size(B151020_lh_starts);
B151020_lh_num = B151020_lh_size(2);
B151020_rh_size = size(B151020_rh_starts);
B151020_rh_num = B151020_rh_size(2);

B151020_lh_lists = [];
for i=1:B151020_lh_num
    B151020_h = B151020_butter(B151020_lh_starts(i):B151020_lh_ends(i),1:22);
    B151020_lh_lists = cat(3,B151020_lh_lists,B151020_h(1:200,1:22));
end

B151020_rh_lists = [];
for i=1:B151020_rh_num
    B151020_h = B151020_butter(B151020_rh_starts(i):B151020_rh_ends(i),1:22);
    B151020_rh_lists = cat(3,B151020_rh_lists,B151020_h(1:200,1:22));
end
%% B151215
B151215_shape = size(B151215_butter);
B151215_length = B151215_shape(1,1);
B151215_raw_marker = B151215_raw.marker;
B151215_marker = B151215_raw_marker;

B151215_lh_starts = [];
B151215_lh_ends = [];
B151215_rh_starts = [];
B151215_rh_ends = [];

for i=2:B151215_length-1
    before = B151215_marker(i-1);
    now = B151215_marker(i);
    after = B151215_marker(i+1);
    if before == 0 && now == 1
        B151215_lh_starts = [B151215_lh_starts i];
    end
    if now == 1 && after == 0
        B151215_lh_ends = [B151215_lh_ends i];
    end
    if before == 0 && now == 2
        B151215_rh_starts = [B151215_rh_starts i];
    end
    if now == 2 && after == 0
        B151215_rh_ends = [B151215_rh_ends i];
    end
end

B151215_lh_size = size(B151215_lh_starts);
B151215_lh_num = B151215_lh_size(2);
B151215_rh_size = size(B151215_rh_starts);
B151215_rh_num = B151215_rh_size(2);

B151215_lh_lists = [];
for i=1:B151215_lh_num
    B151215_h = B151215_butter(B151215_lh_starts(i):B151215_lh_ends(i),1:22);
    B151215_lh_lists = cat(3,B151215_lh_lists,B151215_h(1:200,1:22));
end

B151215_rh_lists = [];
for i=1:B151215_rh_num
    B151215_h = B151215_butter(B151215_rh_starts(i):B151215_rh_ends(i),1:22);
    B151215_rh_lists = cat(3,B151215_rh_lists,B151215_h(1:200,1:22));
end
%%
C151126_shape = size(C151126_butter);
C151126_length = C151126_shape(1,1);
C151126_raw_marker = C151126_raw.marker;
C151126_marker = C151126_raw_marker;

C151126_lh_starts = [];
C151126_lh_ends = [];
C151126_rh_starts = [];
C151126_rh_ends = [];

for i=2:C151126_length-1
    before = C151126_marker(i-1);
    now = C151126_marker(i);
    after = C151126_marker(i+1);
    if before == 0 && now == 1
        C151126_lh_starts = [C151126_lh_starts i];
    end
    if now == 1 && after == 0
        C151126_lh_ends = [C151126_lh_ends i];
    end
    if before == 0 && now == 2
        C151126_rh_starts = [C151126_rh_starts i];
    end
    if now == 2 && after == 0
        C151126_rh_ends = [C151126_rh_ends i];
    end
end

C151126_lh_size = size(C151126_lh_starts);
C151126_lh_num = C151126_lh_size(2);
C151126_rh_size = size(C151126_rh_starts);
C151126_rh_num = C151126_rh_size(2);

C151126_lh_lists = [];
for i=1:C151126_lh_num
    C151126_h = C151126_butter(C151126_lh_starts(i):C151126_lh_ends(i),1:22);
    C151126_lh_lists = cat(3,C151126_lh_lists,C151126_h(1:200,1:22));
end

C151126_rh_lists = [];
for i=1:C151126_rh_num
    C151126_h = C151126_butter(C151126_rh_starts(i):C151126_rh_ends(i),1:22);
    C151126_rh_lists = cat(3,C151126_rh_lists,C151126_h(1:200,1:22));
end
%% C151216
C151216_shape = size(C151216_butter);
C151216_length = C151216_shape(1,1);
C151216_raw_marker = C151216_raw.marker;
C151216_marker = C151216_raw_marker;

C151216_lh_starts = [];
C151216_lh_ends = [];
C151216_rh_starts = [];
C151216_rh_ends = [];

for i=2:C151216_length-1
    before = C151216_marker(i-1);
    now = C151216_marker(i);
    after = C151216_marker(i+1);
    if before == 0 && now == 1
        C151216_lh_starts = [C151216_lh_starts i];
    end
    if now == 1 && after == 0
        C151216_lh_ends = [C151216_lh_ends i];
    end
    if before == 0 && now == 2
        C151216_rh_starts = [C151216_rh_starts i];
    end
    if now == 2 && after == 0
        C151216_rh_ends = [C151216_rh_ends i];
    end
end

C151216_lh_size = size(C151216_lh_starts);
C151216_lh_num = C151216_lh_size(2);
C151216_rh_size = size(C151216_rh_starts);
C151216_rh_num = C151216_rh_size(2);

C151216_lh_lists = [];
for i=1:C151216_lh_num
    C151216_h = C151216_butter(C151216_lh_starts(i):C151216_lh_ends(i),1:22);
    C151216_lh_lists = cat(3,C151216_lh_lists,C151216_h(1:200,1:22));
end

C151216_rh_lists = [];
for i=1:C151216_rh_num
    C151216_h = C151216_butter(C151216_rh_starts(i):C151216_rh_ends(i),1:22);
    C151216_rh_lists = cat(3,C151216_rh_lists,C151216_h(1:200,1:22));
end
%% C151223
C151223_shape = size(C151223_butter);
C151223_length = C151223_shape(1,1);
C151223_raw_marker = C151223_raw.marker;
C151223_marker = C151223_raw_marker;

C151223_lh_starts = [];
C151223_lh_ends = [];
C151223_rh_starts = [];
C151223_rh_ends = [];

for i=2:C151223_length-1
    before = C151223_marker(i-1);
    now = C151223_marker(i);
    after = C151223_marker(i+1);
    if before == 0 && now == 1
        C151223_lh_starts = [C151223_lh_starts i];
    end
    if now == 1 && after == 0
        C151223_lh_ends = [C151223_lh_ends i];
    end
    if before == 0 && now == 2
        C151223_rh_starts = [C151223_rh_starts i];
    end
    if now == 2 && after == 0
        C151223_rh_ends = [C151223_rh_ends i];
    end
end

C151223_lh_size = size(C151223_lh_starts);
C151223_lh_num = C151223_lh_size(2);
C151223_rh_size = size(C151223_rh_starts);
C151223_rh_num = C151223_rh_size(2);

C151223_lh_lists = [];
for i=1:C151223_lh_num
    C151223_h = C151223_butter(C151223_lh_starts(i):C151223_lh_ends(i),1:22);
    C151223_lh_lists = cat(3,C151223_lh_lists,C151223_h(1:200,1:22));
end

C151223_rh_lists = [];
for i=1:C151223_rh_num
    C151223_h = C151223_butter(C151223_rh_starts(i):C151223_rh_ends(i),1:22);
    C151223_rh_lists = cat(3,C151223_rh_lists,C151223_h(1:200,1:22));
end
%% D151125
D151125_shape = size(D151125_butter);
D151125_length = D151125_shape(1,1);
D151125_raw_marker = D151125_raw.marker;
D151125_marker = D151125_raw_marker;

D151125_lh_starts = [];
D151125_lh_ends = [];
D151125_rh_starts = [];
D151125_rh_ends = [];

for i=2:D151125_length-1
    before = D151125_marker(i-1);
    now = D151125_marker(i);
    after = D151125_marker(i+1);
    if before == 0 && now == 1
        D151125_lh_starts = [D151125_lh_starts i];
    end
    if now == 1 && after == 0
        D151125_lh_ends = [D151125_lh_ends i];
    end
    if before == 0 && now == 2
        D151125_rh_starts = [D151125_rh_starts i];
    end
    if now == 2 && after == 0
        D151125_rh_ends = [D151125_rh_ends i];
    end
end

D151125_lh_size = size(D151125_lh_starts);
D151125_lh_num = D151125_lh_size(2);
D151125_rh_size = size(D151125_rh_starts);
D151125_rh_num = D151125_rh_size(2);

D151125_lh_lists = [];
for i=1:D151125_lh_num
    D151125_h = D151125_butter(D151125_lh_starts(i):D151125_lh_ends(i),1:22);
    D151125_lh_lists = cat(3,D151125_lh_lists,D151125_h(1:200,1:22));
end

D151125_rh_lists = [];
for i=1:D151125_rh_num
    D151125_h = D151125_butter(D151125_rh_starts(i):D151125_rh_ends(i),1:22);
    D151125_rh_lists = cat(3,D151125_rh_lists,D151125_h(1:200,1:22));
end
%% E151225
E151225_shape = size(E151225_butter);
E151225_length = E151225_shape(1,1);
E151225_raw_marker = E151225_raw.marker;
E151225_marker = E151225_raw_marker;

E151225_lh_starts = [];
E151225_lh_ends = [];
E151225_rh_starts = [];
E151225_rh_ends = [];

for i=2:E151225_length-1
    before = E151225_marker(i-1);
    now = E151225_marker(i);
    after = E151225_marker(i+1);
    if before == 0 && now == 1
        E151225_lh_starts = [E151225_lh_starts i];
    end
    if now == 1 && after == 0
        E151225_lh_ends = [E151225_lh_ends i];
    end
    if before == 0 && now == 2
        E151225_rh_starts = [E151225_rh_starts i];
    end
    if now == 2 && after == 0
        E151225_rh_ends = [E151225_rh_ends i];
    end
end

E151225_lh_size = size(E151225_lh_starts);
E151225_lh_num = E151225_lh_size(2);
E151225_rh_size = size(E151225_rh_starts);
E151225_rh_num = E151225_rh_size(2);

E151225_lh_lists = [];
for i=1:E151225_lh_num
    E151225_h = E151225_butter(E151225_lh_starts(i):E151225_lh_ends(i),1:22);
    E151225_lh_lists = cat(3,E151225_lh_lists,E151225_h(1:200,1:22));
end

E151225_rh_lists = [];
for i=1:E151225_rh_num
    E151225_h = E151225_butter(E151225_rh_starts(i):E151225_rh_ends(i),1:22);
    E151225_rh_lists = cat(3,E151225_rh_lists,E151225_h(1:200,1:22));
end
%% E160119
E160119_shape = size(E160119_butter);
E160119_length = E160119_shape(1,1);
E160119_raw_marker = E160119_raw.marker;
E160119_marker = E160119_raw_marker;

E160119_lh_starts = [];
E160119_lh_ends = [];
E160119_rh_starts = [];
E160119_rh_ends = [];

for i=2:E160119_length-1
    before = E160119_marker(i-1);
    now = E160119_marker(i);
    after = E160119_marker(i+1);
    if before == 0 && now == 1
        E160119_lh_starts = [E160119_lh_starts i];
    end
    if now == 1 && after == 0
        E160119_lh_ends = [E160119_lh_ends i];
    end
    if before == 0 && now == 2
        E160119_rh_starts = [E160119_rh_starts i];
    end
    if now == 2 && after == 0
        E160119_rh_ends = [E160119_rh_ends i];
    end
end

E160119_lh_size = size(E160119_lh_starts);
E160119_lh_num = E160119_lh_size(2);
E160119_rh_size = size(E160119_rh_starts);
E160119_rh_num = E160119_rh_size(2);

E160119_lh_lists = [];
for i=1:E160119_lh_num
    E160119_h = E160119_butter(E160119_lh_starts(i):E160119_lh_ends(i),1:22);
    E160119_lh_lists = cat(3,E160119_lh_lists,E160119_h(1:200,1:22));
end

E160119_rh_lists = [];
for i=1:E160119_rh_num
    E160119_h = E160119_butter(E160119_rh_starts(i):E160119_rh_ends(i),1:22);
    E160119_rh_lists = cat(3,E160119_rh_lists,E160119_h(1:200,1:22));
end
%% E160122
E160122_shape = size(E160122_butter);
E160122_length = E160122_shape(1,1);
E160122_raw_marker = E160122_raw.marker;
E160122_marker = E160122_raw_marker;

E160122_lh_starts = [];
E160122_lh_ends = [];
E160122_rh_starts = [];
E160122_rh_ends = [];

for i=2:E160122_length-1
    before = E160122_marker(i-1);
    now = E160122_marker(i);
    after = E160122_marker(i+1);
    if before == 0 && now == 1
        E160122_lh_starts = [E160122_lh_starts i];
    end
    if now == 1 && after == 0
        E160122_lh_ends = [E160122_lh_ends i];
    end
    if before == 0 && now == 2
        E160122_rh_starts = [E160122_rh_starts i];
    end
    if now == 2 && after == 0
        E160122_rh_ends = [E160122_rh_ends i];
    end
end

E160122_lh_size = size(E160122_lh_starts);
E160122_lh_num = E160122_lh_size(2);
E160122_rh_size = size(E160122_rh_starts);
E160122_rh_num = E160122_rh_size(2);

E160122_lh_lists = [];
for i=1:E160122_lh_num
    E160122_h = E160122_butter(E160122_lh_starts(i):E160122_lh_ends(i),1:22);
    E160122_lh_lists = cat(3,E160122_lh_lists,E160122_h(1:200,1:22));
end

E160122_rh_lists = [];
for i=1:E160122_rh_num
    E160122_h = E160122_butter(E160122_rh_starts(i):E160122_rh_ends(i),1:22);
    E160122_rh_lists = cat(3,E160122_rh_lists,E160122_h(1:200,1:22));
end
%% F150916
F150916_shape = size(F150916_butter);
F150916_length = F150916_shape(1,1);
F150916_raw_marker = F150916_raw.marker;
F150916_marker = F150916_raw_marker;

F150916_lh_starts = [];
F150916_lh_ends = [];
F150916_rh_starts = [];
F150916_rh_ends = [];

for i=2:F150916_length-1
    before = F150916_marker(i-1);
    now = F150916_marker(i);
    after = F150916_marker(i+1);
    if before == 0 && now == 1
        F150916_lh_starts = [F150916_lh_starts i];
    end
    if now == 1 && after == 0
        F150916_lh_ends = [F150916_lh_ends i];
    end
    if before == 0 && now == 2
        F150916_rh_starts = [F150916_rh_starts i];
    end
    if now == 2 && after == 0
        F150916_rh_ends = [F150916_rh_ends i];
    end
end

F150916_lh_size = size(F150916_lh_starts);
F150916_lh_num = F150916_lh_size(2);
F150916_rh_size = size(F150916_rh_starts);
F150916_rh_num = F150916_rh_size(2);

F150916_lh_lists = [];
for i=1:F150916_lh_num
    F150916_h = F150916_butter(F150916_lh_starts(i):F150916_lh_ends(i),1:22);
    F150916_lh_lists = cat(3,F150916_lh_lists,F150916_h(1:200,1:22));
end

F150916_rh_lists = [];
for i=1:F150916_rh_num
    F150916_h = F150916_butter(F150916_rh_starts(i):F150916_rh_ends(i),1:22);
    F150916_rh_lists = cat(3,F150916_rh_lists,F150916_h(1:200,1:22));
end
%% F150917
F150917_shape = size(F150917_butter);
F150917_length = F150917_shape(1,1);
F150917_raw_marker = F150917_raw.marker;
F150917_marker = F150917_raw_marker;

F150917_lh_starts = [];
F150917_lh_ends = [];
F150917_rh_starts = [];
F150917_rh_ends = [];

for i=2:F150917_length-1
    before = F150917_marker(i-1);
    now = F150917_marker(i);
    after = F150917_marker(i+1);
    if before == 0 && now == 1
        F150917_lh_starts = [F150917_lh_starts i];
    end
    if now == 1 && after == 0
        F150917_lh_ends = [F150917_lh_ends i];
    end
    if before == 0 && now == 2
        F150917_rh_starts = [F150917_rh_starts i];
    end
    if now == 2 && after == 0
        F150917_rh_ends = [F150917_rh_ends i];
    end
end
%% F150928
F150928_shape = size(F150928_butter);
F150928_length = F150928_shape(1,1);
F150928_raw_marker = F150928_raw.marker;
F150928_marker = F150928_raw_marker;

F150928_lh_starts = [];
F150928_lh_ends = [];
F150928_rh_starts = [];
F150928_rh_ends = [];

for i=2:F150928_length-1
    before = F150928_marker(i-1);
    now = F150928_marker(i);
    after = F150928_marker(i+1);
    if before == 0 && now == 1
        F150928_lh_starts = [F150928_lh_starts i];
    end
    if now == 1 && after == 0
        F150928_lh_ends = [F150928_lh_ends i];
    end
    if before == 0 && now == 2
        F150928_rh_starts = [F150928_rh_starts i];
    end
    if now == 2 && after == 0
        F150928_rh_ends = [F150928_rh_ends i];
    end
end

F150928_lh_size = size(F150928_lh_starts);
F150928_lh_num = F150928_lh_size(2);
F150928_rh_size = size(F150928_rh_starts);
F150928_rh_num = F150928_rh_size(2);

F150928_lh_lists = [];
for i=1:F150928_lh_num
    F150928_h = F150928_butter(F150928_lh_starts(i):F150928_lh_ends(i),1:22);
    F150928_lh_lists = cat(3,F150928_lh_lists,F150928_h(1:200,1:22));
end

F150928_rh_lists = [];
for i=1:F150928_rh_num
    F150928_h = F150928_butter(F150928_rh_starts(i):F150928_rh_ends(i),1:22);
    F150928_rh_lists = cat(3,F150928_rh_lists,F150928_h(1:200,1:22));
end

F150917_lh_size = size(F150917_lh_starts);
F150917_lh_num = F150917_lh_size(2);
F150917_rh_size = size(F150917_rh_starts);
F150917_rh_num = F150917_rh_size(2);

F150917_lh_lists = [];
for i=1:F150917_lh_num
    F150917_h = F150917_butter(F150917_lh_starts(i):F150917_lh_ends(i),1:22);
    F150917_lh_lists = cat(3,F150917_lh_lists,F150917_h(1:200,1:22));
end

F150917_rh_lists = [];
for i=1:F150917_rh_num
    F150917_h = F150917_butter(F150917_rh_starts(i):F150917_rh_ends(i),1:22);
    F150917_rh_lists = cat(3,F150917_rh_lists,F150917_h(1:200,1:22));
end
%% Saving left and right hand datasets 
A160108_data = A160108_raw.data;
B151019_data = B151019_raw.data;
B151020_data = B151020_raw.data;
B151215_data = B151215_raw.data;
C151126_data = C151126_raw.data;
C151216_data = C151216_raw.data;
C151223_data = C151223_raw.data;
D151125_data = D151125_raw.data;
E151225_data = E151225_raw.data;
E160119_data = E160119_raw.data;
E160122_data = E160122_raw.data;
F150916_data = F150916_raw.data;
F150917_data = F150917_raw.data;
F150928_data = F150928_raw.data;

save('A160108_rh_lists.mat', 'A160108_rh_lists')
save('A160108_lh_lists.mat', 'A160108_lh_lists')

save('B151019_rh_lists.mat', 'B151019_rh_lists')
save('B151019_lh_lists.mat', 'B151019_lh_lists')

save('B151020_rh_lists.mat', 'B151020_rh_lists')
save('B151020_lh_lists.mat', 'B151020_lh_lists')

save('B151215_rh_lists.mat', 'B151215_rh_lists')
save('B151215_lh_lists.mat', 'B151215_lh_lists')

save('C151126_rh_lists.mat', 'C151126_rh_lists')
save('C151126_lh_lists.mat', 'C151126_lh_lists')

save('C151216_rh_lists.mat', 'C151216_rh_lists')
save('C151216_lh_lists.mat', 'C151216_lh_lists')

save('C151223_rh_lists.mat', 'C151223_rh_lists')
save('C151223_lh_lists.mat', 'C151223_lh_lists')

save('D151125_rh_lists.mat', 'D151125_rh_lists')
save('D151125_lh_lists.mat', 'D151125_lh_lists')

save('E151225_rh_lists.mat', 'E151225_rh_lists')
save('E151225_lh_lists.mat', 'E151225_lh_lists')

save('E160119_rh_lists.mat', 'E160119_rh_lists')
save('E160119_lh_lists.mat', 'E160119_lh_lists')

save('E160122_rh_lists.mat', 'E160122_rh_lists')
save('E160122_lh_lists.mat', 'E160122_lh_lists')

save('F150916_rh_lists.mat', 'F150916_rh_lists')
save('F150916_lh_lists.mat', 'F150916_lh_lists')

save('F150917_rh_lists.mat', 'F150917_rh_lists')
save('F150917_lh_lists.mat', 'F150917_lh_lists')

save('F150928_rh_lists.mat', 'F150928_rh_lists')
save('F150928_lh_lists.mat', 'F150928_lh_lists')
