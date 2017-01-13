Shoes.app :width => 350, :height => 190, :title => "Dice Roller" do

  @img1 = nil
  @img2 = nil

  flow() do
    style(:margin_left => '15%', margin_top => '25%')
    @img1 = image "one.png"
    @img2 = image "two.png"

  end

  flow() do
    style(:margin_left => '43%', margin_top => '25%')
    button "Roll!" do

      num1 = rand(6)

      num2 = rand(6)

    case num1
    when 0
        @img1.path = "one.png"
      when 1
        @img1.path = "two.png"
      when 2
        @img1.path = "three.png"
      when 3
        @img1.path = "four.png"
      when 4
        @img1.path = "five.png"
      when 5
        @img1.path = "six.png"
      end

      case num2
      when 0
          @img2.path = "one.png"
        when 1
          @img2.path = "two.png"
        when 2
          @img2.path = "three.png"
        when 3
          @img2.path = "four.png"
        when 4
           @img2.path = "five.png"
        when 5
          @img2.path = "six.png"
        end


        num1 == num2 ? alert("you rolled the same numbers") : alert("you rolled #{num1 + 1} and #{num2 + 1}")

    end

  end

end
