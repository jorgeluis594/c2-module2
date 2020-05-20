# TODO: complete this class

class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection
    @item_count = @collection.size
    @items_pages = items_per_page
    @page_count = (@collection.size/@items_pages).ceil
  end

  # returns the number of items within the entire collection
  def item_count
    @item_count
  end

  # returns the number of pages
  def page_count
    @page_count
  end

  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    if page_index<page_count && page_index>=0
      if page_index==page_count
      item_count%@items_pages
      else
        @items_pages
      end
    else
      -1
    end
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    if item_index<=item_count && item_index>=0
      (item_index/page_count).ceil
    else
      -1
    end
  end
end