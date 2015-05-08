class Truffulas < Netzke::Basepack::Tree
  def configure config
    super
    config.model = 'Truffula'
    config.columns = [
      {name: :title, xtype: :treecolumn},
      :count,
    ]
    config.root_visible = false
  end

  def get_records params
    Truffula.children_for_id(params[:id])
  end
end
