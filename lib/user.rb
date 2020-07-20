class User
  attr_accessor :email, :age
  @@all_users = []

  def initialize(email, age)
    @email = email
    @age = age
    @@all_users << [self, self.email, self.age]
  end

  def self.all
    return @@all_users
  end

  def self.find_by_email(email)
    @@all_users.each_with_index do |value, index|
      return @@all_users[index][0] if value.include? email
    end
    return 'No results'
  end
end