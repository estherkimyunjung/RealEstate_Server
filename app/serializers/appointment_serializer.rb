class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date_time, :client, :agent
end
