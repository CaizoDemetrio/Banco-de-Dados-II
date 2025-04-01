--  Calcular o valor total de todos os pedidos
use loja;

select SUM(quantidade * preco)
from pedidos
join produtos on produtos.id = pedidos.produto_id;

--  Listar todos os pedidos e seus produtos, 
-- incluindo pedidos sem produtos
 
 select *
 from pedidos as pe
 join produtos as pr ON pe.produto_id = pr.id
 order by nome desc