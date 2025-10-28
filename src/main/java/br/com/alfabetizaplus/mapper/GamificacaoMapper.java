package br.com.alfabetizaplus.mapper;

import br.com.alfabetizaplus.dto.GamificacaoDTO;
import br.com.alfabetizaplus.entity.Gamificacao;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring")
public interface GamificacaoMapper {
    GamificacaoDTO toDTO(Gamificacao gamificacao);
}