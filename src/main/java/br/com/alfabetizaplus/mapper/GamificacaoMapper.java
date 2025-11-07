package br.com.alfabetizaplus.mapper;

import br.com.alfabetizaplus.dto.GamificacaoDTO;
import br.com.alfabetizaplus.entity.Gamificacao;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface GamificacaoMapper {
    GamificacaoDTO toDTO(Gamificacao gam);
}