class EventCreator
  attr_accessor :start_date, :duration, :title, :emails, :emails_array #A virer après !!
  def initialize
    puts "Bonjour, bienvenue dans l'interface de création d'évènement."
    puts "Quel est le nom de l'évènement ?"
    print '> '
    @title = gets.chomp

    puts "Quand aura lieu l'évènement ?"
    print '> '
    @start_date = gets.chomp

    puts "Combien de temps va durer l'évènement ? (en minutes)"
    print '> '
    @duration = gets.chomp

    puts "Indiquez les participants (via leurs adresses email séparés par ';')"
    print '> '
    @emails = gets.chomp
    @emails_array = @emails.split(';')

    create_event()
  end

  def create_event()
    Event.new(@date, @duration, @title, @emails_array)
  end

  def confirm_and_show_envent
    puts "L'évènement à bien été crée !"
    #affiche en _s
  end
end