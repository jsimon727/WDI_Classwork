describe("Cipher", function(){
  var message;
  var encryptedMessage;

  beforeEach(function(){
    message = "attackatdawn";
    encryptedMessage = "lxfopvefrnhr";
  });

  //undoes the beforeEach action, 
  //sets message and encrypted message to null
  
  afterEach(function(){
    message = null;
    encryptedMessage = null;
  });

  it("encrypts a message", function(){
    expect(encrypt("attackatdawn", "lemon"))
.toEqual("lxfopvefrnhr")  })
})