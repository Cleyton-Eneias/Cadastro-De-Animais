package br.com.cleyton.unicat.model;

import java.io.Serializable;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="animais")
public class Animal implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank(message = "O nome do animal é obrigatório.")
	@Column(nullable = true, length = 100)
	private String nome;

	@NotNull(message = "A idade do animal é obrigatória.")
	@Column(nullable = true)
	private int idade;

	@NotBlank(message = "A raça do animal é obrigatória.")
	@Column(nullable = true, length = 100)
	private String raca;

	@NotBlank(message = "O sexo do animal é obrigatório.")
	@Column(nullable = true, length = 100)
	private String sexo;

	@NotBlank(message = "O porte do animal é obrigatório.")
	@Column(nullable = true, length = 100)
	private String porte;

	@NotNull(message = "O peso do animal é obrigatório.")
	@Column(nullable = true)
	private float peso;

	@NotBlank(message = "A espécie do animal é obrigatória.")
	@Column(nullable = true, length = 100)
	private String especie;

	@Size(max = 255, message = "A personalidade do animal deve ter no máximo 255 caracteres.")
	@Column(nullable = true, length = 255)
	private String personalidade;

	// Getters e Setters

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public String getRaca() {
		return raca;
	}

	public void setRaca(String raca) {
		this.raca = raca;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getPorte() {
		return porte;
	}

	public void setPorte(String porte) {
		this.porte = porte;
	}

	public float getPeso() {
		return peso;
	}

	public void setPeso(float peso) {
		this.peso = peso;
	}

	public String getEspecie() {
		return especie;
	}

	public void setEspecie(String especie) {
		this.especie = especie;
	}

	public String getPersonalidade() {
		return personalidade;
	}

	public void setPersonalidade(String personalidade) {
		this.personalidade = personalidade;
	}

	// Construtores

	public Animal() {}

	public Animal(Long id, String especie, float peso, String porte, String personalidade, String nome, int idade, String raca, String sexo) {
		super();
		this.id = id;
		this.especie = especie;
		this.peso = peso;
		this.porte = porte;
		this.personalidade = personalidade;
		this.nome = nome;
		this.idade = idade;
		this.raca = raca;
		this.sexo = sexo;
	}
}
