controller = !($scope, model) ->
	model.ready :> !->
		$scope.context = model.context
		try $scope.$digest!

controller.$inject = <[ $scope Model ]>

directive = ($) ->
	restrict: \E
	template: $.template \#context
	replace: true
	controller: controller

angular.module \modeler
	.directive \context, [\jQuery, directive]
