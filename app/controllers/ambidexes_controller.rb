require 'securerandom'

class AmbidexesController < ApplicationController
  def index
    key = SecureRandom.hex(9)
    ambidex = Ambidex.create(key: key)

    # 9 Hours, 9 Persons, 9 Doors START
    nonary = Game.create(name: "9 Hours, 9 Persons, 9 Doors", ambidex: ambidex)

    Character.create(name: "Ace", trust: 50, action: 2, game: nonary)
    Character.create(name: "Snake", trust: 50, action: 2, game: nonary)
    Character.create(name: "Santa", trust: 50, action: 2, game: nonary)
    Character.create(name: "Clover", trust: 50, action: 2, game: nonary)
    Character.create(name: "Junpei", trust: 50, action: 2, game: nonary)
    Character.create(name: "June", trust: 50, action: 2, game: nonary)
    Character.create(name: "Seven", trust: 50, action: 2, game: nonary)
    Character.create(name: "Lotus", trust: 50, action: 2, game: nonary)
    Character.create(name: "Ninth Man", trust: 50, action: 2, game: nonary)
    # END

    # Virtue's Last Reward START
    virtue = Game.create(name: "Virtue's Last Reward", ambidex: ambidex)

    Character.create(name: "Sigma", trust: 50, action: 2, game: virtue)
    Character.create(name: "Phi", trust: 50, action: 2, game: virtue)
    Character.create(name: "Luna", trust: 50, action: 2, game: virtue)
    Character.create(name: "Clover", trust: 50, action: 2, game: virtue)
    Character.create(name: "Alice", trust: 50, action: 2, game: virtue)
    Character.create(name: "Dio", trust: 50, action: 2, game: virtue)
    Character.create(name: "Tenmyouji", trust: 50, action: 2, game: virtue)
    Character.create(name: "Quark", trust: 50, action: 2, game: virtue)
    Character.create(name: "K", trust: 50, action: 2, game: virtue)
    # END

    # Zero Time Dilemma START
    zero_time = Game.create(name: "Zero Time Dilemma", ambidex: ambidex)

    Character.create(name: "Carlos", trust: 50, action: 2, game: zero_time)
    Character.create(name: "Akane", trust: 50, action: 2, game: zero_time)
    Character.create(name: "Junpei", trust: 50, action: 2, game: zero_time)
    Character.create(name: "Q", trust: 50, action: 2, game: zero_time)
    Character.create(name: "Eric", trust: 50, action: 2, game: zero_time)
    Character.create(name: "Mira", trust: 50, action: 2, game: zero_time)
    Character.create(name: "Diana", trust: 50, action: 2, game: zero_time)
    Character.create(name: "Sigma", trust: 50, action: 2, game: zero_time)
    Character.create(name: "Phi", trust: 50, action: 2, game: zero_time)
    # END

    render json: {
      ambidex: serialized_data(ambidex, AmbidexSerializer)
    }
  end

  def show
    ambidex = Ambidex.find_by(key: params["id"])
    render json: {
      ambidex: serialized_data(ambidex, AmbidexSerializer)
    }
  end

  def serialized_data(data, serializer)
   ActiveModelSerializers::SerializableResource.new(data, serializer: serializer)
  end

end
