SELECT 

	packing.pl_number,
	item.item_id, 
    inventory.item_name,
    inventory.public_sale_price, 
    item.item_qty, 
    (inventory.public_sale_price * item.item_qty) AS total_amount
    
FROM kpa_packing_list_items AS item

INNER JOIN kpadb_inventories AS inventory

ON item.item_id = inventory.Id

INNER JOIN kpa_packing_list_details AS packing

ON item.pl_id = packing.Id

WHERE item.pl_id = 1716;