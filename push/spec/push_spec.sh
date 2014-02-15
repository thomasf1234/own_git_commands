#!/usr/bin/env bats


source lib/git_push_lib.sh

function set_up {
 #before  
}


#"describe 'github_compare_url'"
{
  function before {
    echo 'before test'
    
    mkdir ~/test
    cd ~/test
    git init
    git remote set origin 
    echo test > test_file
    git commit -am "test commit"
    git co -b test_branch
  }
  
  #"context 'we are inside the root dir of a git repository where we on a branch'"
  {
    @test "it 'should constuct the correct URL of for the compare page on github'" {
      URL=$(github_compare_url)
      [ "$URL" -eq "/compare/test_branch" ]
    }
  }
  
  function after {
    echo 'after test'
    rm -rf ~/test 
  }
}






#"describe 'open_url'"
{
  function before {
    echo 'before test'
  }
  
  #"context 'there are no instances of firefox currently running'"
  {
    @test "it 'should open a new window and hit the URL passed'" {
      URL='http://www.youtube.com'
      open_url $URL
      sleep 5 
      ACTIVE_WINDOW="$(wmctrl -l | grep 'YouTube - Mozilla Firefox$')"
      
      result=$?
      [ "$result" -eq 0 ]
    }
  }
  
  function after {
    echo 'after test'
    wmctrl -F -c 'YouTube - Mozilla Firefox'  #why no work 
  }
}


function tear_down {
  #echo $result
  
}

#have before and afters for each

#typhoeus


