# encoding: utf-8 
class Provider < ActiveRecord::Base
	validates_presence_of :product_id, :message => "El producto se debe seleccionar"
	validates_presence_of :quantidade,  :message => "La cantidad debe ser llenado"
	validates_presence_of :price,  :message => "El precio debe ser llenado"

	belongs_to :product
end
