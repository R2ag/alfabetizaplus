package br.com.alfabetizaplus.mapper;

import br.com.alfabetizaplus.dto.RespostaPossivelDTO;
import br.com.alfabetizaplus.entity.RespostaPossivel;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring")
public interface RespostaPossivelMapper {
    RespostaPossivelDTO toDTO(RespostaPossivel resposta);
}