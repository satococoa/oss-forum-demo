class MemosController < UITableViewController
  def viewDidLoad
    @item = ['a', 'b', 'c']
    self.title = 'メモ一覧'
  end

  def tableView(tv, numberOfRowsInSection:section)
    @item.count
  end

  CELL_ID = 'cell'
  def tableView(tv, cellForRowAtIndexPath:index_path)
    cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELL_ID)
    cell.textLabel.text = @item[index_path.row]
    cell
  end

  def tableView(tv, didSelectRowAtIndexPath:index_path)
    p @item[index_path.row]
  end
end
