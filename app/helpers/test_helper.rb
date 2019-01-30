module TestHelper

  def listAll db
    liste = db.exec("SELECT * FROM liste")
    html = String.new

    liste.each do |line|
      html += "#{line['text']}        "
    end

  end

end
