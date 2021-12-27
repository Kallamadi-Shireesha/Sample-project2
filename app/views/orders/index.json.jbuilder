json.array! @orders do |order|
    json.id order.id 
    json.user_id    order.user_id
    json.order_status    order.order_status
   
end