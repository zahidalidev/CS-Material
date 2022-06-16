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






# Rails

### What's Rails?
- Rails combines the Ruby programming language with HTML, CSS, and JavaScript to create a web application that runs on a web server. Because it runs on a web server, Rails is considered a server-side, or “back end,” web application development platform (the web browser is the “front end”).
- Rails is a web-application framework that includes everything needed to create database-backed web applications according to the Model-View-Controller (MVC) pattern. Understanding the MVC pattern is key to understanding Rails. MVC divides your application into three layers: Model, View, and Controller, each with a specific responsibility.

### Model layer
- The Model layer represents the domain model (such as Account, Product, Person, Post, etc.) and encapsulates the business logic specific to your application. In Rails, database-backed model classes are derived from ActiveRecord::Base. Active Record allows you to present the data from database rows as objects and embellish these data objects with business logic methods. Although most Rails models are backed by a database, models can also be ordinary Ruby classes, or Ruby classes that implement a set of interfaces as provided by the Active Model module.

### View layer
- The View layer is composed of "templates" that are responsible for providing appropriate representations of your application's resources. Templates can come in a variety of formats, but most view templates are HTML with embedded Ruby code (ERB files). Views are typically rendered to generate a controller response or to generate the body of an email. In Rails, View generation is handled by Action View.

### Controller layer
- The Controller layer is responsible for handling incoming HTTP requests and providing a suitable response. Usually, this means returning HTML, but Rails controllers can also generate XML, JSON, PDFs, mobile-specific views, and more. Controllers load and manipulate models, and render view templates in order to generate the appropriate HTTP response. In Rails, incoming requests are routed by Action Dispatch to an appropriate controller, and controller classes are derived from ActionController::Base. Action Dispatch and Action Controller are bundled together in Action Pack.
- The controller is where CRUD functionality happens, so the methods that describe certain actions live in the controller.

### Scaffold
- A scaffold in Rails is a full set of model, database migration for that model, controller to manipulate it, views to view and manipulate the data, and a test suite for each of the above.
- Rails scaffolding is a quick way to generate some of the major pieces of an application. If you want to create the models, views, and controllers for a new resource in a single operation, scaffolding is the tool for the job.

### Seed in Rails ? 
- A useful way of populating a database with the initial data needed for a Rails project. This will allow us to populate the database in within our Rails Web application.

### rails Gems, what is gemfile, gemfile.lock
- The Gemfile is where you specify which gems you want to use, and lets you specify which versions. The Gemfile. lock file is where Bundler records the exact versions that were installed. This way, when the same library/project is loaded on another machine, running bundle install will look at the Gemfile.
- A Gemfile is a file we create which is used for describing gem dependencies for Ruby programs. A gem is a collection of Ruby code that we can extract into a “collection” which we can call later. It lets you specify which gems you want to use, and which versions of these gems to use.
