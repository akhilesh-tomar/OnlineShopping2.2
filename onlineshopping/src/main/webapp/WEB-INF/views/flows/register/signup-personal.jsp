<%@include file="../shared/flows-header.jsp"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>			
	<div class="container">
		
		
		<div class="row">
			
			<div class="col-md-6 col-md-offset-3">
				
				<div class="panel panel-primary">
				
					<div class="panel-heading">
						<h4>Sign Up - Personal</h4>
					</div>
					
					<div class="panel-body">
										
						<sf:form
							method="POST"
							modelAttribute="user"
							class="form-horizontal"
							id="registerForm"
						>
					
						<!-- Values in path attribute matched to the fields in user  model . we need to pass these values to user as well so for
that we need to specify something in flow.xml file  -->
						<!--First Name  -->
					
					
						<div class="form-group">
								<label class="control-label col-md-4">First Name</label>
								<div class="col-md-8">
									<sf:input type="text" path="firstName" class="form-control"
										placeholder="First Name" />
									<sf:errors path="firstName" cssClass="help-block" element="em"/> 
								</div>
							</div>
					
					
						<!-- Last Name -->

						<div class="form-group">

							<label class="control-label col-md-4" for="name">Last
								Name</label>
							<div class="col-md-8">

								<sf:input type="text" path="lastName" placeholder="last Name"
									class="form-control" />


							</div>



						</div>



					
						<div class="form-group">

							<label class="control-label col-md-4" for="name">Contact
								Number</label>
							<div class="col-md-8">

								<sf:input type="text" path="contactNumber"
									placeholder="XXXXXXXXXX" maxlength="10" class="form-control" />


							</div>



						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="name">Email</label>
							<div class="col-md-8">

								<sf:input type="text" path="email" placeholder="Enter EmailId"
									class="form-control" />


							</div>



						</div>


						<div class="form-group">

							<label class="control-label col-md-4" for="name">Password</label>
							<div class="col-md-8">

								<sf:input type="password" path="password" placeholder="password"
									class="form-control" />


							</div>



						</div>


						<!-- radio button using bootstrap class of radio-inline  -->

						<div class="form-group">

							<label class="control-label col-md-4">Select role</label>
							<div class="col-md-8">
								<label class="radio-inline"> <sf:radiobutton path="role"
										checked="checked" value="USER" />User
								</label> 
								<label class="radio-inline"> <sf:radiobutton
										path="role" value="SUPPLIER" />Supplier
								</label>


							</div>



						</div>


						<!-- On submit it is triggering billing eventon signup personal view state so we need to add a transition for this particular event which is billing inside view state of 
signup-personel (see flow.xml file ) -->
						<div class="form-group">

							<div class="col-md-offset-4 col-md-8">
								<button type="submit" class="btn btn-primary"
									name=_eventId_billing>
									Next-billing <span class="glyphicon glyphicon-chevron-right"></span>
								</button>
							</div>



						</div>




					</sf:form>


				</div>

			</div>

		</div>

	</div>
</div>

<%@include file="../shared/flows-footer.jsp"%>


