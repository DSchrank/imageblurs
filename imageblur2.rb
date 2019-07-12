class Image
attr_accessor :image
  def initialize(array)
    @image = array
  end

  def output_image
    @image.each do |row|
      puts row.join
    end
  end

  def blur(dist=1)
    dist.times do
      blur_cords
    end
  end

  def blur_cords
    blurr_cords = []
    @image.each_with_index do |row, i|
      row.each_with_index do |x, row_i|
        blurr_cords << [i, row_i] if x == 1
      end
    end
  blurr_cordss(blurr_cords)
end

def blurr_cordss(blurr_cords)
    blurr_cords.each do |x, y|
      @image[x - 1][y] = 1 if (x - 1) >= 0
      @image[x + 1][y] = 1 if (x + 1) <= @image.length - 1
      @image[x][y - 1] = 1 if (y - 1) >= 0
      @image[x][y + 1] = 1 if (y + 1) <= @image[x].length - 1

    end
  end
end

image = Image.new([
[0, 0, 0, 0],
[0, 1, 0, 0],
[0, 0, 0, 1],
[0, 0, 0, 0]
])

image.blur
image.output_image
