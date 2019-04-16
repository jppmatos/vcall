# Vcall
A variantcalling pipeline.
:warning: still in development :construction:
### How to run it
1. Have [Docker](https://www.docker.com/get-started) installed
2. Open Command Prompt
3. In Command Prompt type: 
```
docker pull jpmatos/vcall:0.2.2 (or other tag)
```
4. Config the config_docker.yaml by changing 'Dir_settings:', 'Settings:' and 'Threads':
5. In Command Prompt type:
```
docker run -v </your_directory/>:/mnt/share jpmatos/vcall:0.2.2 snakemake --snakefile /mnt/share/vcall-pipe.snake -p /mnt/share/repo/example_dataset/output/<analisis_to_make> --cores <n_of_avaliable_cores>
```
| Analisis_to_make:

> For comparation between Tumor and Normal reads:
```
/{your_read}.Normal_VS_Tumor_output.vcf 
```
> For Analisis of Copy-number variantes:
```
/{your_read}.my_reference.cnn
```
> For Annotation:
```
/{your_read}.exome_seq_final.vcf.gz
```
6. Then collect your output-file:
```
Output dir example:
/mnt/share/repo/example_dataset/output/T.vcf
```
#### Some suggestions:
* If your docker is slow, try this:
> Open docker container: 
```
docker run -v </your_directory/docker_folder>:/mnt/share/ jpmatos/vcall:0.2.2
```
> Then type: 
 ```
snakemake --snakefile /mnt/share/vcall-pipe.snake -p /mnt/share/repo/example_dataset/output/<your_read>.Normal_VS_Tumor_output.vcf --cores <n_of_avaliable_cores>
```


> This time the container will not close after the pipeline run.




:warning: still in development :construction:

