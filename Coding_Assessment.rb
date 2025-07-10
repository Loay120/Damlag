#****************************************BEGINNING OF STACK CLASS***********************************************

class Stack
 
 #****************************************INTINTIALIZE METHOD***************************************************

  def initialize
    @stack1 = []
    @maxstack = []
  end

  #***********************************************PUSH METHOD*************************************************************

  def push(value)
    if value.is_a?(Integer) && value >= 0
      @stack1.push(value)
      if @maxstack.empty? || value >= @maxstack.last
        @maxstack.push(value)
      end
    else                                              
      puts "Only unsigned integers are allowed"
    end
  end

#****************************************************POP METHOD**********************************************************

  def pop
    if @stack1.empty?
      puts "Stack is empty"
      nil
    else
      value = @stack1.pop
      @maxstack.pop if value == @maxstack.last
      puts "#{value} popped"
      return value
    end
  end

#****************************************************MAX METHOD****************************************************************

  def max
    if @stack1.empty?
      puts "The stack is empty"
      nil
    else
      value = @maxstack.last
      puts value
      return value
    end
  end


end 

#***********************************************END OF STACK CLASS*********************************************

#***********************************************BEGINNING OF EXTRA CLASS***************************************

class Extra < Stack 

  def initialize
    super
    @sum = 0
    @count = 0
  end

  def push(value)
    if value.is_a?(Integer) && value >= 0
      super
      @sum += value
      @count += 1
    else
      puts "Only unsigned integers are allowed"
    end
  end

  def pop
    value = super  
    if value 
      @sum -= value
      @count -= 1
    end
    return value
  end

  def mean
    if @count == 0
      puts "Stack is empty,Cannot divide by zeroooo!!!!"
      nil
    else
      meanvalue = @sum.to_f / @count #Here i used the float conversion to make sure from the division over count**
      puts "Mean is: #{meanvalue}"
      return meanvalue
    end
  end

end 

#*****************************************END OF EXTRA CLASS*****************************************************


#******************************************TESTING MY CLASSES*******************************************************************

s = Extra.new
s.push(100)
s.push(200)
s.push(300)
s.mean     
s.pop      
s.mean     
s.max      



#********************************************END OF MY CODE******************************************************************

