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
	
	method sueldo(unSueldo){sueldo=unSueldo}
	method sueldo(){return sueldo}
	method pagoDeSueldo(){}

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