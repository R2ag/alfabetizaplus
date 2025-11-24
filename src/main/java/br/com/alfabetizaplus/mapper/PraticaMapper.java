package br.com.alfabetizaplus.mapper;

import br.com.alfabetizaplus.dto.PraticaDTO;
import br.com.alfabetizaplus.entity.Pratica;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring", uses = {RespostaPossivelMapper.class})
public interface PraticaMapper {
    @Mapping(target = "respostas", source = "respostas")
    PraticaDTO toDTO(Pratica pratica);
}