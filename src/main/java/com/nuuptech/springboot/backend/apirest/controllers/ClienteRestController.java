package com.nuuptech.springboot.backend.apirest.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.nuuptech.springboot.backend.apirest.models.entity.Cliente;
import com.nuuptech.springboot.backend.apirest.models.services.IClienteService;

@CrossOrigin(origins={"http://localhost:4200"})
@RestController
@RequestMapping("/api")
public class ClienteRestController {
	
	@Autowired
	private IClienteService clienteService;

    // Traer todos los registros	
	@GetMapping("/clientes")
	public List<Cliente>index(){
		return clienteService.findAll();
	}
	
	// Buscar cliente por ID	
	@GetMapping("/clientes/{id}")
	@ResponseStatus(HttpStatus.OK)
	public Cliente show(@PathVariable Long id) {
		return clienteService.findById(id);
	}

	// Guardar cliente
	@PostMapping("/clientes")
	@ResponseStatus(HttpStatus.CREATED)
	public Cliente create (@RequestBody Cliente cliente) {
		return clienteService.save(cliente);
	}
	
	// Actualizar datos cliente
	@PutMapping("/clientes/{id}")
	@ResponseStatus(HttpStatus.CREATED)
	public Cliente update(@RequestBody Cliente cliente, @PathVariable Long id) {
		Cliente clienteActual = clienteService.findById(id);
		clienteActual.setApellido(cliente.getApellido());
		clienteActual.setNombre(cliente.getNombre());
		clienteActual.setEmail(cliente.getEmail());
		
		return clienteService.save(clienteActual);
	}
	
	// Borrar cliente
	@DeleteMapping ("clientes/{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void delete (@PathVariable Long id) {
		clienteService.delete(id);
	}
}





























