class AddVersioning < ActiveRecord::Migration
  def self.up
    add_column :products, :button_version, :string
    add_column :products, :app_version, :string
  end

  def self.down
    remove_column :products, :button_version
    remove_column :products, :app_version
  end
end
