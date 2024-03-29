<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Opet Network</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js" integrity="sha384-PsUw7Xwds7x08Ew3exXhqzbhuEYmA2xnwc8BuD6SEr+UmEHlX8/MCltYEodzWA4u" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>
</head>
<body>
<header>
    <div class="container col-md-8 col-md-offset-3" style="float: right; width: 15%; padding-top: 5px; ">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Login
        </button>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">
            Cadastro
        </button>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: green">
                        <h5 class="modal-title" id="exampleModalLabel">Login</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="<%=request.getContextPath()%>/login" method="post">
                            <div class="form-group">
                                <label >E-Mail:</label>
                                <input type="text" class="form-control" id="email" placeholder="email" name="email" required/>
                            </div>
                            <div class="form-group">
                                <label >Senha:</label>
                                <input type="password" class="form-control" id="senha" placeholder="senha" name="senha" required/>
                            </div>
                            <button type="submit" class="btn btn-primary">Logar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: green">
                        <h5 class="modal-title" id="exampleModalLabel1">Login</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="<%=request.getContextPath()%>/register" method="post">
                            <div class="form-group">
                                <label >nome:</label>
                                <input type="text" class="form-control" id="nomeusuario" placeholder="nome do usuario" name="nomeusuario" required>
                            </div>
                            <div class="form-group">
                                <label >curso:</label>
                                <input type="text" class="form-control" id="curso" placeholder="curso" name="curso" required>
                            </div>
                            <div class="form-group">
                                <label >periodo:</label>
                                <input type="text" class="form-control" id="periodo" placeholder="periodo" name="periodo" required>
                            </div>
                            <div class="form-group">
                                <label >data de nascimento:</label>
                                <input type="date" class="form-control" id="dtnasc" placeholder="dtnasc" name="dtnasc" required>
                            </div>
                            <div class="form-group">
                                <label >senha:</label>
                                <input type="password" class="form-control" id="senha" placeholder="senha" name="senha" required>
                            </div>
                            <div class="form-group">
                                <label >email:</label>
                                <input type="email" class="form-control" id="email" placeholder="email" name="email" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
</header>
<div class="container col-md-8 col-md-offset-3">
    <img src="http://www.andrefelizardo.com.br/blog/wp-content/uploads/2015/11/em_construcao1.jpg" style="width: 100%;">
</div>
</body>
</html>