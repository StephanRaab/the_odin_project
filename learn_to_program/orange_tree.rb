class OrangeTree

  #height method returns height
  #countTheOranges method returns total number of oranges

  def initialize
    @height = 0
    @age = 0
    @fruit = 0

    puts 'Your tree is born!'
  end

  def oneYearPasses
    #oneyearpasses method, when called ages the tree
    #after x amount of years, tree dies
    @age = @age + 5
    @height = @height + 1
    puts 'Your tree is now ' + @age + ' years old and ' + @height + ' meters tall'

    #first few years it doesn't bear fruit
    #the older it gets the more fruit it produces
    if @age < 2
      @fruit = 0
    else if @age < 10
      @fruit = @fruit + 2
    else if @age < 30
      @fruit = @fruit + 5
    else if @age < 50
      @fruit = @fruit + 10
    else
      @fruit = @fruit + 15
    end

    if @age == 100
      puts "Your tree has died"
    end
  end

  def pickAnOrange
    #pickAnOrange method should reduce the amount of oranges by 1
    #(and tells you how delicious it was, unless empty)
    if @fruit <= 0
      puts 'There are no more oranges to pick this year'
    else
      @fruit = @fruit - 1
      puts 'You grabbed an orange, it was delicious!'
    end
  end

end
