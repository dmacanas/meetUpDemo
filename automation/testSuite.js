#import "tuneup/tuneup.js"

test("homeScreenValidation", function(target,app)
{
	var mainWindow = app.mainWindow();
	var navBar = mainWindow.navigationBar();

	target.delay(2);

	assertEquals("Tune Up Demo", navBar.name(), "Home title not set correctly");
});

test("alert1Test", function(target,application){
    UIATarget.onAlert = function onAlert(alert) {
        assertEquals("Alert 1", alert.staticTexts()[0].name(), "Alert Title not correct");
        assertEquals("This is an Alert message and I have two buttons!", alert.staticTexts()[1].name(), "Alert message incorrect.");
        alert.buttons()["Ok"].tap();
        target.delay(3);
        return true;
    }

	var mainWindow = application.mainWindow();
	var button1 = mainWindow.buttons()["alert1"];

	assertNotNull(button1, "Not accessing button element");
	button1.tap();
    target.delay(2);
});

test("signInScreenTest", function(target, application){
    var mainWindow = application.mainWindow();
    var navBar = mainWindow.navigationBar();
    var signInButton = navBar.rightButton();
    assertEquals("Sign In", signInButton.name(), "sign in button is not labeled");
    signInButton.tap();

    retry(function(){
        navBar = mainWindow.navigationBar();
        var cancelButton = navBar.rightButton();
        cancelButton.logElementTree();
        assertEquals("Sign In", navBar.name(), "Sign In view is not set " + navBar.name());
        assertEquals("cancelButton", cancelButton.label(), "Cancel button label not set");
        cancelButton.tap();
    });
});

test("enterUserInformation", function(target, application){
    var mainWindow = application.mainWindow();
    var navBar = mainWindow.navigationBar();
    var signIn = navBar.rightButton();
    signIn.tap();

    retry(function(){
        navBar = mainWindow.navigationBar();
        assertEquals("Sign In", navBar.name(), "navigation bar not set");
    });

    var userName = mainWindow.textFields()["userNameTextField"];
    assertNotNull(userName, "username text field not found");
    userName.tap();
    application.keyboard().typeString("M_Mannix");

    var password = mainWindow.textFields()["passwordTextField"];
    assertNotNull(password, "password text field not found");
    password.tap();
    application.keyboard().typeString("suxs");

    target.delay(2);

    mainWindow.buttons()["signInButton"].tap();

    retry(function(){
        navBar = mainWindow.navigationBar();
        assertEquals("Tune Up Demo", navBar.name(), "Sign In view still present");
    })
});

test("alert2Test", function(target, application){
    var alert1Viewed = 0;
    UIATarget.onAlert = function onAlert(alert) {
        var alertTitle = alert.staticTexts()[0].name();
        var alertMessage = alert.staticTexts()[1].name();
        if(alertTitle === "Alert 1"){
            alert1Viewed = 1;
            assertEquals("This is an Alert message and I have two buttons!", alertMessage, "improper alert message");
            alert.buttons()["Cancel"].tap();
        }else{
            assertEquals("I'm a different alert message", alertMessage, "improper alert message");
            alert.buttons()["Go Away"].tap();
        }
        target.delay(3);
        return true;
    }

    retry(function(){
        application.mainWindow().buttons()["alert2"].tap();
        assertEquals(1, alert1Viewed, "alert 1 not viewed yet");
    })
});