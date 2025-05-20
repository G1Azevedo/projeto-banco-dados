## ODBC (Open Database Connectivity) em Python

ODBC (Open Database Connectivity) é uma API padrão usada para acessar diferentes sistemas de gerenciamento de banco de dados (SGBDs) de forma independente do fornecedor. Com ele, é possível conectar uma aplicação a diversos bancos de dados usando um driver específico.

### Uso em Python

Em Python, o ODBC é utilizado principalmente através da biblioteca `pyodbc`, que permite estabelecer conexões com bancos de dados como SQL Server, PostgreSQL, MySQL, entre outros, por meio de drivers ODBC instalados no sistema.

### Vantagens do ODBC

- Compatibilidade com vários SGBDs.  
- Código da aplicação pode se manter praticamente o mesmo ao trocar o banco de dados.  
- Padronização de acesso a dados.

### Desvantagens

- Requer configuração prévia de drivers no sistema.  
- Pode apresentar diferenças de performance dependendo do driver.  
- Não oferece abstração de alto nível como ORMs.

## ORM (Object-Relational Mapping) em Python

ORM (Mapeamento Objeto-Relacional) é uma técnica que permite interagir com bancos de dados relacionais utilizando objetos da linguagem de programação. Em vez de escrever comandos SQL diretamente, o desenvolvedor manipula classes e objetos que representam tabelas e registros do banco de dados.

Isso facilita a manutenção do código, melhora a legibilidade e permite maior integração com os princípios da programação orientada a objetos.

### Framework utilizado: SQLAlchemy

Em Python, um dos frameworks ORM mais utilizados é o **SQLAlchemy**. Ele oferece uma interface poderosa para definir modelos de dados como classes Python, mapear essas classes para tabelas do banco de dados e realizar operações como inserção, consulta, atualização e remoção de forma abstrata.

### Vantagens do ORM

- Evita a escrita direta de SQL.  
- Melhora a integração entre código e banco de dados.  
- Facilita a manutenção e evolução da aplicação.  
- Reduz a possibilidade de erros de SQL ou de injeção de comandos maliciosos.

### Desvantagens

- Pode ter desempenho inferior ao uso direto de SQL em operações complexas.  
- Pode esconder detalhes importantes do banco de dados.  
- Curva de aprendizado para frameworks mais robustos como o SQLAlchemy.

