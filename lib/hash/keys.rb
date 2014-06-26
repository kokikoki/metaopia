class Hash
  # 任意のsyntaxで値を取得
  def syntax_value(keyString, syntax = ".")
    list = keyString.split(syntax)
    result = self
    list.each do |key|
      key = key.is_i? ? key.to_i : key
      result = result[key] || result[key.to_sym]
    end
    result
  end
end