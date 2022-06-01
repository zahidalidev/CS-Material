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

# Rails

### What's Rails?
- Rails is a web-application framework that includes everything needed to create database-backed web applications according to the Model-View-Controller (MVC) pattern. Understanding the MVC pattern is key to understanding Rails. MVC divides your application into three layers: Model, View, and Controller, each with a specific responsibility.

### Model layer
- The Model layer represents the domain model (such as Account, Product, Person, Post, etc.) and encapsulates the business logic specific to your application. In Rails, database-backed model classes are derived from ActiveRecord::Base. Active Record allows you to present the data from database rows as objects and embellish these data objects with business logic methods. Although most Rails models are backed by a database, models can also be ordinary Ruby classes, or Ruby classes that implement a set of interfaces as provided by the Active Model module.

### View layer
- The View layer is composed of "templates" that are responsible for providing appropriate representations of your application's resources. Templates can come in a variety of formats, but most view templates are HTML with embedded Ruby code (ERB files). Views are typically rendered to generate a controller response or to generate the body of an email. In Rails, View generation is handled by Action View.

### Controller layer
- The Controller layer is responsible for handling incoming HTTP requests and providing a suitable response. Usually, this means returning HTML, but Rails controllers can also generate XML, JSON, PDFs, mobile-specific views, and more. Controllers load and manipulate models, and render view templates in order to generate the appropriate HTTP response. In Rails, incoming requests are routed by Action Dispatch to an appropriate controller, and controller classes are derived from ActionController::Base. Action Dispatch and Action Controller are bundled together in Action Pack.
