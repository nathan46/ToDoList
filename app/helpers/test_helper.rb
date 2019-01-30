require 'pg'

module TestHelper

  def listAll
    db = PG::Connection.new('ec2-23-21-171-25.compute-1.amazonaws.com','5432',nil,nil,'d7snv8turfs4ff','ohyxckuotpgwbl','ab939bfbfdd30e5a78e55a3250ee2dc07bc3c5aa05362939b1300c31a0be206a')
    liste = db.exec("SELECT * FROM liste")
    html = String.new

    liste.each do |line|
      html += "<h2> #{line['text']} </h2>"
    end
    html.html_safe

  end

end
