# Documentação Técnica - SportMax

## Servidor Web
Nginx

## Virtual Host
Arquivo criado em:
 /etc/nginx/sites-available/sportmax

Ativado com link simbólico em:
 /etc/nginx/sites-enabled/

## Logs Personalizados
- Acesso: /var/log/nginx/sportmax_access.log
- Erro: /var/log/nginx/sportmax_error.log

## Segurança Aplicada

- Diretório do site: /var/www/sportmax
- Permissões:
  - Diretórios: 755
  - Arquivos: 644
- Dono dos arquivos: usuário atual
- Página 404 personalizada
- Remoção do site default do Nginx

## Inicialização Automática
Comando aplicado:
sudo systemctl enable nginx