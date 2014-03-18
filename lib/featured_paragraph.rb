class FeaturedParagraph

  def initialize(file)
    @file = File.read(file)
  end

  def load
    @file
  end

end