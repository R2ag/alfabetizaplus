package br.com.alfabetizaplus.mapper;

import br.com.alfabetizaplus.dto.ConquistaDTO;
import br.com.alfabetizaplus.entity.Conquista;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface ConquistaMapper {
    ConquistaDTO toDTO(Conquista conquista);
}