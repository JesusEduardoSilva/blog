json.array!(@sugestaos) do |sugestao|
  json.extract! sugestao, :id, :usuario_id, :produto_id, :descricao
  json.url sugestao_url(sugestao, format: :json)
end
