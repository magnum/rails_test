class CreateDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :documents do |t|
      t.string :title
      t.text :notes
      t.timestamps
    end

    ["first document", "another document"].each{|t| Document.create! title: t}
  end
end
