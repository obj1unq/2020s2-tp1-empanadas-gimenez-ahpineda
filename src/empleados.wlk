object gimenez{
	
	var fondoDeSueldos=300000
	
	method fondoDeSueldos(){return fondoDeSueldos}
	method pagoDeSueldos(unaPersona){
		unaPersona.pagoDeSueldo()
		fondoDeSueldos-=unaPersona.sueldo()
	}
}

object galvan{
	
	var sueldo=15000
	
	method cambioDeSueldo(unSueldo){sueldo=unSueldo}
	method sueldo(){return sueldo}
	method pagoDeSueldo(){}

}

object baigorria{
	
	var sueldo=0
	var empanadasVendidas=0
	var totalCobrado=sueldo
	
	method empanadasVendidas(cantDeEmpanadas){empanadasVendidas+=cantDeEmpanadas}
	method empanadasVendidas(){return empanadasVendidas}
	method pagoDeSueldo(){
		sueldo=self.empanadasVendidas()*15  
		totalCobrado+=sueldo
		empanadasVendidas=0}
	method totalCobrado(){return totalCobrado}
}