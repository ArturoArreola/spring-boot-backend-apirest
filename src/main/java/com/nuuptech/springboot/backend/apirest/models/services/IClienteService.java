package com.nuuptech.springboot.backend.apirest.models.services;

import java.util.List;
import com.nuuptech.springboot.backend.apirest.models.entity.Cliente;

public interface IClienteService {
	
	// Traer todos los registros
	public List<Cliente> findAll();
	
	// Buscar cliente por ID
	public Cliente findById(Long id);
	
	// Guardar cliente
	public Cliente save(Cliente cliente);
	
	// Borrar cliente
	public void delete (Long id);
}
