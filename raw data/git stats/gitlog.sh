#!/bin/bash

# Путь до директории с исходным кодом PostgreSQL
cd /home/pavel/postgresql

echo По месяцам 2019-2024
git log --since='2019-03-27' --until='2024-03-27' --format='%ad' --date='format:%m' master | sort | uniq -c

echo По дням 2019-2024:
git log --since='2019-03-27' --until='2024-03-27' --format='%ad' --date='format:%d' master | sort | uniq -c

echo Патчи за 2019-2024
git log --since='2019-03-27' --until='2024-03-27' --format='%ad' --date='format:%a' master | sort | uniq -c

echo Патчи за 2014-2019
git log --since='2014-03-27' --until='2019-03-27' --format='%ad' --date='format:%a' master | sort | uniq -c

echo Патчи за 2009-2014
git log --since='2009-03-27' --until='2014-03-27' --format='%ad' --date='format:%a' master | sort | uniq -c

echo Патчи за 2004-2009
git log --since='2004-03-27' --until='2009-03-27' --format='%ad' --date='format:%a' master | sort | uniq -c

echo Патчи за 1999-2004
git log --since='1999-03-27' --until='2004-03-27' --format='%ad' --date='format:%a' master | sort | uniq -c

echo Патчи за 1996-1999
git log --until='1999-03-27' --format='%ad' --date='format:%a' master | sort | uniq -c
