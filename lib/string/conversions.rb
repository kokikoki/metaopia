class String
  # Integerに変換可能かどうか
  def is_i?
    begin
      Integer(self)
    rescue
      return false
    end

    true
  end
end