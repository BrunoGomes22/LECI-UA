import cherrypy

class Node(object):
	@cherrypy.expose
	def index(self):
		return "Eu sou o índice do Node (Node.index)"
		
	@cherrypy.expose
	def page(self):
		return "Eu sou um método do Node (Node.page)"
		
class HTMLDocument(object):
	@cherrypy.expose
	def index(self):
		return open('documento.html')
		
class Actions(object):
	@cherrypy.expose
	def doLogin(self, username=None, password=None):
		return "Verificar as credenciais do utilizador" + username

class Form(object):
	def __init__(self):
		self.actions = Actions()
		
	@cherrypy.expose
	def index(self):
		cherrypy.response.headers["Content-Type"] = "text/html"
		return open("formulario.html")
		
		
class Root(object):
	def __init__(self):
		self.node = Node()
		self.html = HTMLDocument()
		self.form = Form()
		
	@cherrypy.expose
	def index(self):
		return "Eu sou o índice do Root (Root.index)"
		
	@cherrypy.expose
	def page(self):
		return "Eu sou um método do Root (Root.page)"
		
	
		
if __name__ == "__main__":
	cherrypy.tree.mount(Root(), "/")
	cherrypy.server.start()
		
