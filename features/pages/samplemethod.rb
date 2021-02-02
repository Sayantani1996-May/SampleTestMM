require 'watir-page-helper'
require 'rspec/expectations'
require 'nokogiri'

class SampleWebpage
	include PageObject

#Pageobjects
	textfield(:label_1, id:'lbl_val_1')
	textfield(:label_2, id:'lbl_val_2')
	textfield(:label_3, id:'lbl_val_3')
	textfield(:label_4, id:'lbl_val_4')
	textfield(:lable_5, id:'lbl_val_5')
	textfield(:value_1, id:'txt_val_1')
	textfield(:value_2, id:'txt_val_2')
	textfield(:value_3, id:'txt_val_4')
	textfield(:value_4, id:'txt_val_5')
	textfield(:value_5, id:'txt_val_6')
	textfield(:label_total, id:'lbl__ttl_val')
	textfield(:value_total, id:'lbl_ttl_val')


    def count_values(value)	
	page = Nokogiri::HTML response.body
	count = 0
	page.xpath("//*[contains(text(),'Value ')]).each do |element|
	count += 1
	end
	if count==value
		p "All values are present"
	else
		p "some values are missing"
	end
   end

    def greater_than_zero
	if (value_1_text>0) && (value_2_text>0) && (value_3_text>0) && (value_4_text>0)   && (value_5_text>0) 
	&& (value_total>0)
		p "All values are greater than Zero"
	else
		p "Some values are not greater than Zero"
	end	
    end

    def calculate_total_value
	totalcount=value_1_text+value_2_text+value_3_text+value_4_text+value_5_text
	if (value_total_text == totalcount)
		p "Total value equals to sum of the listed value "
	else
		p "Total value not equals to sum of the listed value "
	end	
    end

    def currency_check
	if (value_1_text.include? "$") && (value_2_text.include? "$") && (value_3_text.include? "$") && 
	(value_4_text.include? "$")   && (value_5__text.include? "$")  && (value_total_text.include? "$")
		p "All values are in the currency format "
	else
		p "some values are not in the currency format"
	end	
    end
end
     