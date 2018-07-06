class Item
  @@list = []
  @@deflist = []
  attr_reader :id
  attr_reader :defid
  attr_accessor :name
  attr_accessor :definition


  def initialize(name)
    @name = name
    @definition = definition
    @id = @@list.length + 1
    @defid = @@deflist.length + 1
  end

  def self.clear()
    @@list = []
    # @@deflist = []
  end

  def self.all()
    @@list
    # @@deflist
  end

  def save()
    @@list.push(self)
    # @@deflist.push(self)
  end

  def self.find(id)
    item_id = id.to_i()
    @@list.each do |item|
      if item.id == item_id
        return item
      end
    end
  end


    def self.deffind(defid)
      item_defid = defid.to_i()
      @@deflist.each do |item|
        if item.defid == item_defid
          return item
        end
      end
    end

end
