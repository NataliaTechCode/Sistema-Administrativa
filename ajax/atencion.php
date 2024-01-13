<?php 
session_start();
require_once "../model/Atencion.php";
$atencion=new Atencion();
require_once "seguridad.php";
$seguridad=new seguridad();

$idusuario_session=$_SESSION['id_usuariop'];
$idatencion=isset($_POST["idatencion"])? $_POST["idatencion"]:"";
$fecha_atencion=isset($_POST["fecha_atencion"])? mb_strtoupper($_POST["fecha_atencion"]):"";
$idestudiante=isset($_POST["idestudiante"])? $_POST["idestudiante"]:"";
$accion_atencion=isset($_POST["accion_atencion"])? mb_strtoupper($_POST["accion_atencion"]):"";

switch ($_GET["op"]){
	case '0':
		$rspta=$atencion->listar();
 		//Vamos a declarar un array
 		$data= Array();

 		while ($reg = pg_fetch_assoc($rspta)){			
			$data[]=array(
				"0"=>($reg['condicionatencion'])?'<button class="btn btn-icon btn-neutral btn-icon-mini margin-0" onclick="mostrar('.$reg['idatencion'].')"><i class="bx bx-pencil"></i></button>'.
					'<button class="btn btn-icon btn-neutral btn-icon-mini margin-0" onclick="reporte_detalle('.$reg['idatencion'].')"><i class="fa fa-print"></i></button>'.
					'<button class="btn btn-icon btn-neutral btn-icon-mini margin-0" onclick="desactivar('.$reg['idatencion'].')"><i class="bx bx-trash"></i></button>':
					'<button class="btn btn-icon btn-neutral btn-icon-mini margin-0" onclick="mostrar('.$reg['idatencion'].')"><i class="bx bx-pencil"></i></button>'.
					'<button class="btn btn-icon btn-neutral btn-icon-mini margin-0" onclick="reporte_detalle('.$reg['idatencion'].')"><i class="fa fa-print"></i></button>'.
					'<button class="btn btn-icon btn-neutral btn-icon-mini margin-0" onclick="activar('.$reg['idatencion'].')"><i class="bx bxs-check-square"></i></button>',
				"1"=>$reg['nombreestudiante'],
                "2"=>$reg['accion_atencion'],
                "3"=>$reg['fecha_atencion'],
				"4"=>($reg['condicionatencion'])?'<span class="badge bg-primary">Activado</span>':
					'<span class="badge bg-danger">Desactivado</span>'
				);
		}
 		$results = array(
 			"sEcho"=>1, //Información para el datatables
 			"iTotalRecords"=>count($data), //enviamos el total registros al datatable
 			"iTotalDisplayRecords"=>count($data), //enviamos el total registros a visualizar
 			"aaData"=>$data);
 		echo json_encode($results);

	break;
	case '1':
		if (empty($idatencion)){
			$rspta=$atencion->insertar($fecha_atencion, $idestudiante, $accion_atencion);
			echo $rspta ? "1:El Artículo fué registrado" : "0:El Artículo no fué registrado";
		}
		else {
			$rspta=$atencion->editar($idatencion, $fecha_atencion, $idestudiante, $accion_atencion);
			echo $rspta ? "1:El Artículo fué actualizado" : "0:El Artículo no fué actualizado";
		}
	break;

	case '2':
		$rspta=$atencion->desactivar($idatencion);
 		echo $rspta ? "1:El Artículo fué Desactivado" : "0:El Artículo no fué Desactivado";
	break;

	case '3':
		$rspta=$atencion->activar($idatencion);
 		echo $rspta ? "1:El Artículo fué Activado" : "0:El Artículo no fué Activado";
	break;

	case '4':
		$rspta=$atencion->mostrar($idatencion);
 		//Codificar el resultado utilizando json
 		echo json_encode($rspta);
	break;
}
?>