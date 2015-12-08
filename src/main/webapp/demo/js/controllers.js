angular.module('starter.controllers', ['ionic', 'ionic-datepicker'])

.controller('LoginCtrl', function($scope) {
  $('.bar-stable').hide();
})

.controller('WorklistCtrl', function($scope, $ionicConfig) {
  //$ionicConfig.backButton.text("My Worklist");
  $('.bar-stable').show();

  jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.document.location = $(this).data("href");
    });
});
})

.controller('WorklistDetailCtrl', function($scope, $rootScope, $state, $ionicPopup, $ionicLoading, Camera) {

  $scope.tableItems = {};
  $scope.tableItems["s"] = "Soundness";
  $scope.tableItems["e"] = "Evenness";
  $scope.tableItems["l"] = "Level";
  $scope.tableItems["f"] = "Fall";

  var monthList = ["Jan", "Feb", "March", "April", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"];
  $scope.datepickerObject = {};
  $scope.datepickerObject.inputDate = new Date();

  $rootScope.datepickerObjectModal = {
    titleLabel: 'Date Picker', //Optional
    todayLabel: 'Today', //Optional
    closeLabel: 'Close', //Optional
    setLabel: 'Set', //Optional
    modalHeaderColor:'bar-dark', //Optional
    modalFooterColor:'bar-dark', //Optional
    templateType:'modal', //Optional
    inputDate: $scope.datepickerObject.inputDate, //Optional
    mondayFirst: true, //Optional
    monthList:monthList, //Optional
    from: new Date(2000, 1, 1), //Optional
    to: new Date(2020, 1, 1), //Optional
    callback: function (val) { //Optional
      datePickerCallbackModal(val);
    }
  };

  var newDate;
  var m = $scope.datepickerObjectModal.inputDate.getMonth()+1;
  var d = $scope.datepickerObjectModal.inputDate.getDate();
  var y = $scope.datepickerObjectModal.inputDate.getFullYear();
  var stripDate = m+'/'+d+'/'+y;

  var objDate = new Date(stripDate),
    locale = "en-us",
    nm = objDate.toLocaleString(locale, { month: "long" });
    newDate = d+' - '+nm+' - '+y;

  var datePickerCallbackModal = function (val) {
    if (typeof(val) === 'undefined') {
      //console.log('No date selected');
    } else {
      $scope.datepickerObjectModal.inputDate = val;

      var m = $scope.datepickerObjectModal.inputDate.getMonth()+1;
      var d = $scope.datepickerObjectModal.inputDate.getDate();
      var y = $scope.datepickerObjectModal.inputDate.getFullYear();
      var stripDate = m+'/'+d+'/'+y;

      var objDate = new Date(stripDate),
        locale = "en-us",
        nm = objDate.toLocaleString(locale, { month: "long" });
        newDate = d+' - '+nm+' - '+y;

        $('.datepicker').val(newDate);
        $('.datepicker').addClass('text-center');
        //console.log('Selected date is : ', val)
    }
  };


  $scope.$on( "$ionicView.loaded", function() {
    $('.input-sfitem').attr('style', 'border: none !important');
  })

  $scope.$on( "$ionicView.enter", function() {

    $scope.data = {};
    var row1s_value = "";
    var row1e_value = "";
    var row1l_value = "";
    var row1f_value = "";

    $('#form-ca-detail input').on('change', function() {
      row1s_value = $scope.data.row1s; 
      row1e_value = $scope.data.row1e; 
      row1l_value = $scope.data.row1l; 
      row1f_value = $scope.data.row1f;
      console.log(row1s_value);
    });

    $scope.formAsSubmit = function() {

      var confirmPopup = $ionicPopup.confirm({
        title: 'Submit Assessment',
        template: '<p class="text-center">Are you sure you want to submit?</p>',
        okText: 'Submit',
        okType: 'button-dark'
      });
     confirmPopup.then(function(res) {
          if(res) {
           
            $ionicLoading.show({ template: '<div class="d-load-icon"><ion-spinner icon="crescent"></div></ion-spinner><p class="t-loading text-center">Sending Assessment</p>'});

            setTimeout(function(){ 

              $state.go('tab.worklist-confirm', {
                ctitle: $scope.data.ctitle,
                adate: newDate,
                floor: $scope.data.floor,
                bzone: $scope.data.bzone,
                lflat: $scope.data.lflat,
                sfitem: $('.input-sfitem').val(),
                row1s_selected: row1s_value,
                row1e_selected: row1e_value,
                row1l_selected: row1l_value,
                row1f_selected: row1f_value
              });

              $('.t-loading').css('margin-top','-3px');

              setTimeout(function(){ $ionicLoading.hide(); }, 700);
            }, 1300);

          } else {
            console.log('Canceled');
          }
      });

    };

    $scope.getPhoto = function() {
      Camera.getPicture().then(function(imageURI) {
        console.log(imageURI);
        $scope.lastPhoto = imageURI;
      }, function(err) {
        console.err(err);
      }, {
        quality: 75,
        targetWidth: 320,
        targetHeight: 320,
        saveToPhotoAlbum: false
      });
    };
    
  });

})

.controller('WorklistConfirmCtrl', function($scope, $rootScope, $state, $stateParams, $ionicConfig, $ionicHistory) {
  
  $ionicConfig.backButton.text("My Worklist");

  $scope.ctitle = $stateParams.ctitle;
  $scope.adate = $stateParams.adate;
  $scope.floor = $stateParams.floor;
  $scope.bzone = $stateParams.bzone;
  $scope.lflat = $stateParams.lflat;
  $scope.sfitem = $stateParams.sfitem;

  console.log($stateParams.row1s_selected);
  $('#'+$stateParams.row1s_selected).addClass('shade-cell');
  $('#'+$stateParams.row1e_selected).addClass('shade-cell');
  $('#'+$stateParams.row1f_selected).addClass('shade-cell');
  $('#'+$stateParams.row1l_selected).addClass('shade-cell');

  $rootScope.$ionicGoBack = function(backCount) {
    $ionicHistory.goBack(-2);
  };

})

.controller('ChatsCtrl', function($scope, Chats) {
  // With the new view caching in Ionic, Controllers are only called
  // when they are recreated or on app start, instead of every page change.
  // To listen for when this page is active (for example, to refresh data),
  // listen for the $ionicView.enter event:
  //
  //$scope.$on('$ionicView.enter', function(e) {
  //});

  $scope.chats = Chats.all();
  $scope.remove = function(chat) {
    Chats.remove(chat);
  };
})

.controller('ChatDetailCtrl', function($scope, $stateParams, Chats) {
  $scope.chat = Chats.get($stateParams.chatId);
})

.controller('AccountCtrl', function($scope) {
  $scope.settings = {
    enableFriends: true
  };
});
