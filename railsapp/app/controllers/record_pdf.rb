require 'open-uri'

class  RecordPdf < Prawn::Document 

  # Pass data such as model to record 
  def initialize(record) 
  
    # Specify initial settings with super (page size, margin, etc.) 
    super(page_size: 'A4',top_margin: 40,bottom_margin: 30,left_margin: 20,right_margin: 20) 
  
    # @record  =  record  # Receive the instance. The data in the record can be used when creating components, etc. 
    # text @record
    # logger.debug("-------------------a")
    stroke_axis
    header
    move_down 50
    contents
    images
    # text "heuihw---------uhuwi"
  end 

  def header
    text 'PDF', size: 50
    move_down 20
    text 'world', size: 14
  end

  def contents
    text 'english'
    move_down 10
    text 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
          Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
          Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
          Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          Prawn is a pure Ruby PDF generation library that provides a lot of great functionality while trying to remain simple and reasonably performant. Here are some of the important features we provide:
          Vector drawing support, including lines, polygons, curves, ellipses, etc.
          Extensive text rendering support, including flowing text and limited inline formatting options.
          Support for both PDF builtin fonts as well as embedded TrueType fonts
          A variety of low level tools for basic layout needs, including a simple grid system
          PNG and JPG image embedding, with flexible scaling options

          '
          
  end

  def images
    text 'images'
    move_down 10
    # pigs = "#{Prawn::BASEDIR}/data/images/pigs.jpg" 
    pigs = "/Users/lmuser/Desktop/english_cafe.png"
    image open("/Users/lmuser/Desktop/english_cafe.png"),:width => 450
  end
  
  end