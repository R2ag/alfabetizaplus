package br.com.alfabetizaplus.mapper;

import br.com.alfabetizaplus.dto.UsuarioDTO;
import br.com.alfabetizaplus.entity.Usuario;

public interface UsuarioMapper {
    UsuarioDTO toDTO(Usuario usuario);
    Usuario toEntity(UsuarioDTO usuarioDTO);
}
