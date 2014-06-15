class MemosController < UITableViewController
  def viewDidLoad
    @item = ['a', 'b', 'c']
    BW::HTTP.get('https://qiita.com/api/v1/items') do |response|
      @item = BW::JSON.parse(response.body.to_s)
      self.tableView.reloadData
    end
    self.title = 'メモ一覧'
  end

  def tableView(tv, numberOfRowsInSection:section)
    @item.count
  end

  CELL_ID = 'cell'
  def tableView(tv, cellForRowAtIndexPath:index_path)
    cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELL_ID)
    cell.textLabel.text = @item[index_path.row]['title']
    cell
  end

  def tableView(tv, didSelectRowAtIndexPath:index_path)
    p @item[index_path.row]['body']
  end
end
