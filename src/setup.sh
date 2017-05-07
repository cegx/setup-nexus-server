wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
bash Miniconda2-latest-Linux-x86_64.sh -b
export PATH=/home/dnanexus/miniconda2/bin:$PATH
 
conda config --add channels conda-forge
conda config --add channels defaults
conda config --add channels r
conda config --add channels bioconda
conda install -y deeptools
conda install -y R
conda install -y wiggletools
conda install -y epic

# move the old default version of R, so we use conda R instead
sudo mv /usr/bin/R /usr/bin/R2

export PATH=/home/dnanexus/miniconda2/bin:$PATH
echo "export PATH=/home/dnanexus/miniconda2/bin:$PATH" >> ~/.bashrc

wget https://julialang.s3.amazonaws.com/bin/linux/x64/0.5/julia-0.5.1-linux-x86_64.tar.gz
tar -xvf julia-0.5.1-linux-x86_64.tar.gz
export PATH=/home/dnanexus/julia-6445c82d00/bin:$PATH
# so other byobu screens have julia
echo "export PATH=/home/dnanexus/julia-6445c82d00/bin:$PATH" >> ~/.bashrc
julia /home/dnanexus/setup-nexus-server/src/julia-setup.jl

