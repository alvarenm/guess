class Node
  attr_accessor :question, :yes, :no, :parent, :parent_node, :yes_node,
  :is_head
  
  def initialize(parent)
    self.parent = parent unless parent == 'nil'
    self.is_head = true
  end
  
  def get_parent
    self.parent
  end

  def quest()
    p question
    @response = gets.chomp
    @response = @response == 's' ? true : false
    if(@response)
      self.yes.quest
    else
      self.no.quest
    end
  end

  def get_question(parent)
    self.question 
  end
  
  def set_question(question)
    self.question = question
  end

  def get_yes
    self.yes
  end

  def set_yes(yes)
    (self.yes = yes).set_parent_node(self, true)
  end

  def get_no
    self.no
  end

  def set_no(no)
    (self.no = no).set_parent_node(self, false)
  end

  def set_parent_node(parent_node, is_yes_node)
    self.parent_node = parent_node
    self.yes_node = is_yes_node
  end

  def get_parent_node
    self.parent_node
  end

  def is_yes?
    self.yes_node
  end
end
