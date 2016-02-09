function getImages(binaryFile)
    load(binaryFile);
    sz = size(data); % 50000 X 3072
    filenames = char(filenames);
    for i = 1 : sz(1)
        tmp = reshape(data(i, :), 32, 32, 3);
        for j = 1 : 3
            tmp(:, :, j) = tmp(:, :, j)';
        end
        imwrite(tmp, strtrim(filenames(i, :)));
        txt{i} = [strtrim(filenames(i, :)), ' ', int2str(fine_labels(i))];
    end
    filename = [binaryFile, '.txt'];
    fid = fopen(filename, 'wt');
    fprintf(fid, '%s\n', filenames{:});
end