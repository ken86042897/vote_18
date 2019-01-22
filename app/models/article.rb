class Article < ApplicationRecord
	mount_uploader :feature, FeatureUploader
end
