package br.com.alfabetizaplus.mapper;

import br.com.alfabetizaplus.dto.AulaDTO;
import br.com.alfabetizaplus.entity.Aula;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring", uses = {AtividadeMapper.class})
public interface AulaMapper {
    AulaDTO toDTO(Aula aula);
}