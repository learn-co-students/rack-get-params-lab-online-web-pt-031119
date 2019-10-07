class Application


   @@items = ["Apples","Carrots","Pears"]	  


   def call(env)	
    resp = Rack::Response.new	    e

    if req.path.match(/items/)	   
      @@items.each do |item|	      
        resp.write "#{item}\n"	        

     elsif req.path.match(/cart/)
      if @@cart.empty?
        resp.write "Your cart is empty"
      else
        @@cart.each do |item|
        resp.write "#{item}\n"
      end	  
    end
    if @@items.include?(add_item)
      @@cart << add_item
      resp.write "added #{add_item}"
    else
      resp.write "We don't have that item"
    end

     elsif req.path.match(/search/)	    
      search_term = req.params["q"]	     
      resp.write handle_search(search_term)	    
    else	     
      resp.write "Path Not Found"	      
    end	  


     resp.finish	   