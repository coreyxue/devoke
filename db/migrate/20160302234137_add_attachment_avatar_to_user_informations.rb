class AddAttachmentAvatarToUserInformations < ActiveRecord::Migration
  def self.up
    change_table :user_informations do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :user_informations, :avatar
  end
end
