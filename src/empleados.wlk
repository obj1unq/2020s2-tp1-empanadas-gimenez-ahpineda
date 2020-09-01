object gimenez{
	
	var fondoDeSueldos=300000
	
	method fondo(){return fondoDeSueldos}
	method pagarSueldo(unaPersona){
		unaPersona.pagoDeSueldo()
		fondoDeSueldos-=unaPersona.sueldo()
	}
}

object galvan{
	
	var sueldo=15000
	var deuda=0
	var dinero=0
	
	method sueldo(unSueldo){sueldo=unSueldo}
	method sueldo(){return sueldo}
	method pagoDeSueldo() {
		var sobrante=0
		if(deuda<=sueldo){
			sobrante=sueldo-deuda
			deuda=0
			dinero+=sobrante
		}
		else{deuda-=sueldo}}
	
	method gastar(unMonto){   //no aclara si no le alcanza suma todo el gasto a deuda, o solo el faltante dinero
		var faltante=0
		if (dinero<unMonto){
			faltante=unMonto-dinero
			deuda+=faltante
			dinero=0}
		else{dinero-=unMonto}
	}
	
	method deuda(){return deuda}
	method dinero(){return dinero}

}

object baigorria{
	
	var sueldo=0
	var empanadasVendidas=0
	var totalCobrado=sueldo
	
	method vender(cantDeEmpanadas){empanadasVendidas+=cantDeEmpanadas}
	method venta(){return empanadasVendidas}
	method sueldo(){return sueldo}
	method pagoDeSueldo(){
		sueldo=self.venta()*15  
		totalCobrado+=sueldo
		empanadasVendidas=0}
	method totalCobrado(){return totalCobrado}
}