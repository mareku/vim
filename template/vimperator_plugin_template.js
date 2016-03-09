//
// (プラグインファイル名).js
//
// LICENSE: {{{
//
//     This software distributable under the terms of an MIT-style license.
//
//     Copyright (c) 2009 snaka<snaka.gml@gmail.com>
//
//     Permission is hereby granted, free of charge, to any person obtaining a copy
//     of this software and associated documentation files (the "Software"), to deal
//     in the Software without restriction, including without limitation the rights
//     to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//     copies of the Software, and to permit persons to whom the Software is
//     furnished to do so, subject to the following conditions:
//
//     The above copyright notice and this permission notice shall be included in
//     all copies or substantial portions of the Software.
//
//     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//     IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//     FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//     AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//     LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//     OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//     THE SOFTWARE.
//
//     OSI page : http://opensource.org/licenses/mit-license.php
//     Japanese : http://sourceforge.jp/projects/opensource/wiki/licenses%2FMIT_license
//
// }}}

// PLUGIN INFO: {{{
let PLUGIN_INFO =
<VimperatorPlugin>
  <name>{NAME}</name>
  <description>プラグインの説明</description>
  <description lang="ja">プラグインの説明(日本語)</description>
  <minVersion>2.0pre</minVersion>
  <maxVersion>2.2pre</maxVersion>
  <updateURL>http://svn.coderepos.org/share/lang/javascript/vimperator-plugins/trunk/(プラグインのファイル名)</updateURL>
  <author mail="snaka.gml@gmail.com" homepage="http://vimperator.g.hatena.ne.jp/snaka72/">snaka</author>
  <license>MIT style license</license>
  <version>(バージョン)</version>
  <detail><![CDATA[
    == Subject ==

    == Commands ==

    == Global variables ==

    == Options ==

    == ToDo ==

  ]]></detail>
  <detail lang="ja"><![CDATA[
    == 概要 ==
    （プラグインの概要）

    == コマンド ==

    == グローバル変数 ==

    == オプション ==

    == ToDo ==

  ]]></detail>
</VimperatorPlugin>;
// }}}
let api = liberator.plugins.（プラグイン名）= (function(){
  // COMMAND //////////////////////////////////////////////////////////////{{{
    /* コマンドの実装 */
    /*
    commands.addUserCommand(
      ["commandName"],
      "description",
      function(args, bang) {
      }, {
        completer: function(context) {
          context.title = ["url", "title"];
          context.completions = [
            ["hoge", fuga"],
            ["hoge1", fuga1"],
          ];
        },
        bang: true,
      }
    );
     */
  // }}}
  // MAP //////////////////////////////////////////////////////////////////{{{
    /* マップの実装 */
    /*
    mappings.addUserMap((
      [modes.NORMAL],
      "description",
      function(args) {
        // do something
      }
    );
     */
  // }}}
  // PRIVATE //////////////////////////////////////////////////////////////{{{
  /* プライベートな関数群 */
  function fuga(a,b) {
  }
  // }}}
  // PUBLIC ///////////////////////////////////////////////////////////////{{{
  return {
    /* パブリックな関数を書く */
    /* この関数を呼び出す場合は api.hoge() という感じで呼び出す */
    hoge: function(a,b) {
    }
  };
  // }}}
})();

// vim:sw=2 ts=2 et si fdm=marker: