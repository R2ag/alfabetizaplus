package br.com.alfabetizaplus.mapper;

import br.com.alfabetizaplus.dto.PraticaDTO;
import br.com.alfabetizaplus.entity.Pratica;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring", uses = {RespostaPossivelMapper.class})
public interface PraticaMapper {
    PraticaDTO toDTO(Pratica pratica);
}