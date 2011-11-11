class CreatePcorps < ActiveRecord::Migration
  def self.up
    create_table :pcorps do |t|
      t.integer :reno
      t.string :cnamek
      t.string :cname
      t.string :posi
      t.string :repk
      t.string :rep
      t.date :bd
      t.string :ad
      t.string :tel
      t.string :fax
      t.string :eml
      t.integer :cap
      t.integer :cy
      t.integer :emp
      t.date :acc
      t.boolean :md
      t.boolean :wbu
      t.boolean :wco
      t.boolean :wgs
      t.boolean :io
      t.boolean :ban
      t.text :note
      t.integer :bno

      t.timestamps
    end
  end

  def self.down
    drop_table :pcorps
  end
end
