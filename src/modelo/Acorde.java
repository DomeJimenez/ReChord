package modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Acorde {
	@Id
	private String idAcorde;
	@Column
	private String formaAcorde;
	
	public String getIdAcorde() {
		return idAcorde;
	}
	public void setIdAcorde(String idAcorde) {
		this.idAcorde = idAcorde;
	}
	public String getFormaAcorde() {
		return formaAcorde;
	}
	public void setFormaAcorde(String formaAcorde) {
		this.formaAcorde = formaAcorde;
	}
}
