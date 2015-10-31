json.array!(@avaliacaos) do |avaliacao|
  json.extract! avaliacao, :id, :usuario_id, :produto_id, :nota
  json.url avaliacao_url(avaliacao, format: :json)
end
