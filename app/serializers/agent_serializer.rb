class AgentSerializer < ActiveModel::Serializer
  attributes :id, :license, :user, :company
end
