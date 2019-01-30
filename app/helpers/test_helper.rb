module TestHelper

  def listAll db
    liste = db.exec("SELECT * FROM liste")
    html = String.new

    liste.each do |line|
      html += "<h2> #{line['text']} </h2>"
    end

  end

end
