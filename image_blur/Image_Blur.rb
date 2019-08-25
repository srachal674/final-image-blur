class Image
  attr_accessor :image

  def initialize(image)
    @image = image
  end

  def output_image
    @image.each do |a|
      puts a.join("")
    end
  end 

  def blur
    #puts "Blur starts"
    blur = []
    last_row_number = @image.length() -1
    new_image = @image.clone

    @image.each_with_index do |row, row_number|
      #puts "#{row_number} #{row}"
    
      row.each_with_index do |cell, cell_number|
        if cell == 0
          #puts "Skipping 0"
          next
        else
          #If it's a 1 then check the top, bottom, left, and right cells. If they are 0 change them to a 1.
          top = row_number > 0 ? @image[row_number - 1][cell_number] : false
          bottom = row_number < last_row_number ? @image[row_number + 1][cell_number] : false
          left = row[cell_number - 1]
          right = row[cell_number + 1]
          
          #puts "T:#{top}, B:#{bottom}, L:#{left}, R:#{right}"

            if top == 0 
              #puts "***"
              new_image[row_number - 1][cell_number] = 1
            end

            if bottom == 0
              #puts "&&&"
              new_image[row_number + 1][cell_number] = 1
            end

            if left == 0
              #puts "%%%"
              new_image[row_number][cell_number - 1] = 1
            end

            if right == 0
              #puts "!!!"
              new_image[row_number][cell_number + 1] = 1
            end
        end
      end
     Image.new(new_image).output_image
    end
  end
end
#row1 = [0,1,0,1,0]
#row2 = [1,0,1,0,1]
#row3 = [0,1,0,1,0]
#row4 = [1,0,1,0,1]

row1 = [0,0,0,0,0]
row2 = [0,0,1,0,0]
row3 = [0,1,0,1,0]
row4 = [0,0,0,0,0]


image = Image.new(
  [row1, row2, row3, row4]
)

image.output_image
image.blur
 