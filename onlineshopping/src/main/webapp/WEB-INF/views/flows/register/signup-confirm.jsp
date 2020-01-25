<%@include file="../shared/flows-header.jsp"%>

<div class="container">

	<div class="row">
	
	<!-- Personal Details> -->
		<div class="col-sm-6">

			<div class="panel panel-primary">

				<div class="panel-heading">

					<h4>Personal Details</h4>

				</div>

				<div class="panel-body">
					<h3>Name : <strong>${registerModel.user.firstName} ${registerModel.user.lastName}</strong></h3>
						<h4>Email : <strong>${registerModel.user.email}</strong></h4>
						<h4>Contact : <strong>${registerModel.user.contactNumber}</strong></h4>
						<h4>Role : <strong>${registerModel.user.role}</strong></h4>
						
				</div>
				<div class="panel-footer">
					<!-- Anchor to move to the edit of personal details  -->
						<a href="${flowExecutionUrl}&_eventId_personal" class="btn btn-primary">Edit Persoanl Details</a>
				</div>


			</div>

		</div>
		
		<!-- Billing Details -->
		<div class="col-sm-6">

			<div class="panel panel-primary">

				<div class="panel-heading">

					<h4>Billing Details</h4>

				</div>

				<div class="panel-body">
					<!-- Code to display Billing details -->
					<div class="text-center">
					<h4>${registerModel.billing.addressLineOne}</h4>
						<h3>${registerModel.billing.addressLineTwo}</h3>
						<h3>${registerModel.billing.city} -  ${registerModel.billing.postalCode}</h3>
						<h3>${registerModel.billing.state}</h3>
						<h3>${registerModel.billing.country}</h3>
						</div>
				</div>
				<div class="panel-footer">
					<!-- Anchor to move to the edit of billing details  -->
						<a href="${flowExecutionUrl}&_eventId_billing" class="btn btn-primary">Edit Billing Details</a>
				</div>


			</div>

		</div>
		
		
		
		

	</div>
</div>




	<div class="row">
		<div class="col-sm-4 col-sm-offset-4">
		<div class="text-center">
		
		<a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-primary">Confirm</a>
		</div>		
	</div>


<%@include file="../shared/flows-footer.jsp"%>
