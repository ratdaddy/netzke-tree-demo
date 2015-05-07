class Truffulas < Netzke::Basepack::Tree
  def configure config
    super
    config.model = 'Truffula'
    config.columns = [
      {name: :title, xtype: :treecolumn}
    ]
  end
end
