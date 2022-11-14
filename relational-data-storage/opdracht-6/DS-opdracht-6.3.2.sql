select name , REPLACE( REPLACE(REPLACE( REPLACE(REPLACE(REPLACE(REPLACE( REPLACE(REPLACE(REPLACE(
    REPLACE( REPLACE(REPLACE(REPLACE(REPLACE( REPLACE(
        REPLACE(REPLACE(REPLACE( REPLACE(
        REPLACE(
        REPLACE(
        REPLACE(
        REPLACE(name,
        '&ouml;','ö') ,
        '&ocirc;','ô'),
        '&atilde;','ã'),
        '&ograve;','ò') 
        , '&icirc;','î') 
        , '&ntilde;','ñ')
        , '&oacute;','ó')
        , '&aacute;','á')
        , '&auml;','ä')
        ,'&agrave;','à')
        , '&acirc;','â')
        , '&iuml;','ï')
        , '&Ouml;','Ö')
        , '&Egrave;','È')
        , '&euml;','ë') 
        , '&Euml;','Ë'),
        '&Eacute;','É') 
        , '&Uuml;','Ü') 
        , '&nbsp;',' ')
        , '&gt;','>')
        , '&gt;','>')
        , '&gt;','>')
        , '&lt;','<')
        , '&amp;','&') as niceName
        from mhl_suppliers; 



