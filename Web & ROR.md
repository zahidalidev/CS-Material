# Web
### web server 
- is software which provides access to services to users connected to internet. These servers can provide support for many protocols used over internet or intranet like HTTP, FTP, telnet etc Figure 1: A typical web application HTTP BasicsA protocol defines the method of communication between two parties. For example when we  talk  to  our  teacher  the  subject  of  discussion  is  studies  but  with  our  parents  we  normally talk about family matters. Similarly there are many different protocols used by computers  to  communicate  with  each  other  depending  on  applications.  For  example  an  Echo  Server  only  listens  to  incoming  name  messages  and  sends  back  hello  message,  while HTTP protocol uses various types of request-response messages. 
### HTTP
- A protocol defines the method of communication between two parties.
- HTTP is as request-response oriented protocol.
- It  is  a  stateless  protocol  since  there  is  no  built-in  state  management  between  successive requests.
- Parts of an HTTP request oRequest  Method:  
  * It  tells  server  what  type  of  action  client  wants  to  be  performed. <br />
  * URI:   Uniform   Resource   Indictor   specifies   the   address   of   required   document. <br />
  * Header  Fields:  Option  headers  can  be  used  by  client  to  tell  server  extra  information  about  request  e.g.  client  software  and  content  type  that  it  understands. <br />
  * Body: Contains data sent by client to server

### Layers
- Normally web applications are partitioned into three layers. Each layer performs a specific functionality which should not be mixed with other layers. Layers are isolated from each other to reduce coupling between them but they provide interfaces to communicate with each other.<br />
  * **Presentation Layer**: Provides user interface for client to interact with the application. This is the only part of application visible to client. <br />
  * **Business Layer**: The business or service layer implements the actual business logic or functionality of the application. For example in case of online shopping systems this layer handles transaction management.<br />
  * **Data Layer**: This layer consists of objects that represent real-world business objects such as an Order, OrderLineItem, Product, and so on. <br />

### Web Application Development
- How the Web Works: A Primer for Newcomers to Web Development (or anyone, really) (https://silo.tips/download/web-application-development-2)
(Read both parts of the above article, link to second part is at the end of the provided link) (https://www.freecodecamp.org/news/how-the-web-works-a-primer-for-newcomers-to-web-development-or-anyone-really-b4584e63585c/)

### HTTP VS HTTPS
- HTTPS is HTTP with encryption. The only difference between the two protocols is that HTTPS uses TLS (SSL) to encrypt normal HTTP requests and responses. As a result, HTTPS is far more secure than HTTP. A website that uses HTTP has http:// in its URL, while a website that uses HTTPS has https://.

### UDP vs TCP
- TCP is a connection-oriented protocol, whereas UDP is a connectionless protocol. A key difference between TCP and UDP is speed, as TCP is comparatively slower than UDP. Overall, UDP is a much faster, simpler, and efficient protocol, however, retransmission of lost data packets is only possible with TCP.

### Application server vs Web server
- A **web server** accepts and fulfills requests from clients for static content (i.e., HTML pages, files, images, and videos) from a website. Web servers handle HTTP requests and responses only.
- An **application server** exposes business logic to the clients, which generates dynamic content. It is a software framework that transforms data to provide the specialized functionality offered by a business, service, or application. Application servers enhance the interactive parts of a website that can appear differently depending on the context of the request.

### How encryption VS hashing works
- Since **encryption** is two-way, the data can be decrypted so it is readable again. **Hashing**, on the other hand, is one-way, meaning the plaintext is scrambled into a unique digest, through the use of a salt, that cannot be decrypted.

### what are http headers
- HTTP headers let the client and the server pass additional information with an HTTP request or response.  For example, Content-Type and a request message can use headers to indicate it's preferred media formats, while a response can use header to indicate the media format of the returned body.
- Request headers contain more information about the resource to be fetched, or about the client requesting the resource.
- Response headers hold additional information about the response, like its location or about the server providing it.

### what are comment headers
- File Header comments are used to identify what is in a file, who wrote it, the date it was written, and a description of what is being solved by the code in the file. All program files should have header comments and it should be located at the TOP of the file!

### How SSL/HTTPS encryption actually works
- HTTPS requires a TLS certificate to be installed on your server. You can apply certificates to different protocols, like HTTP (web), SMTP (email) and FTP. An SSL or TLS certificate works by storing your randomly generated keys (public and private) in your server. The public key is verified with the client and the private key used in the decryption process.
- HTTP is just a protocol, but when paired with TLS or transport layer security it becomes encrypted.
- HTTPS takes the well-known and understood HTTP protocol, and simply layers a SSL/TLS (hereafter referred to simply as “SSL”) encryption layer on top of it. Servers and clients still speak exactly the same HTTP to each other, but over a secure SSL connection that encrypts and decrypts their requests and responses. The SSL layer has 2 main purposes:
  * Verifying that you are talking directly to the server that you think you are talking to
  * Ensuring that only the server can read what you send it and only you can read what it sends back <br />
The really, really clever part is that anyone can intercept every single one of the messages you exchange with a server, including the ones where you are agreeing on the key and encryption strategy to use, and still not be able to read any of the actual data you send.

### How handshake works in http
- https://robertheaton.com/2014/03/27/how-does-https-actually-work/#:~:text=How%20an%20SSL%20connection%20is%20established

### What are nameservers
- Name servers translate the domain name into an IP address, connecting information that's easy for humans to understand with information that's easy for computers to understand.
- A nameserver, also referred to as “name server,” is a server designed to translate domain names into IP addresses. It handles queries from clients, like a computer or tablet, about the location of a domain name and its services on the DNS servers. Any server that has DNS software can be considered a nameserver.

# Ruby
- Ruby is an interpreted, high-level, general-purpose programming language which supports multiple programming paradigms. It was designed with an emphasis on programming productivity and simplicity. In Ruby, everything is an object, including primitive data types.

### Module
- Ruby modules allow you to create groups of methods that you can then include or mix into any number of classes. Modules only hold behaviour, unlike classes, which hold both behaviour and state.
- Since a module cannot be instantiated, there is no way for its methods to be called directly. Instead, it should be included in another class, which makes its methods available for use in instances of that class.
- Modules are a way of grouping together methods, classes, and constants. Modules give you two major benefits. Modules provide a namespace and prevent name clashes.
- Namespacing is a way of bundling logically related objects together. Modules serve as a convenient tool for this. This allows classes or modules with conflicting names to co-exist while avoiding collisions. Think of this as storing different files with the same names under separate directories in your filesystem.

### Variables in a Ruby Class
- Local Variables − Local variables are the variables that are defined in a method. Local variables are not available outside the method. You will see more details about method in subsequent chapter. Local variables begin with a lowercase letter or _.

- Instance Variables − Instance variables are available across methods for any particular instance or object. That means that instance variables change from object to object. Instance variables are preceded by the at sign (@) followed by the variable name.

- Class Variables − Class variables are available across different objects. A class variable belongs to the class and is a characteristic of a class. They are preceded by the sign @@ and are followed by the variable name.

- Global Variables − Class variables are not available across classes. If you want to have a single variable, which is available across classes, you need to define a global variable. The global variables are always preceded by the dollar sign ($).

### block and lambda
- Blocks are used for passing blocks of code to methods, and procs and lambda's allow storing blocks of code in variables.

### Map Vs Each
- Array#each executes the given block for each element of the array, then returns the array itself. Array#map also executes the given block for each element of the array, but returns a new array whose values are the return values of each iteration of the block. Note the return value is simply the same array.

### What is :: in Ruby?
- The :: is a unary operator and is used to access (anywhere outside the class or module) constants, instance methods and class methods defined within a class or module. Note: In Ruby, classes and methods may be considered constants too.

### puts, putc, p
- putc to print the character
- p = puts value.inspect
- While the print method allows you to print information in the same line even multiple times, the puts method adds a new line at the end of the object
- On the other hand, p is useful when you are trying to understand what your code does, e.g. when you are trying to figure out a certain error.

### Class vs Module? 
- Modules are collections of methods and constants. They cannot generate instances. Classes may generate instances (objects), and have per-instance state (instance variables).

### yield
- yield is a keyword in Ruby which allow the developer to pass some argument to block from the yield, the number of the argument passed to the block has no limitations, the main advantage of using yield in Ruby, if we face any situation we wanted to our method perform different functions according to calling block

### lambda pass to a function
```
def some_func(foo, bar, &procedure)
  procedure.call(foo, bar)
end

some_func(2, 3) {|a, b| a * b }
=> 6
```

### Distructor
- Ruby does not have.

### to_s vs inspect 
- to_s is usually used for logging purposes. inspect is usually used for debugging purposes.

### include and extend
- difference between include and extend is that 'include' is for adding methods only to an instance of a class and 'extend' is for adding methods to the class but not to its instance.

### raise and handle exception
```
begin
  raise "tesing !!"
  rescue Exception => e
    puts e
end
```

### why use catch throw instead of rescue
- catch/throw are not the same as raise/rescue. catch/throw allows you to quickly exit blocks back to a point where a catch is defined for a specific symbol, raise rescue is the real exception handling stuff involving the Exception object.

### symbol vs string
- A string, in Ruby, is a mutable series of characters or bytes. Symbols, on the other hand, are immutable values. Just like the integer 2 is a value
- string: "zahid", symbol: :zahid

### self
- self is reference to current object.
```
class Cat
  def meow
    puts self
  end
end
Cat.new.meow
# <Cat:0x7a14c5>
```

### Proc
- A Proc object is an encapsulation of a block of code, which can be stored in a local variable, passed to a method or another Proc, and can be called. Proc is an essential concept in Ruby and a core of its functional programming features.
```
square = Proc.new {|x| x**2 }

square.call(3)  #=> 9
# shorthands:
square.(3)      #=> 9
square[3]       #=> 9
```
### Ruby map, each, collect, inject, reject, select quick reference
- map: Performs an action on each array element. The original array is not modified. Returns the modified array.
- each: Executes an action using as parameter each element of the array. Returns the unmodified array.
- collect: Alias for map
- inject: Takes an accumulator (sum) and changes it as many times as there are elements in the array. Returns the final value of the accumulator.
```
[1,2,3,4,5,6,7,8,9,10].inject{|sum,e| sum += e }
# returns 55
```
- reduce: Alias for inject
- select: Runs an expression for each array element and, if it is true, that element gets added to the output which is returned. This is called filter in other languages.
```
[1,2,3,4,5,6,7,8,9,10].select{|el| el%2 == 0 }
# returns [2,4,6,8,10]
```
- find: Take an expression and returns the first element for which the expression returns true:
```
[1,2,3,4,5,6,7,8,9,10].find{|el| el / 2 == 2 }
# returns 4
```

- detect: Alias for find
- reject: The opposite of select: runs an expression for each array element and includes that element in the output if the expression is false

### convert array to hash
- The to_h method is defined in the array class. It works to convert an array to a hash in the form of key-value pairs. The method converts each nested array into key-value pairs. The method also accepts a block.
```
ar = [1, 2, "zahid", true]

puts ar.to_h {|i| ["key", i]}
```

### times loop
```
puts 10.times { puts "hello" }
```

### each with index
- the each_with_index function in Ruby is used to Iterate over the object with its index and returns value of the given object.
```
[5, 10, 15, 20, 25, 30].each_with_index do |num, idx|
  puts num, idx
end
```

### load vs require with res memory



### background jobs
- Scheduled Operating System Processes, i.e. Cron Jobs. ...
- Rails-based Asynchronous Processes. ...
- Running a Process On-Demand. ...
- Sidekiq Configuration File. ...
- Redis Storage. ...
- Running Sidekiq. ...
- Scheduling a Background Job. ...
- Sidekiq Web Console.

### Access Control (Provate, Public, Protected)
```
# define a class
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # instance method by default it is public
   def getArea
      getWidth() * getHeight
   end

   # define private accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end
   # make them private
   private :getWidth, :getHeight

   # instance method to print area
   def printArea
      @area = getWidth() * getHeight
      puts "Big box area is : #@area"
   end
   # make it protected
   protected :printArea
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"

# try to call protected or methods
box.printArea()

<!-- Ouput -->
Area of the box is : 200
test.rb:42: protected method `printArea' called for #
<Box:0xb7f11280 @height = 20, @width = 10> (NoMethodError)

```
### freeze
- The freeze method in Ruby is used to ensure that an object cannot be modified. This method is a great way to create immutable objects. Any attempt to modify an object that has called the freeze method will result in the program throwing a runtime error.

### Create Object Using Allocate
- There may be a situation when you want to create an object without calling its constructor initialize i.e. using new method, in such case you can call allocate, which will create an uninitialized object for you as in the following example −

### How to Use attr_accessor, attr_writer & attr_reader
- With **attr_reader** you can only read the value, but not change it. With **attr_writer** you can only change a value but not read it.
- attr_accessor works as both attr_reader and attr_writer 

```
class Food
 attr_accessor :protein
 def initialize(protein)
   @protein = protein
 end
end
```

### colect
- collect() is an Array class method which invokes the argument block once for each element of the array. A new array is returned which has the value returned by the block.

### association in ruby

### rubocop

# Rails

### What's Rails?
- Rails combines the Ruby programming language with HTML, CSS, and JavaScript to create a web application that runs on a web server. Because it runs on a web server, Rails is considered a server-side, or “back end,” web application development platform (the web browser is the “front end”).
- Rails is a web-application framework that includes everything needed to create database-backed web applications according to the Model-View-Controller (MVC) pattern. Understanding the MVC pattern is key to understanding Rails. MVC divides your application into three layers: Model, View, and Controller, each with a specific responsibility.
- Runtime programming language

### How does MVC work in Ruby Rails?
- Like most of the other frameworks, Rails is also based on MVC pattern. It basically works as: Requests first come to the controller, controller finds an appropriate view and interacts with model which in turn interacts with database and send response to controller.

### Model layer
- The Model component corresponds to all the data-related logic that the user works with. This can represent either the data that is being transferred between the View and Controller components or any other business logic-related data. For example, a Customer object will retrieve the customer information from the database, manipulate it and update it data back to the database or use it to render data.
- The Model layer represents the domain model (such as Account, Product, Person, Post, etc.) and encapsulates the business logic specific to your application. In Rails, database-backed model classes are derived from ActiveRecord::Base. Active Record allows you to present the data from database rows as objects and embellish these data objects with business logic methods. Although most Rails models are backed by a database, models can also be ordinary Ruby classes, or Ruby classes that implement a set of interfaces as provided by the Active Model module.

### View layer
- The View component is used for all the UI logic of the application. For example, the Customer view will include all the UI components such as text boxes, dropdowns, etc. that the final user interacts with.
- The View layer is composed of "templates" that are responsible for providing appropriate representations of your application's resources. Templates can come in a variety of formats, but most view templates are HTML with embedded Ruby code (ERB files). Views are typically rendered to generate a controller response or to generate the body of an email. In Rails, View generation is handled by Action View.

### Controller layer
- Controllers act as an interface between Model and View components to process all the business logic and incoming requests, manipulate data using the Model component and interact with the Views to render the final output. For example, the Customer controller will handle all the interactions and inputs from the Customer View and update the database using the Customer Model. The same controller will be used to view the Customer data.
- The Controller layer is responsible for handling incoming HTTP requests and providing a suitable response. Usually, this means returning HTML, but Rails controllers can also generate XML, JSON, PDFs, mobile-specific views, and more. Controllers load and manipulate models, and render view templates in order to generate the appropriate HTTP response. In Rails, incoming requests are routed by Action Dispatch to an appropriate controller, and controller classes are derived from ActionController::Base. Action Dispatch and Action Controller are bundled together in Action Pack.
- The controller is where CRUD functionality happens, so the methods that describe certain actions live in the controller.

### Scaffold
- A scaffold in Rails is a full set of model, database migration for that model, controller to manipulate it, views to view and manipulate the data, and a test suite for each of the above.
- Rails scaffolding is a quick way to generate some of the major pieces of an application. If you want to create the models, views, and controllers for a new resource in a single operation, scaffolding is the tool for the job.

### Seed in Rails ? 
- A useful way of populating a database with the initial data needed for a Rails project. This will allow us to populate the database in within our Rails Web application.

### rails Gems, what is gemfile, gemfile.lock
- The Gemfile is where you specify which gems you want to use, and lets you specify which versions. The Gemfile.lock file is where Bundler records the exact versions that were installed. This way, when the same library/project is loaded on another machine, running bundle install will look at the Gemfile.
- A Gemfile is a file we create which is used for describing gem dependencies for Ruby programs. A gem is a collection of Ruby code that we can extract into a “collection” which we can call later. It lets you specify which gems you want to use, and which versions of these gems to use.

### what is Rails/Rake in rails
- Rake is a popular task runner for Ruby and Rails applications. For example, Rails provides the predefined Rake tasks for creating databases, running migrations, and performing tests. You can also create custom tasks to automate specific actions - run code analysis tools, backup databases, and so on.

### What is rake and rack?
- One more thing: Don't confuse Rake with Rack, very similar names, but completely different things. Rake is a task runner. Rack helps Ruby servers & frameworks work together.

### hash.with_indifferent_access
- https://medium.com/@soni.dumitru/the-hash-with-indifferent-access-method-in-rails-37f0bd3d5a76
- using with_indifferent_access we can access the valuse from hash using both symbol and strings.

### Asset pipline
- The asset pipeline provides a framework to concatenate and minify or compress JavaScript and CSS assets. It also adds the ability to write these assets in other languages such as CoffeeScript, Sass and ERB.
- The first feature of the pipeline is to concatenate assets, which can reduce the number of requests that a browser makes to render a web page. Web browsers are limited in the number of requests that they can make in parallel, so fewer requests can mean faster loading for your application.
- The second feature of the asset pipeline is asset minification or compression. For CSS files, this is done by removing whitespace and comments. For JavaScript, more complex processes can be applied. You can choose from a set of built in options or specify your own.
- The third feature of the asset pipeline is it allows coding assets via a higher-level language, with precompilation down to the actual assets. Supported languages include Sass for CSS, CoffeeScript for JavaScript, and ERB for both by default.

### What is Fingerprinting and Why Should I Care?
- Fingerprinting is a technique that makes the name of a file dependent on the contents of the file. When the file contents change, the filename is also changed. For content that is static or infrequently changed, this provides an easy way to tell whether two versions of a file are identical, even across different servers or deployment dates.
-  Rails inserts an SHA256 fingerprint into each filename so that the file is cached by the web browser. You can invalidate the cache by altering this fingerprint, which happens automatically whenever you change the file contents.

### app/Channels
- Each consumer can, in turn, subscribe to multiple channels. Each channel encapsulates a logical unit of work, similar to what a controller does in a typical MVC setup. For example, you could have a ChatChannel and an AppearancesChannel, and a consumer could be subscribed to either or both of these channels. At the very least, a consumer should be subscribed to one channel.

### ./bin directory 
- contains your app's "binstubs." Binstubs are wrappers around gem executables, like rails or bundle , which ensures a gem executable is run inside the correct environment for your Rails app.

### What is the difference between preprocess and precompile?
- Preprocess - a process that transforms your code into either css, html or js before you sent it to your browser. This is usually when you use (redundant here) preprocessors such as coffeescript, erb, scss, etc. I must say that the order is important when using preprocess.
- Precompile - happens before you send your code to production using rake assets:precompile. It makes sure your code is compilable (made up word) and put them in public/assets

### Callbacks
- Callbacks are methods that get called at certain moments of an object's life cycle. With callbacks it is possible to write code that will run whenever an Active Record object is created, saved, updated, deleted, validated, or loaded from the database.

### symbol vs string?
- A string, in Ruby, is a mutable series of characters or bytes.
- Symbols, on the other hand, are immutable values. Just like the integer 2 is a value.

### What is Active Record?
- Active Record is the M in MVC - the model - which is the layer of the system responsible for representing business data and logic. Active Record facilitates the creation and use of business objects whose data requires persistent storage to a database. It is an implementation of the Active Record pattern which itself is a description of an Object Relational Mapping system.

### What is ORM and rails ORM?
- ORM is the mapping of relational database tables to object-oriented classes. A perfect ORM hides the details of a database's relational data behind the object hierarchy. In Rails, ORM is implemented by Active Record which is one of the most important components of the Rails library.
- Object Relational Mapping, commonly referred to as its abbreviation ORM, is a technique that connects the rich objects of an application to tables in a relational database management system.

### Validations?
- Validations are used to ensure that only valid data is saved into your database
- Database constraints and/or stored procedures make the validation mechanisms database-dependent and can make testing and maintenance more difficult. However, if your database is used by other applications, it may be a good idea to use some constraints at the database level. Additionally, database-level validations can safely handle some things (such as uniqueness in heavily-used tables) that can be difficult to implement otherwise. 
- Client-side validations can be useful, but are generally unreliable if used alone. If they are implemented using JavaScript, they may be bypassed if JavaScript is turned off in the user's browser. However, if combined with other techniques, client-side validation can be a convenient way to provide users with immediate feedback as they use your site.
- Controller-level validations can be tempting to use, but often become unwieldy and difficult to test and maintain. Whenever possible, it's a good idea to keep your controllers skinny, as it will make your application a pleasure to work with in the long run.

### validate vs. validateS
- ::ActiveModel::Validations treats validates and validate differently. validates is used for normal validations presence, length, and the like. validate is used for custom validation methods validate_name_starts_with_a, or whatever crazy method you come up with.

### before/after_commit vs before/after_create/save
- after_commit and after_rollback. These callbacks are very similar to the after_save callback except that they don't execute until after database changes have either been committed or rolled back. They are most useful when your active record models need to interact with external systems which are not part of the database transaction.
```
 after_save is invoked when an object is created and updated
 after_commit is called on create, update and destroy.
 after_create is only called when creating an object
 With Order of callbacks
```
- after_create - Is called after Model.save on new objects that haven‘t been saved yet (no record exists)
- after_save - Is called after Model.save (regardless of whether it‘s a create or update save)
- after_commit - Is called after the database transaction is completed.

- Rails runs after_save callbacks within a transaction, thus the state changes you just saved can theoretically be unwound if the transaction fails due to an exception getting raised within the after_save functionality. Sometimes this is what you want. Sometimes it isn't.
- Whenever you are dealing with actions that should occur ONLY after you are sure everything is done (e.g. saving to a special full-text database, tracking, etc.), you ought to use after_commit since this gets run after and outside the transaction.

### Up vs down vs change in Rails
- In other words, the changes in up are the forward change you want to make to your db, where the changes defined in down should be changes to revert back in time. When you run rails db:migrate, the up method is executed, whereas rails db:rollback executes the down method

### around_* 
- callbacks are invoked before the action, then when you want to invoke the action itself, you yield to it, then continue execution. That's why it's called around
- The order goes like this: before, around, after.
- The around_* callback is called around the action and inside the before_* and after_* actions. For example:
```
class User
  def before_save
    puts 'before save'
  end

  def after_save
    puts 'after_save'
  end

  def around_save
    puts 'in around save'
    yield # User saved
    puts 'out around save'
  end
end

User.save
  before save
  in around save
  out around save
  after_save
=> true
```

### Validates_with 
- The validates_with helper takes a class, or a list of classes to use for validation. There is no default error message for validates_with. You must manually add errors to the record's errors collection in the validator class.
- To implement the validate method, you must have a record parameter defined, which is the record to be validated.

### Controller callbacks in rails
- Rails provides before, after and around actions in controllers as an easy way to call methods before or after executing controller actions as response to route requests. Action Callbacks can be particularly helpful when implementing authentication/authorization for example, and are heavily used by gems such as Devise.

### Base controller concept
- A base controller is a controller with basic functionalities from which the other controllers in your SAPUI5 application inherit. The base controller holds basic functionalities that are used across multiple controllers.

### Fat and slim controller
- Fat Model, Skinny Controller” refers to how the M and C parts of MVC ideally work together. Namely, any non-response-related logic should go in the model, ideally in a nice, testable method. Meanwhile, the “skinny” controller is simply a nice interface between the view and model.
- Mean main logic, minimum logic should be in contoller and all other should be in models.

### Serializer
- Serialization converts an object in memory into a stream of bytes that can be recreated when needed. Serializers in Ruby on Rails convert a given object into a JSON format. Serializers control the particular attributes rendered when an object or model is converted into a JSON format.

### Strong params
- Strong Parameters, aka Strong Params, are used in many Rails applications to increase the security of data sent through forms. Strong Params allow developers to specify in the controller which parameters are accepted and used. By permitting only the expected params, any unneeded or potentially dangerous params will be ignored and effectively filtered out. This is especially important during Active Model mass assignments where multiple params can be passed at once.

### require vs permit vs permit in rails
- The require method ensures that a specific parameter is present, and if it's not provided, the require method throws an error. It returns an instance of ActionController::Parameters for the key passed into require.
- The permit method returns a copy of the parameters object, returning only the permitted keys and values. When creating a new ActiveRecord model, only the permitted attributes are passed into the model.
- To whitelist an entire hash of parameters, the permit! method can be used.

### Gem and Gem.lock files in rails
- The Gemfile is where you specify which gems you want to use, and lets you specify which versions.
- The Gemfile.lock file is where Bundler records the exact versions that were installed. This way, when the same library/project is loaded on another machine, running bundle install will look at the Gemfile.lock and install the exact same versions, rather than just using the Gemfile and installing the most recent versions. (Running different versions on different machines could lead to broken tests, etc.) You shouldn't ever have to directly edit the lock file.
