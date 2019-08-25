module Guitars 
    class GuitarsAPI < Grape::API   
     
      format :json   
     
      desc "Guitar List", {   
        #   :notes => <<-NOTE   
        #   Get All Guitars  
        #    __________________   
        #   NOTE   
      }   
     
      get do   
        Guitar.all   
      end   
     
     
      desc "Guitar By Id", {   
        #   :notes => <<-NOTE   
        #   Get Guitar By Id   
        #    __________________   
        #   NOTE   
      }   
     
      params do   
        requires :id, type: Integer, desc: "Guitar id"   
      end   
     
      get ':id' do   
        begin   
          guitar = Guitar.find(params[:id])   
        rescue ActiveRecord::RecordNotFound   
          error!({ status: :not_found }, 404)   
        end   
      end   
     
      desc "Delete Guitar By Id", {   
        #   :notes => <<-NOTE   
        #   Delete Guitar By Id   
        #    __________________   
        #   NOTE   
      }   
     
      params do   
        requires :id, type: Integer, desc: "Guitar id"   
      end   
     
      delete ':id' do   
        begin   
          guitar = Guitar.find(params[:id])   
          { status: :success } if guitar.delete   
        rescue ActiveRecord::RecordNotFound   
          error!({ status: :error, message: :not_found }, 404)   
        end   
      end   
     
      desc "Update Guitar By Id", {   
        #   :notes => <<-NOTE   
        #   Update Guitar By Id   
        #                   __________________   
        #   NOTE   
      }   
     
      params do   
        requires :id, type: Integer, desc: "Guitar id"   
        requires :g_type, type: String, desc: "Guitar type"   
        requires :brand_name, type: String, desc: "Guitar brand_name"   
        requires :no_of_strings, type: Integer, desc: "Guitar no_of_strings"   
        requires :price, type: Integer, desc: "Guitar price"   
        requires :bought_date, type: String, desc: "Guitar bought_date"   
      end   
     
      put ':id' do   
        begin   
          guitar = Guitar.find(params[:id])   
          if guitar.update({   
                                g_type: params[:g_type],   
                                brand_name: params[:brand_name],   
                                no_of_strings: params[:no_of_strings],   
                                price: params[:price], 
                                bought_date: params[:bought_date],  
                                  
                            })   
            { status: :success }   
          else   
            error!({ status: :error, message: guitar.errors.full_messages.first }) if guitar.errors.any?   
          end   
     
     
        rescue ActiveRecord::RecordNotFound   
          error!({ status: :error, message: :not_found }, 404)   
        end   
      end   
     
     
      desc "Create Guitar", {   
        #   :notes => <<-NOTE   
        #   Create Guitar   
        #    __________________   
        #   NOTE   
      }   
     
      params do   
        requires :g_type, type: String, desc: "Guitar type"   
        requires :brand_name, type: String, desc: "Guitar brand_name"   
        requires :no_of_strings, type: Integer, desc: "Guitar no_of_strings"   
        requires :price, type: Integer, desc: "Guitar price"  
        requires :bought_date, type: String, desc:"Guitar bought_date" 
        
      end   
     
      post do   
        begin   
          guitar =  Guitar.create({   
                g_type: params[:g_type],   
                brand_name: params[:brand_name],   
                no_of_strings: params[:no_of_strings],   
                price: params[:price],
                bought_date: params[:bought_date],   
                                          
            })   
          if guitar.save   
            { status: :success }   
          else   
            error!({ status: :error, message: guitar.errors.full_messages.first }) if guitar.errors.any?   
          end   
     
     
        rescue ActiveRecord::RecordNotFound   
          error!({ status: :error, message: :not_found }, 404)   
        end   
      end   
    end   
  end