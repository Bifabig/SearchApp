class SearchHistory
  include ActiveModel::Model

  def self.clear
    Query.destroy_all
  end
end
