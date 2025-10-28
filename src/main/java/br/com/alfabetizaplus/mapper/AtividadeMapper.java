package br.com.alfabetizaplus.mapper;

import br.com.alfabetizaplus.dto.AtividadeDTO;
import br.com.alfabetizaplus.entity.Atividade;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring", uses = {PraticaMapper.class})
public interface AtividadeMapper {
    AtividadeDTO toDTO(Atividade atividade);
}