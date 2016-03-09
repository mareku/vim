#-------------------------------------------------------------------------------
# encoding: utf-8
# Name:        @{@expand('%:t')@}@
# Purpose:
#
# Author:      H.Nagayosi
#
# Created:     @{@strftime('%m/%d/%Y')@}@.
# Copyright:   (c) H.Nagayosi @{@strftime('%Y')@}@
# Licence:     <your licence>
#-------------------------------------------------------------------------------

def main():
    pass

if __name__ == '__main__':

    # 作業フォルダを変更
    os.chdir(os.path.dirname(sys.argv[0]) or '.')

    main()
