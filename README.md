# Gitlab-CICD-App-Base

## Lab Criando um Pipeline de Deploy de uma Aplicação Utilizando Gitlab, Docker e Kubernetes (GKE)

1) Para esse lab, o [registro de containers](https://docs.gitlab.com/ee/user/packages/container_registry/index.html) do próprio Gitlab será utilizado para facilitar a integração no processo de construção e publicação da imagem Docker da aplicação.
2) Para deploy no GKE, será necessário criar uma [conta de serviço](https://cloud.google.com/kubernetes-engine/docs/how-to/service-accounts) com permissões necessárias para conexão com o cluster.
3) Defina as variáveis da pipeline citadas abaixo no Gitlab em: `[Repo] -> Settings -> CI/CD -> Variables`
    - GCP_PROJECT_ID
    - GCP_SERVICE_KEY
    - GKE_CLUSTER_NAME
    - GKE_COMPUTE_REGION
