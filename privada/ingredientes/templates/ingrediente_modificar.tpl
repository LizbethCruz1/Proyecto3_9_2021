<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <script type="text/javascript" src="../js/expresiones_regulares.js"></script>
    <script type="text/javascript" src="js/validar_ingrediente.js "></script>
  </head>
<body>  
      <div class="formu_ingreso_datos">
      <form action="ingrediente_modificar1.php" method="post" name="formu">
        <h2>MODIFICAR INGREDIENTE </h2>
             {foreach item=r from=$ingredientes}     
                  
                 <input type="text" name="nombre" size="15" placeholder="Nombre" onkeyup="this.value=this.value.toUpperCase()"value="{$r.nombre}">(*)
                <p>
                  <input type="text" name="descrip_ingrediente" size="15" placeholder="descrip_ingrediente" onkeyup="this.value=this.value.toUpperCase()"value="{$r.descrip_ingrediente}">(*)
                </p>
                <p>
                  <input type="text" name="precio" value="{$r.precio}" size="15" placeholder="Precio" >
                </p>
                <p>
                  <input type="hidden" name="accion" value="">
                  <input type="hidden" name="id_ingrediente" value="{$r.id_ingrediente}">
                  <input type="button" value="Aceptar" onclick="validar();" class="boton2">
                  <input type="button" value="Cancelar" onclick="javascript:location.href='ingredientes.php';" class=boton2>
               </p>
          {/foreach}
             <p><b>(*)Campos Obligatorios</b></p>             
           </form>  
     </div> 
</body>
</html>