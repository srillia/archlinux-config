
alias dwmr 'cd /home/srillia/mine/dwm && rm -rf config.h && sudo make install && rm -rf config.h *.o'
alias govs 'cd /home/srillia/.local/share/nvim/site/plugged/vimspector/'
alias vrc  'nvim ~/.config/nvim/init.vim'
alias vfc  'nvim ~/.config/fish/config.fish'

set GRADLE_OPTS "-Xdebug - Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5005" 
set GOHOME /home/srillia/go
set GRADLE_HOME /home/srillia/App/gradle-6.7.1
set JAVA_HOME /home/srillia/App/jdk-11.0.9
set MAVEN_HOME /home/srillia/App/apache-maven-3.6.3
set RUBY_HOEM /home/srillia/.gem/ruby/2.7.0/
set PATH $GRADLE_HOME/bin $GOHOME/bin $JAVA_HOME/bin $RUBY_HOEM/bin /home/srillia/.local/bin $MAVEN_HOME/bin $PATH 
#定义 fzf的alias 使用vim打开查寻到的文件
function fz 
    set result (find ~ 2>/dev/null | fzf)
    if test -f "$result"
      nvim $result
    else if test -d "$result"
      cd $result && ls
    end
end
