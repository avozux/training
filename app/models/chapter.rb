class Chapter < ApplicationRecord
	has_many :comments, dependent: :destroy
	has_many :views, as: :viewable

	belongs_to :lesson, counter_cache: true

	# Upload attachment
	has_attached_file :thumbnail, {
		:default_url => ":attachment/null",
		s3_permissions: :private,
    :path => "/:class/:attachment/:filename"
	}
	do_not_validate_attachment_file_type :thumbnail

	has_attached_file :video, {
		:default_url => ":attachment/null",
		s3_permissions: :private,
    :path => "/:class/:attachment/:filename"
	}
  do_not_validate_attachment_file_type :video


  # Prefer Next, Previous Chapter
	def next
	  Chapter.where("id > ?", id).where(:lesson => lesson).order(id: :asc).limit(1).first
	end
	def prev
	  Chapter.where("id < ?", id).where(:lesson => lesson).order(id: :desc).limit(1).first
	end

	# Search Chapter
	include Searchable
end

# Delete the previous Chapter index in Elasticsearch
Chapter.__elasticsearch__.client.indices.delete index: Chapter.index_name rescue nil

# Create the Chapter index with the new mapping
Chapter.__elasticsearch__.client.indices.create \
  index: Chapter.index_name,
  body: { settings: Chapter.settings.to_hash, mappings: Chapter.mappings.to_hash }

# Index all Chapters records from the DB to Elasticsearch
Chapter.import