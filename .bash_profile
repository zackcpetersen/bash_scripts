# virtualenv setup
source /usr/local/bin/virtualenvwrapper.sh
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PATH=$PATH:/usr/local/Cellar/openssl/1.0.2r/bin/
export PATH=$PATH:/usr/local/Cellar/postgresql\@9.6/9.6.13/bin/

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# export PATH

#Pyenv PATH
export PATH="/Users/zachpeterson/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Setting path for custom shell functions
export PATH="$PATH:/Users/zachpeterson/Desktop/scripts/"

# PATH for pipenv
export PATH="$PATH:/Users/zachpeterson/.local/bin"

# alias for postgres docker container
alias positron_database="sudo docker run --rm --name=pg-docker-9.3 -e POSTGRES_PASSWORD=postgres -d -p 5432:5432 -v ~/Library/Developer/docker/volumes/postgres:/var/lib/postgresql/data postgres:9.3"

# alias for back command
alias back="source back"

# alias for stat command
# alias stat="stat -x"

# alias for history search
alias hs="history | grep"

# other dumb commands
# read -sp "Password"
# echo -e "\nIncorrect. Self destruct initiated"
# say "Incorrect."
# for i in {3..1}
# do
# echo "$i"
# sleep 1
# done
# cmatrix

