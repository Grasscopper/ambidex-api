class CharactersController < ApplicationController
  def serialized_data(data, serializer)
   ActiveModelSerializers::SerializableResource.new(data, serializer: serializer)
  end

end
