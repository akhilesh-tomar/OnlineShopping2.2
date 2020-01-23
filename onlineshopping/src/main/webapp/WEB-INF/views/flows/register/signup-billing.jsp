<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@include file="../shared/flows-header.jsp"%>

<div class="container">

	<div class="row">
		<div class="col-md-offset-2 col-md-8">

			<div class="panel panel-primary">

				<div class="panel-heading">

					<h4>Sign Up - Billing</h4>

				</div>

				<div class="panel-body">
					<!-- Form elements -->
					<!-- values in model attribute show be same as in value inside the view state of view billing.jsp page in flow.xml file  -->
					<sf:form class="form-horizontal" class="form-horizontal"
						method="POST" id="registerForm" modelAttribute="billing">
						<!-- Values in path attribute matched to the fields in user  model . we need to pass these values to user as well so for
that we need to specify something in flow.xml file  -->
						<!--First Name  -->
						<div class="form-group">

							<label class="control-label col-md-4" for="addressLineOne">Address Line One</label>
							<div class="col-md-8">

								<sf:input type="text" path="addressLineOne" placeholder="Address Line One"
									class="form-control" />


							</div>



						</div>

						<!-- Last Name -->

						<div class="form-group">

							<label class="control-label col-md-4" for="addressLineOne">Address Line Two</label>
							<div class="col-md-8">

								<sf:input type="text" path="addressLineTwo" placeholder="Address Line Two"
									class="form-control" />


							</div>



						</div>



						<div class="form-group">

							<label class="control-label col-md-4" for="city">City</label>
							<div class="col-md-8">

								<sf:input type="text" path="city" placeholder="Enter City"
									class="form-control" />


							</div>



						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="state">State</label>
							<div class="col-md-8">

								<sf:input type="text" path="state"
									 class="form-control" />


							</div>



						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="country">Country</label>
							<div class="col-md-8">

								<sf:input type="text" path="country" placeholder="Enter Country"
									class="form-control" />


							</div>



						</div>


						<div class="form-group">

							<label class="control-label col-md-4" for="postalCode">PostalCode</label>
							<div class="col-md-8">

								<sf:input type="password" path="postalCode" placeholder="PostalCode"
									class="form-control" />


							</div>



						</div>


				

						<!-- On submit it is triggering billing eventon signup personal view state so we need to add a transition for this particular event which is billing inside view state of 
signup-personel (see flow.xml file ) -->
						<div class="form-group">

							<div class="col-md-offset-4 col-md-8">
							<!-- Submit button for moving to personal -->
								<button type="submit" class="btn btn-primary"
									name=_eventId_personal>
								<span class="glyphicon glyphicon-chevron-left"></span>	Previous-personal 
								</button>
								
								<!-- Submit button for moving to Confirm -->
								<button type="submit" class="btn btn-primary"
									name=_eventId_confirm>
								<span class="glyphicon glyphicon-chevron-right"></span>	Next-Confirm
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


