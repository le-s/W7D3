json.set! :pokemon do 
  json.extract! @pokemon, :id, :name, :attack, :defense, :moves, :poke_type,  :item_ids, :image_url
end

json.set! :items do 
  @pokemon.items.each do |item|
    json.set! item.id do 
      json.extract! item, :id, :name, :pokemon_id, :price, :happiness, :image_url
    end
  end
end