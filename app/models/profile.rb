# encoding: utf-8
class Profile < ActiveRecord::Base
  belongs_to :user
    
  # before_validation :validar_data_nascimento
  # after_validation :corrigir_erros_data_nascimento
  validates :name, :presence => true, :length => {:minimum => 1, :maximum => 50} 
  
  private
  # def validar_data_nascimento
  #   data_str = self.nascimento_before_type_cast
  #   unless data_str.blank?
  #     if Date.valid?(data_str)
  #       self.nascimento = data_str.to_date
  #     else
  #       errors.add(:nascimento, "Inválida")
  #     end
  #   end  
  # end
  # 
  # def corrigir_erros_data_nascimento
  #   if errors.get(:nascimento) && errors.get(:nascimento).size == 2
  #     errors.get(:nascimento).delete("não pode ficar em branco")
  #   end 
  # end
end
