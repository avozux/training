require 'elasticsearch/model'

module Searchable
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    def self.search(query)
      __elasticsearch__.search(
	      {
	        query: {
	          multi_match: {
	            query: query,
	            fields: ['title^10', 'description', 'body']
	          }
	        },
	        highlight: {
	          pre_tags: ['<em style="background-color:yellow">'],
	          post_tags: ['</em>'],
	          fields: {
	            title: {},
	            description: {},
	            body: {}
	          }
	        }
	      }
	    )
    end
  end
end