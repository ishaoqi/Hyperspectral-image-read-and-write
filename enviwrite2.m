function enviwrite2(data,info)
    [filename,pathname] = uiputfile('123.img','Save file name');
    dotpath = strfind(filename, '.');
    hdrname = filename(1:dotpath-1);
    hdrname = strcat(hdrname, '.hdr');
    hdrname = strcat(pathname, hdrname);
    imgname = strcat(pathname,filename);
    enviwrite(data,info,imgname,hdrname);
end