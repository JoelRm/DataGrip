select 'PVOL-' || rv.RANGO1  || '@' || round((rv.PRECIO - rv.PRECIO1) * 100 / rv.PRECIO, 2) nombre_promo, rv.DESCRIPCION, rv.INICIO, rv.FIN, rv.SKU, rv.RANGO1, --(rv.PRECIO - rv.PRECIO1) * 100 / rv.PRECIO,
       round((rv.PRECIO - rv.PRECIO1) * 100 / rv.PRECIO, 2) porcentaje_dscto
    --,rv.PRECIO, rv.PRECIO1, p.DES_EST
from EDSR.HPRANGOPRECIO rv inner join EDSR.tpprdmst p on rv.PRD_LVL_CHILD = p.PRD_LVL_CHILD
where rv.SUCURSAL = 517 and p.DES_EST <> 'Excluido';
