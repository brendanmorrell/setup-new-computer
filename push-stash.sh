f(){
  git stash-all;
  branch=$(git rev-parse --abbrev-ref HEAD);
  date=$(date "+%m-%d-%Y_%H.%M");
  spacer="_(stash_";
  name="$branch$spacer$date";
  name+=")";
  git cob $name;
  git stash apply;
  message_start="Savepoint stash push for ";
  full_message="$message_start$branch";
  git cm $full_message;
  git pocnv;
  git co -;
  git stash apply;
};f;
