<%@page import="java.util.ArrayList"%>
<%@page import="org.school.service.StaticService"%>
<%@page import="org.school.model.Page"%>
<%@page import="java.util.List"%>

<nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <a class="navbar-brand text-white" href="#">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    
    <ul class="navbar-nav mr-auto">
    
     <%
     	List<Page> listPage = StaticService.findByParentId(request, 0);
     	
     	List<Page> listChildPage = new ArrayList<>(); 
     	if(listPage!=null){
     		
     		for(Page parentPage : listPage){
     			
     			listChildPage = StaticService.findByParentId(request, parentPage.getPageId());
     			
     			if(listChildPage==null || listChildPage.isEmpty()){
     				%>
     					<li class="nav-item">
					        <a class="nav-link text-white" href="<%= parentPage.getUrl() %>"><%= parentPage.getPageName() %></a>
					    </li>
     				<%
     			}
     			else{
     				%>
     					<li class="nav-item dropdown">
					        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					        	<%= parentPage.getPageName() %>
					        </a>
				        
				        	<div class="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
		     				<%
			     				for(Page childPage : listChildPage){
			     					%>
			         					<a class="dropdown-item text-light bg-dark" href="<%= childPage.getUrl() %>"><%= childPage.getPageName() %></a>
			         				<%
			     				}
		     				%>
     						</div>
     					</li>
     				<%
     			}
     		}
     	}
     	else{
     		
     	}
     %>
            
    </ul>
    
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    
  </div>
</nav>

