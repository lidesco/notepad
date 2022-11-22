class Post

  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
  #  todo
  end

  def to_strings
  #  todo
  end

  def save
    file = File.new(file_path)

    for item in to_trings do
      file.puts(item)
    end

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)

    file_name = @created_at.strftime("#{sekf.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    return current_path + "/" + file_name
  end
end