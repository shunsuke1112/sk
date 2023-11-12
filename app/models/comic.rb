class Comic < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user #一つのtweetsから見ると、必ず一人のusersのみにしか関連づいていない。
end
