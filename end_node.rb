class EndNode < Node
  require_relative "node"
  attr_accessor :food

  def initialize(parent)
    super
  end
  def quest()
    p 'a comida que vc pensou é' + food + '? (digite s para sim e n para nao)'
    @response = gets.chomp
    @response = @response == 's' ? true : false
    if(@response)
      puts acertei!
    else
      @new_node = Node.new(self.get_parent)
      p "Digite qual prato voce pensou"
      @prato = gets.chomp
      @question = 'O prato que você pensou é' + @prato + '?'
      @new_end_node = EndNode.new(self.get_parent)
      @new_end_node.set_food(@prato)
      if self.yes_node
        self.get_parent_node.set_yes(@new_node)
      else
        self.get_parent.set_no(@new_node)
      end
      @new_node.set_question(@question)
      @new_node.set_yes(@new_end_node)
      @new_node.set_no(self)
      Game.start
    end
  end
  
    def get_food
      self.food
  end

  def set_food(food)
      self.food = food
  end
end