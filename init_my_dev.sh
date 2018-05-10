cp .bash_aliases ~   # shortcuts for pipenv and django manage
cp .pipenv_install_while_lock_at_another_process.py ~  # script to make `pipenv install` faster
cp .switch_source_pipenv.py ~   # auto switch source to aliyun when pipenv create new env
cp .mg.py ~  # auto find django `manage.py` and run it at current of its parent directory
cp .vimrc ~   # custom vim
git config --global credential.helper store  # git push auto fill in username and password after first time
sudo cp django_manage.bash /etc/bash_completion.d/   # auto complete for command `mg`
python3 -m pip install -U ipython django pylint flake8 white black  --user  # python modules recommanded by douban dongweiming or the author of pipenv
source ~/.bashrc
