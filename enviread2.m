function [data,info] = enviread2()
    [filename, pathname] = uigetfile({'*.*'; '*.tif'; '*.bsq';'*.img'},'Read image file');
    dotpath = strfind(filename, '.');
    emp = isempty(dotpath);
    if emp ~= 0
        hdrname = filename;
    else
        dot2 = dotpath(end);
        hdrname = filename(1:dot2-1);
    end
    hdrname1 = strcat(hdrname, '.hdr');
    hdrfullname = strcat(pathname, hdrname1);
    sgc_exist = exist(hdrfullname, 'file');
    if sgc_exist == 0
        disp('The header file is not exist');
        return;
    else
        imgname = strcat(pathname, filename);
        hdrname1 = hdrfullname;
    end
    [data,info] = enviread(imgname,hdrname1);
end