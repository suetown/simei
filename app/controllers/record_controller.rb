# -*- encoding: utf-8 -*-

class RecordController < ApplicationController
  def ph1
    # 登録番号と名前で検索
    # @pcorps = Pcorp.find(:all, :conditions => ['reno LIKE ?', 'cname LIKE ?', '%'+params[:reno]+'%', '%'+params[:cname])+'%'])
    @pcorps = Pcorp.where('reno like ? AND cname like ?', '%'+params[:reno].tr('０-９','0-9')+'%', '%'+params[:cname]+'%').order('reno ASC')
    # @pcorps = Pcorp.name
    # respond_to do |format|
    #  format.html # index.html.reb
    #  format.xml{ render :xml => @pcorps}
    # end
    render 'pcorps/index'
  end

  def ph2
    # 希望職種で検索
    @pcorps = Pcorp.where('wbu = ? OR wco = ? OR wgs = ?', params[:wbu], params[:wco], params[:wgs]).order('reno ASC')
    render 'pcorps/index'
  end
end
