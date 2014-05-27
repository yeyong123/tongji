ActiveAdmin.register Advisory do
	config.batch_actions = false
	filter :created_at, label: "按创建时间"
	filter :updated_at, label: "按修改时间"
	filter :province, label: "地区"
	filter :clue, label: "机会类型"
	filter :kind, label: "线索来源"
	filter :product, label: "产品类别"
	filter :user, label: "录入人"
	filter :sap, label: "入库", as: :check_boxes
	filter :mobel_phone, label: "手机"
	index do
		selectable_column
		column "时间", sortable: 'time' do |advi|
			advi.time
		end
		column "公司名称" do |advi|
			advi.company
		end
		column "电话" do |advi|
			advi.telphone
		end
		column "传真" do |advi|
			advi.fax
		end
		column "手机" do |advi|
			advi.mobel_phone
		end
		column "地区" do |advi|
			advi.province.name
		end
		column "联系人" do |advi|
			advi.name
		end
		column "机会类型" do |advi|
			advi.clue.name
		end
		column "线索来源" do |advi|
			advi.kind.name
		end
		column "产品类别" do |advi|
			advi.product.name
		end
		column "录入人" do |advi|
			advi.user.name
		end
		column "是否入库" do |advi|
			render partial: 'advisories/sap', locals: {advi: advi}
		end
	end

end
