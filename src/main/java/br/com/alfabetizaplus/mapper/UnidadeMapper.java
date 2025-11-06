package br.com.alfabetizaplus.mapper;

import br.com.alfabetizaplus.dto.UnidadeDTO;
import br.com.alfabetizaplus.entity.Unidade;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring", uses = {AulaMapper.class})
public interface UnidadeMapper {
    UnidadeDTO toDTO(Unidade unidade);
    Unidade toEntity(UnidadeDTO dto);
}