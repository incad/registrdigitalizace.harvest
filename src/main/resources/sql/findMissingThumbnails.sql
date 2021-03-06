select RDIGOBJEKTL, O.UUID as UUID, D.ID as LIBID from DIGOBJEKT O, LOKACE L, DLISTS D
where L.DIGKNIHOVNA = D."VALUE" and D.CLASSNAME = 'cz.incad.rd.DigKnihovna'
    and RDIGOBJEKTL = O.ID
    and RDIGOBJEKTL not in (select DIGOBJEKTID from THUMBNAILS)
order by RDIGOBJEKTL, LIBID
