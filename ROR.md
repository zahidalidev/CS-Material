### web server 
- is software which provides access to services to users connected to internet. These servers can provide support for many protocols used over internet or intranet like HTTP, FTP, telnet etc Figure 1: A typical web application HTTP BasicsA protocol defines the method of communication between two parties. For example when we  talk  to  our  teacher  the  subject  of  discussion  is  studies  but  with  our  parents  we  normally talk about family matters. Similarly there are many different protocols used by computers  to  communicate  with  each  other  depending  on  applications.  For  example  an  Echo  Server  only  listens  to  incoming  name  messages  and  sends  back  hello  message,  while HTTP protocol uses various types of request-response messages. 
### HTTP
- A protocol defines the method of communication between two parties.
- HTTP is as request-response oriented protocol.
- It  is  a  stateless  protocol  since  there  is  no  built-in  state  management  between  successive requests.
- Parts of an HTTP request oRequest  Method:  
-     It  tells  server  what  type  of  action  client  wants  to  be  performed. 
-     URI:   Uniform   Resource   Indictor   specifies   the   address   of   required   document. 
-     Header  Fields:  Option  headers  can  be  used  by  client  to  tell  server  extra  information  about  request  e.g.  client  software  and  content  type  that  it  understands.
-     Body: Contains data sent by client to server

### Layers
- Normally web applications are partitioned into three layers. Each layer performs a specific functionality which should not be mixed with other layers. Layers are isolated from each other to reduce coupling between them but they provide interfaces to communicate with each other.
-       **Presentation Layer**: Provides user interface for client to interact with the application. This is the only part of application visible to client.
-       **Business Layer**: The business or service layer implements the actual business logic or functionality of the application. For example in case of online shopping systems this layer handles transaction management.
-       **Data Layer**: This layer consists of objects that represent real-world business objects such as an Order, OrderLineItem, Product, and so on.

### Web Application Development
- How the Web Works: A Primer for Newcomers to Web Development (or anyone, really) (https://silo.tips/download/web-application-development-2)
(Read both parts of the above article, link to second part is at the end of the provided link) (https://www.freecodecamp.org/news/how-the-web-works-a-primer-for-newcomers-to-web-development-or-anyone-really-b4584e63585c/)
