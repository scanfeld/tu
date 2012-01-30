package com.scanfeld
   {
      import flash.display.Graphics;
      import flash.events.Event;
      import flash.external. *;
      import flash.system.Security;
      import mx.controls.Alert;
      import mx.controls.Image;
      import mx.core.Application;
      import deng.fzip.FZip;
      import deng.fzip.FZipErrorEvent;
      import deng.fzip.FZipFile;
      import flash.display.Bitmap;
      import flash.display.BitmapData;
      import flash.display.Loader;
      import flash.events.Event;
      import flash.events.IOErrorEvent;
      import flash.events.ProgressEvent;
      import flash.geom.Matrix;
      import flash.geom.Rectangle;
      import flash.net.URLRequest;
      import flash.net.URLStream;
      import flash.net.URLVariables;
      import flash.utils.ByteArray;

      public dynamic class Tu
         {
            public var a: Application;
            public var cv: Canvas;
            public var g: Graphics;
            public var ax: Object;
            public var wi: Number;
            public var he: Number;
            public var bg: String;
            public var th: Number;
            public var thh: Number;
            public var ma: Number;
            public var sc: String;
            public var ss: String;
            public var xa: Array;
            public var ya: Array;
            public var xb: Array;
            public var yb: Array;
            public var lbl: Array;
            public var lind: int;
            public var img: Array;
            public var iind: int;
            public var cnv: Array;
            public var cind: int;
            public var clst: Array;
            public var olk: Array;
            public var obj: Array;
            public var ob: Object;
            public var ro: Object;
            public var oind: int;
            public var firstTask: Object;
            public var lastTask: Object;
            public var Ac: Number;
            public var Af: uint;
            public var Aq: Array;
            public var Ar: Object;
            public var xm: Array;
            public var ym: Array;
            public var zm: Array;
            public var fm: Array;
            public var ca: Array;
            public var ca1: Object;
            public var ca2: Object;
            public var ca3: Object;
            public var wch: String;
            static public var ZIP_TYPE_TEXT: int = 1;
            static public var ZIP_TYPE_STRING: int = 2;
            static public var ZIP_TYPE_INT: int = 3;
            static public var ZIP_TYPE_NUMBER: int = 4;
            static public var ZIP_TYPE_ARRAY: int = 5;
            static public var ZIP_TYPE_OBJECT: int = 6;
            static public var ZIP_METHOD_SET: int = 1;
            static public var ZIP_METHOD_LPUSH: int = 2;
            static public var ZIP_METHOD_RPUSH: int = 3;
            public var zip: FZip;
            public var zipStream: URLStream;
            public var zipData: ByteArray;
            public var zipString: String;
            public var zipCurFile: String;
            public var zipCurText: String;
            public var zipCurLine: String;
            public var zipCurPercent: Number;
            public var zipCurCount: int;
            public var zipExpCount: int;
            public var zipToLoad: Array;
            public var zipLoading: Boolean;
            public var zipVal: Object;
            public var zipCurVar: Object;
            public var zipError: Boolean;
            public var zipStart: Boolean;
            public var zipSet: Boolean;
            public var ldlk: Object;
            public var pt3: Array;
            public var fa3: Array;
            public var fc3: Array;
            public var lc3: Array;
            public var fp3: Array;
            public var tx3: Array;
            public var sc3: Array;
            public var te3: Array;
            public var tl3: Array;
            public var th3: Array;
            public var tc3: Array;
            public var mp3: Array;
            public var ma3: Array;
            public var mf3: Array;
            public var mm3: Array;
            public var mlk: Object;
            public var clk: Object;
            public var cik: Object;
            public var plk: Object;
            public var bm3: Array;
            public var bi3: Array;
            public var cpo: int;
            public var cfc: Array;
            public var clc: Array;
            public var ctc: Array;
            public var ctl: Number;
            public var cth: Number;
            public var ctx: String;
            public var csc: Array;
            public var cte: int;
            public var am: Number;
            public var al: Array;
            public var curLineAlpha: Number;

            public function Tu ( a: Application ) : void
               {
                  Security.allowDomain ( "*" );
                  Security.allowInsecureDomain ( "*" );
                  Aq = new Array ();
                  Ar: Number;
                  lbl = new Array ();
                  lind = 0;
                  img = new Array ();
                  iind = 0;
                  cnv = new Array ();
                  cind = 0;
                  clst = new Array ();
                  obj = new Array ();
                  olk = new Array ();
                  oind = 0;
                  pt3 = new Array ();
                  fa3 = new Array ();
                  fc3 = new Array ();
                  lc3 = new Array ();
                  fp3 = new Array ();
                  tx3 = new Array ();
                  sc3 = new Array ();
                  te3 = new Array ();
                  tl3 = new Array ();
                  th3 = new Array ();
                  tc3 = new Array ();
                  bm3 = new Array ();
                  bi3 = new Array ();
                  mp3 = new Array ();
                  ma3 = new Array ();
                  mf3 = new Array ();
                  mm3 = new Array ();
                  mlk = new Object ();
                  clk = new Object ();
                  cik = new Object ();
                  plk = new Object ();
                  ldlk = new Object ();
                  cfc = [0, 1, 1, 1];
                  clc = [1, 0, 0, 0, 1];
                  ctc = [2, 0, 0, 0, 1];
                  ctl = 10;
                  cth = 2;
                  ctx = '';
                  csc = [];
                  cte = 7;
                  cpo = 0;
                  am = 0.25;
                  al = [0, 0, 1];
                  mm3.push ( 0 );
                  ma3.push ( mi () );
                  mf3.push ( mi () );
                  mlk['i'] = 0;
                  updateMatrices ();
                  firstTask = null;
                  lastTask = null;
                  var p: Object = Application.application.parameters;
                  wi = Number ( p['wi'] );
                  he = Number ( p['he'] );
                  ma = Number ( p['ma'] );
                  bg = p['bg'];
                  sc = p['sc'];
                  ss = p['ss'];
                  sc = sc.replace ( new RegExp ( "\n", 'g' ), ' ' );
                  sc = sc.replace ( new RegExp ( "\r", 'g' ), ' ' );
                  sc = sc.replace ( new RegExp ( "_", 'g' ), ' ' );
                  xa = new Array ();
                  ya = new Array ();
                  xb = new Array ();
                  yb = new Array ();
                  xa.unshift ( ma );
                  xb.unshift ( wi - ma * 2 );
                  ya.unshift ( ma );
                  yb.unshift ( he - ma * 2 );
                  this.a = a;
                  a.addEventListener ( flash.events.Event.ENTER_FRAME, enterFrame );
                  a.setStyle ( "backgroundColor", bg );
                  a.setStyle ( "paddingTop", "0" );
                  a.setStyle ( "paddingBottom", "0" );
                  a.setStyle ( "paddingLeft", "0" );
                  a.setStyle ( "paddingRight", "0" );
                  a.clipContent = true;
                  a.horizontalScrollPolicy = 'off';
                  a.verticalScrollPolicy = 'off';
                  ExternalInterface.addCallback ( "fj", fj );
                  cv = new Canvas ();
                  cv.width = wi;
                  cv.height = he;
                  cv.x = 0;
                  cv.y = 0;
                  cv.clipContent = false;
                  cv.horizontalScrollPolicy = 'off';
                  cv.verticalScrollPolicy = 'off';
                  cnv.push ( cv );
                  clst.unshift ( cv );
                  cind ++;
                  a.addChild ( cv );
                  cv.rx = 0;
                  cv.ry = 0;

                  ca1 =
                     {
                        9: - 1, 0: - 2, 3: 2, 4: 0.575, 5: 2, 6: 0.5, a: 0, b: 0.25, c: 0.3333, d: 0.5, e: 0.6667, f: 0.75, g: 1, h: 0, i: 0.25, j: 0.3333, k: 0.5, l: 0.6667, m: 0.75, n: 1, o: 0, p: 0.25, q: 0.3333, r: 0.5, s: 0.6667, t: 0.75, u: 1, v: 0, w: 0.25, x: 0.3333, y: 0.5, z: 0.6667, 1: 0.75, 2: 1, A: 0, B: 0.25, C: 0.3333, D: 0.5, E: 0.6667, F: 0.75, G: 1, H: 0, I: 0.25, J: 0.3333, K: 0.5, L: 0.6667, M: 0.75, N: 1, O: 0, P: 0.25, Q: 0.3333, R: 0.5, S: 0.6667, T: 0.75, U: 1
                     };

                  ca2 =
                     {
                        9: - 1, 0: - 2, 3: 0.3333, 4: 0.575, 5: 0.5, 6: 1.5, a: 0, b: 0, c: 0, d: 0, e: 0, f: 0, g: 0, h: 0.25, i: 0.25, j: 0.25, k: 0.25, l: 0.25, m: 0.25, n: 0.25, o: 0.3333, p: 0.3333, q: 0.3333, r: 0.3333, s: 0.3333, t: 0.3333, u: 0.3333, v: 0.5, w: 0.5, x: 0.5, y: 0.5, z: 0.5, 1: 0.5, 2: 0.5, A: 0.6667, B: 0.6667, C: 0.6667, D: 0.6667, E: 0.6667, F: 0.6667, G: 0.6667, H: 0.75, I: 0.75, J: 0.75, K: 0.75, L: 0.75, M: 0.75, N: 0.75, O: 1, P: 1, Q: 1, R: 1, S: 1, T: 1, U: 1
                     };

                  ca3 =
                     {
                        A: 'a', B: 'b', C: 'c', D: 'd', E: 'e', F: 'f', G: 'g', H: 'h', I: 'i', J: 'j', K: 'k', L: 'l', M: 'm', N: 'n', O: 'o', P: 'p', Q: 'q', R: 'r', S: 's', T: 't', U: 'u', V: 'v', W: 'w', X: 'x', Y: 'y', Z: 'z'
                     };
                  ca = [];
                  makeChars ( 'A, OdU9w1, B, ac0gn02x02N0UQOa9vx, C, g0av0OU, D, a05Oa, E, gaOU9vz, F, gaO9vz, G, u0gd0av0OR0U2y, H, aO9gU9v2, I, ag9OU9dR, J, ag9dy06v, K, aO9gvU, L, aOU, M, OaygU, N, OaUg, O, d0av0OR0U20gd, P, Oa03A, Q, d0av0OR0U20gd9yU, R, Oa03A94U, S, u0gd0ah0vy02N0UR0OA, T, ag9dR, U, a0OR0Ug, V, aRg, W, aQySg, X, aU9gO, Y, ayg9yR, Z, agOU, 0, d0av0OR0U20gd, 1, pdR9OU, 2, o0ad0guOU, 3, o0ad0gu02yx9y02G0UR0OA, 4, 2veS, 5, gavy02N0UR0OA, 6, g0av0OR0UN02yv, 7, agQ, 8, d0ao0vy02u0gd9R0OA0vy02G0UR, 9, O0U20gd0ah0vy2', 0.6667, 0.3333 );
                  wch = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
                  zipToLoad = new Array ();
                  zipLoading = false;
                  zipVal = new Object ();
                  zipCurVar = null;
                  Af = 0;
                  init ()
               }

            public function makeChars ( n: String, a: Number, b: Number ) : void
               {
                  var z: Array = n.split ( ', ' );
                  for ( var i: int = 0; i < z.length; i += 2 )
                     {
                        makeChar ( z[i], z[i + 1], a, b )
                     }
               }

            public function makeChar ( c: String, n: String, a: Number, b: Number ) : void
               {
                  var z: Array = new Array ();
                  var yc: Number = 0;
                  var i: int = 0;
                  for ( i = 0; i < n.length; i ++ )
                     {
                        z.push ( ca1[n.charAt ( i ) ] );
                        z.push ( ca2[n.charAt ( i ) ] )
                     }

                  ca[c] = z;
                  z = new Array ();

                  if ( ca3[c] != null )
                     {
                        for ( i = 0; i < n.length; i ++ )
                           {
                              z.push ( ca1[n.charAt ( i ) ] );
                              yc = ca2[n.charAt ( i ) ];
                              if ( yc != - 1 && yc != - 2 ) yc = yc * a + b;
                              z.push ( yc )
                           }
                        ca[ca3[c]] = z
                     }
               }

            public function handleData ( n: String ) : void
               {
                  if ( n == 'sc' )
                     {
                        sc = zipVal['sc'];
                        sc = sc.replace ( new RegExp ( "\n", 'g' ), ' ' );
                        sc = sc.replace ( new RegExp ( "\r", 'g' ), ' ' );
                        sc = sc.replace ( new RegExp ( "_", 'g' ), ' ' );
                        code ()
                     }
               }

            public function zipLoad ( a: Array, z: String = '' ) : void
               {
                  zipToLoad.push ( a );
                  zipToLoad.push ( z );
                  zipCheck ()
               }

            public function zipLoadNow ( a: Array, z: String = '' ) : void
               {
                  zipToLoad.unshift ( z );
                  zipToLoad.unshift ( a );
                  zipCheck ()
               }

            public function zipCheck () : void
               {
                  var checking: Boolean = false;

                  if ( !zipLoading && zipToLoad.length > 0 )
                     {
                        var a: Array = zipToLoad[0];
                        var z: String = zipToLoad[1];
                        if ( checking ) Alert.show ( 'zipCheck: ' + a + ' ' + z );
                        var y: Array = z.split ( "\n" );
                        for ( var i: int = 0; i < y.length - 1; i ++ )
                           {
                              zipLine ( y[i] )
                           }

                        zipToLoad[1] = '';

                        if ( a.length > 0 )
                           {
                              var zname: String = a.shift ();
                              zipExpCount = 0;
                              zipCurCount = 0;

                              if ( zname.indexOf ( ".zip" ) > 0 )
                                 {
                                    zipLoading = true;
                                    zipCurLine = y[y.length - 1];
                                    zip = new FZip ();
                                    zip.addEventListener ( Event.OPEN, zipOnOpen );
                                    zip.addEventListener ( Event.COMPLETE, zipOnDone );
                                    zip.addEventListener ( "ioError", zipOnError );
                                    zip.addEventListener ( FZipErrorEvent.PARSE_ERROR, zipOnError );
                                    zipCurFile = zname;
                                    zipError = false;
                                    zipStart = true;
                                    zipSet = false;
                                    zip.load ( new URLRequest ( zname ) )
                                 }

                              else
                                 {
                                    zipLoading = true;
                                    zipStream = new URLStream ();
                                    zipData = new ByteArray ();
                                    zipString = '';
                                    zipStream.addEventListener ( Event.OPEN, zipOnOpen );
                                    zipStream.addEventListener ( ProgressEvent.PROGRESS, zipOnProgress );
                                    zipStream.addEventListener ( IOErrorEvent.IO_ERROR, zipOnError );
                                    zipStream.addEventListener ( Event.COMPLETE, zipOnComplete );
                                    zipCurFile = zname;
                                    zipError = false;
                                    zipStart = true;
                                    zipSet = false;
                                    zipStream.load ( new URLRequest ( zname ) )
                                 }
                           }

                        else
                           {
                              zipLine ( y[y.length - 1] );
                              zipLoaded ()
                           }
                     }
               }

            public function zipOnProgress ( e: Event ) : void
               {
                  zipStream.readBytes ( zipData, zipData.length );
                  zipString += zipData.toString ();
                  zipData = new ByteArray ();

                  if ( zipStart && zipString.length > 6 )
                     {
                        zipStart = false;

                        if ( zipString.substr ( 0, 6 ) == ' < html > ' )
                           {
                              zipError = true
                           }
                     }
                  if ( !zipError ) zipCheckLines ()
               }

            public function zipCheckLines () : void
               {
                  while ( zipCheckLine () ){}
               }

            public function zipCheckLine () : Boolean
               {
                  var i: int = zipString.indexOf ( "\n" );

                  if ( i >= 0 )
                     {
                        zipLine ( zipString.substring ( 0, i ) );
                        zipString = zipString.substring ( i + 1, zipString.length );
                        return true
                     }
                  return false
               }

            public function zipOnComplete ( e: Event ) : void
               {
                  if ( !zipError )
                     {
                        zipCheckLines ();
                        if ( zipString != null && zipString.length > 0 ) zipLine ( zipString );
                        zipLoaded ()
                     }

                  else
                     {
                        zipLoading = false;
                        zipCheck ()
                     }
               }

            public function zipOnError ( e: Event ) : void
               {
                  zipLoading = false;
                  zipCheck ()
               }

            public function zipOnOpen ( e: Event ) : void{}

            public function zipOnSet ( n: String ) : void
               {
                  zipSet = true;
                  handleData ( n )
               }

            public function zipOnDone ( e: Event ) : void
               {
                  for ( var i: int = 0; i < zip.getFileCount (); i ++ )
                     {
                        var f: FZipFile = zip.getFileAt ( i );

                        if ( f.sizeUncompressed > 0 )
                           {
                              var s: ByteArray = f.content;
                              var l: int = f.sizeUncompressed;
                              var ss: String = s.readMultiByte ( l, 'utf - 8' );
                              var ssy: Array = ss.split ( "\n" );
                              for ( var j: int = 0; j < ssy.length; j ++ )
                                 {
                                    zipCurLine = ssy[j];
                                    zipLine ( zipCurLine );
                                    zipCurLine = ''
                                 }
                              zipLoaded ()
                           }
                     }
               }

            public function zipSetVar ( z: String ) : Object
               {
                  var v: Object = new Object ();
                  var y: Array = z.split ( ' ' );
                  v.name = y[0];
                  v.type = int ( y[1] );
                  v.size = 0;
                  v.vsize = 0;
                  if ( y.length > 2 ) v.size = int ( y[2] );
                  if ( y.length > 3 ) v.vsize = int ( y[3] );
                  if ( v.size > 0 ) v.arr = new Array ();
                  if ( v.vsize > 0 ) v.varr = new Array ();
                  zipSet = false;
                  return v
               }

            public function zipLine ( z: String ) : void
               {
                  if ( zipCurVar == null )
                     {
                        zipCurVar = zipSetVar ( z );
                        zipCurText = '';
                        zipExpCount = zipCurVar.size
                     }

                  else if ( zipCurVar.vsize > 0 && zipCurVar.varr.length < zipCurVar.vsize ) zipCurVar.varr.push ( zipSetVar ( z ) );

                  else
                     {
                        if ( zipCurVar.vsize > 0 )
                           {
                              if ( zipCurVar.size > 0 )
                                 {
                                    if ( zipCurVar.child == null )
                                       {
                                          zipCurVar.child = new Object ();
                                          zipCurVar.child.parent = zipCurVar;
                                          zipCurVar.vind = 0;
                                          zipCurVar.arr.push ( zipCurVar.child );
                                          zipCurCount ++
                                       }

                                    var cv: Object = zipCurVar.varr[zipCurVar.vind];

                                    if ( cv.type == ZIP_TYPE_STRING )
                                       {
                                          z = z.replace ( new RegExp ( "\\\\", 'g' ), ' < MIXSLASH > ' );
                                          z = z.replace ( new RegExp ( "\\n", 'g' ), "\n" );
                                          z = z.replace ( new RegExp ( "<MIXSLASH>", 'g' ), "\\\\" );
                                          zipCurVar.child[cv.name] = z
                                       }

                                    else if ( cv.type == ZIP_TYPE_INT ) zipCurVar.child[cv.name] = int ( z );
                                    else if ( cv.type == ZIP_TYPE_NUMBER ) zipCurVar.child[cv.name] = Number ( z );
                                    zipCurVar.vind ++;

                                    if ( zipCurVar.vind == zipCurVar.vsize )
                                       {
                                          zipCurVar.child = null;

                                          if ( zipCurVar.arr.length == zipCurVar.size )
                                             {
                                                if ( zipVal[zipCurVar.name] != null )
                                                   {
                                                      for ( var i: int = 0; i < zipCurVar.arr.length; i ++ ) zipVal[zipCurVar.name].push ( zipCurVar.arr[i] )
                                                   }

                                                else
                                                   {
                                                      zipVal[zipCurVar.name] = zipCurVar.arr
                                                   }

                                                zipOnSet ( zipCurVar.name );
                                                zipCurVar = null
                                             }
                                       }
                                 }
                           }

                        else
                           {
                              if ( zipCurVar.type == ZIP_TYPE_TEXT ) zipCurText += z + "\n";

                              else if ( zipCurVar.type == ZIP_TYPE_STRING )
                                 {
                                    z = z.replace ( new RegExp ( "\\\\", 'g' ), ' < MIXSLASH > ' );
                                    z = z.replace ( new RegExp ( "\\n", 'g' ), "\n" );
                                    z = z.replace ( new RegExp ( "<MIXSLASH>", 'g' ), "\\\\" );
                                    if ( zipCurVar.size > 0 ) zipCurVar.arr.push ( z );

                                    else
                                       {
                                          zipVal[zipCurVar.name] = z;
                                          zipOnSet ( zipCurVar.name )
                                       }
                                 }

                              else if ( zipCurVar.type == ZIP_TYPE_INT )
                                 {
                                    if ( zipCurVar.size > 0 ) zipCurVar.arr.push ( int ( z ) );

                                    else
                                       {
                                          zipVal[zipCurVar.name] = int ( z );
                                          zipOnSet ( zipCurVar.name )
                                       }
                                 }

                              else if ( zipCurVar.type == ZIP_TYPE_NUMBER )
                                 {
                                    if ( zipCurVar.size > 0 ) zipCurVar.arr.push ( Number ( z ) );

                                    else
                                       {
                                          zipVal[zipCurVar.name] = Number ( z );
                                          zipOnSet ( zipCurVar.name )
                                       }
                                 }

                              if ( zipCurVar.size > 0 && zipCurVar.arr.length == zipCurVar.size )
                                 {
                                    zipVal[zipCurVar.name] = zipCurVar.arr;
                                    zipOnSet ( zipCurVar.name );
                                    zipCurVar = null
                                 }
                           }
                     }
               }

            public function zipLoaded () : void
               {
                  if ( zipCurVar != null && zipCurVar.type == ZIP_TYPE_TEXT )
                     {
                        zipVal[zipCurVar.name] = zipCurText;
                        zipOnSet ( zipCurVar.name )
                     }

                  if ( zipCurVar != null && zipCurVar.name != null && zipCurVar.name.length > 0 && !zipSet )
                     {
                        zipOnSet ( zipCurVar.name )
                     }

                  zipCurText = '';
                  zipCurVar = null;
                  zipLoading = false;
                  zipToLoad.shift ();
                  zipToLoad.shift ();
                  zipCheck ()
               }

            public function enterFrame ( e: Event ) : void
               {
                  ans ()
               }

            public function addTask ( o: Object ) : void
               {
                  if ( firstTask == null )
                     {
                        firstTask = o;
                        lastTask = o
                     }

                  else
                     {
                        lastTask.right = o;
                        o.left = lastTask;
                        lastTask = o
                     }

                  obj[oind] = o;
                  if ( o.id == null ) o.id = oind;
                  olk[oind] = o;
                  olk[o.id] = o;
                  oind ++;
                  ob = o;
                  doTask ( o )
               }

            public function cl () : void
               {
                  var i: int;
                  g.clear ();
                  xa = new Array ();
                  ya = new Array ();
                  xb = new Array ();
                  yb = new Array ();
                  xa.unshift ( ma );
                  xb.unshift ( wi - ma * 2 );
                  ya.unshift ( ma );
                  yb.unshift ( he - ma * 2 );
                  for ( i = 0; i < lbl.length; i ++ ) lbl[i].visible = false;
                  lind = 0;
                  for ( i = 0; i < img.length; i ++ ) img[i].visible = false;
                  iind = 0;
                  for ( i = 0; i < cnv.length; i ++ )
                     {
                        cnv[i].removeAllChildren ();
                        cnv[i].graphics.clear ();
                        if ( i > 0 ) cnv[i].visible = false
                     }
                  cind = 1
               }

            public function createObject ( z: Array, yy: Array, t: String, v: String ) : void
               {
                  var i: int = 0;
                  var o: Object = null;
                  var ar: Array = [];
                  for ( i = 0; i < yy.length; i ++ ) ar[i] = yy[i].split ( ";" ); if ( yy.length > 1 )
                     {
                        yy[0] = yy[1];
                        yy = yy[0].split ( ";" )
                     }

                  else yy = null;

                  if ( t == 'an' || t == 'ss' || t == 'sf' || t == 'fs' || t == 'ff' )
                     {
                        if ( 1 == 2 && Aq.length > 0 ) o = Aq.pop ();
                        else o = new Object ()
                     }

                  else o = new Object ();
                  o.type = t;
                  o.ar = ar;
                  var y: Array = v.split ( ' ' );
                  for ( i = 0; i < y.length / 2; i ++ )
                     {
                        if ( i < z.length && z[i].length > 0 ) o[y[i * 2]] = z[i];
                        else o[y[i * 2]] = y[i * 2 + 1]
                     }

                  for ( i = y.length / 2; i < z.length; i += 2 ) o[z[i]] = z[i + 1];
                  if ( yy != null ) for ( i = 0;
                  i < yy.length / 2;
                  i ++ ) o[yy[i * 2]] = yy[i * 2 + 1];

                  if ( o.type == '3d' )
                     {
                        cnv[0].threed ( this, o );
                        o.pt = [ - 1, 1, 1, 0, 1, 1, 1, 0, 1, - 1, 1, 0, - 1, - 1, 1, 0, - 1, 1, - 1, 0, 1, 1, - 1, 0, 1, - 1, - 1, 0, - 1, - 1, - 1, 0];
                        o.ed = [0, 1, 1, 2, 2, 3, 3, 0, 4, 5, 5, 6, 6, 7, 7, 5, 0, 4, 1, 5, 2, 6, 3, 7];
                        o.fa = [[0, 1, 2, 3], [4, 7, 6, 5], [0, 4, 5, 1], [1, 5, 6, 2], [2, 6, 7, 3], [0, 3, 7, 4]]
                     }

                  if ( o != null )
                     {
                        if ( t == 'an' || t == 'ss' || t == 'sf' || t == 'fs' || t == 'ff' ) an ( o );
                        else addTask ( o )
                     }
               }

            public function mm ( a: Array, b: Array ) : Array
               {
                  var i: int, j: int, k: int;
                  var c: int = a.length / 4;
                  var z: Array = [];
                  for ( i = 0; i < c; i ++ )
                     {
                        for ( j = 0; j < 4; j ++ )
                           {
                              z[i * 4 + j] = 0
                           }
                     }

                  for ( i = 0; i < c; i ++ )
                     {
                        for ( j = 0; j < 4; j ++ )
                           {
                              for ( k = 0; k < 4; k ++ )
                                 {
                                    z[i * 4 + j] += a[i * 4 + k] * b[k * 4 + j]
                                 }
                           }
                     }
                  return z
               }

            public function mmi ( a: Array, b: Array, z: Array ) : void
               {
                  var i: int, j: int, k: int;
                  var c: int = a.length / 4;
                  for ( i = 0; i < c; i ++ )
                     {
                        for ( j = 0; j < 4; j ++ )
                           {
                              z[i * 4 + j] = 0
                           }
                     }

                  for ( i = 0; i < c; i ++ )
                     {
                        for ( j = 0; j < 4; j ++ )
                           {
                              for ( k = 0; k < 4; k ++ )
                                 {
                                    z[i * 4 + j] += a[i * 4 + k] * b[k * 4 + j]
                                 }
                           }
                     }
               }

            public function getPoint ( pt: Array ) : Array
               {
                  var i: int;
                  var dis: Number = ax.d;
                  var rad: Number = ax.r;
                  var pd: Array = mm ( pt, fm );
                  for ( i = 0; i < pd.length; i += 4 )
                     {
                        pd[i] = ( pd[i] * ( dis + pd[i + 2] ) / dis ) / ( 2 * rad ) + 0.5;
                        pd[i + 1] = ( pd[i + 1] * ( dis + pd[i + 2] ) / dis ) / ( 2 * rad ) + 0.5
                     }
                  return pd
               }

            public function point ( p: Array, o: Object ) : void
               {
                  var i: int = 0;
                  var j: int = 0;
                  var q: Array = o.ar[3];
                  var ab: Array = o.ar[4];
                  var rad: Number = o.ra;
                  var np: int = p.length / 4;
                  var mi: int = ab[i] * 1;
                  var ma: int = ab[i] * 1;
                  for ( i = 0; i < np; i ++ )
                     {
                        if ( ab[i] * 1 < mi ) mi = ab[i] * 1;
                        if ( ab[i] * 1 > ma ) ma = ab[i] * 1
                     }

                  var rp: Number = rad;
                  rad = rad * Math.min ( xc ( 1 ) - xc ( 0 ), yc ( 1 ) - yc ( 0 ) );
                  var z: Array = new Array ();
                  for ( i = 0; i < np; i ++ )
                     {
                        z.push ( p[i * 4 + 2] )
                     }

                  var ind: Array = z.sort ( Array.NUMERIC | Array.RETURNINDEXEDARRAY );
                  for ( j = 0; j < np; j ++ )
                     {
                        i = ind[j];

                        if ( o.hi >= mi && o.hi < ma + 1 && ab[i] * 1 == Math.floor ( o.hi ) )
                           {
                              g.lineStyle ( th, hsv ( 0, 0, 0 ), q[i * 4 + 3] );
                              g.beginFill ( hsv ( q[i * 4 + 0], q[i * 4 + 1], q[i * 4 + 2] ), q[i * 4 + 3] )
                           }

                        else if ( o.hi >= mi && o.hi < ma + 1 && ab[i] * 1 != Math.floor ( o.hi ) )
                           {
                              g.lineStyle ( th, hsv ( 0, 0, 0 ), o.ha );
                              g.beginFill ( hsv ( q[i * 4 + 0], q[i * 4 + 1], q[i * 4 + 2] ), o.ha )
                           }

                        else
                           {
                              g.lineStyle ( th, hsv ( 0, 0, 0 ), q[i * 4 + 3] );
                              g.beginFill ( hsv ( q[i * 4 + 0], q[i * 4 + 1], q[i * 4 + 2] ), q[i * 4 + 3] )
                           }

                        g.drawCircle ( xc ( ( p[i * 4 + 0] - 0.5 ) * ( 1 - rp ) + 0.5 ), yc ( ( p[i * 4 + 1] - 0.5 ) * ( 1 - rp ) + 0.5 ), rad * ( ( ax.d * 1 + p[i * 4 + 2] ) / ax.d ) );
                        g.endFill ();
                        pointText ( ab[i], xc ( ( p[i * 4 + 0] - 0.5 ) * ( 1 - rp ) + 0.5 ), yc ( ( p[i * 4 + 1] - 0.5 ) * ( 1 - rp ) + 0.5 ), rad * ( ( ax.d * 1 + p[i * 4 + 2] ) / ax.d ) )
                     }
               }

            public function pointText ( s: String, x: Number, y: Number, r: Number ) : void
               {
                  if ( s.length == 1 ) threec ( s.charAt ( 0 ), x + r / 4, y + r / 2, x - r / 4, y + r / 2, x - r / 4, y - r / 2, x + r / 4, y - r / 2 );

                  else if ( s.length > 1 )
                     {
                        threec ( s.charAt ( 0 ), x + r / 2, y + r / 2, x + r / 16, y + r / 2, x + r / 16, y - r / 2, x + r / 2, y - r / 2 );
                        threec ( s.charAt ( 1 ), x - r / 16, y + r / 2, x - r / 2, y + r / 2, x - r / 2, y - r / 2, x - r / 16, y - r / 2 )
                     }
               }

            public function threec ( s: String, x: Number, y: Number, x2: Number, y2: Number, x3: Number, y3: Number, x4: Number, y4: Number ) : void
               {
                  var cha: Array = ca[s];
                  var cx: Number = 0;
                  var cy: Number = 0;
                  var cx2: Number = 0;
                  var cy2: Number = 0;

                  if ( cha != null )
                     {
                        for ( var i: int = 0; i < cha.length; i += 2 )
                           {
                              if ( i == 0 )
                                 {
                                    cx = cha[i];
                                    cy = cha[i + 1];
                                    g.moveTo ( x + cx * ( x2 - x ) + cy * ( ( x4 + cx * ( x3 - x4 ) ) - ( x + cx * ( x2 - x ) ) ), y + cx * ( y2 - y ) + cy * ( ( y4 + cx * ( y3 - y4 ) ) - ( y + cx * ( y2 - y ) ) ) )
                                 }

                              else if ( cha[i] == - 2 )
                                 {
                                    i += 2;
                                    cx = cha[i];
                                    cy = cha[i + 1];
                                    i += 2;
                                    cx2 = cha[i];
                                    cy2 = cha[i + 1];
                                    g.curveTo ( x + cx * ( x2 - x ) + cy * ( ( x4 + cx * ( x3 - x4 ) ) - ( x + cx * ( x2 - x ) ) ), y + cx * ( y2 - y ) + cy * ( ( y4 + cx * ( y3 - y4 ) ) - ( y + cx * ( y2 - y ) ) ), x + cx2 * ( x2 - x ) + cy2 * ( ( x4 + cx2 * ( x3 - x4 ) ) - ( x + cx2 * ( x2 - x ) ) ), y + cx2 * ( y2 - y ) + cy2 * ( ( y4 + cx2 * ( y3 - y4 ) ) - ( y + cx2 * ( y2 - y ) ) ) )
                                 }

                              else if ( cha[i] < 0 )
                                 {
                                    i += 2;
                                    cx = cha[i];
                                    cy = cha[i + 1];
                                    g.moveTo ( x + cx * ( x2 - x ) + cy * ( ( x4 + cx * ( x3 - x4 ) ) - ( x + cx * ( x2 - x ) ) ), y + cx * ( y2 - y ) + cy * ( ( y4 + cx * ( y3 - y4 ) ) - ( y + cx * ( y2 - y ) ) ) )
                                 }

                              else
                                 {
                                    cx = cha[i];
                                    cy = cha[i + 1];
                                    g.lineTo ( x + cx * ( x2 - x ) + cy * ( ( x4 + cx * ( x3 - x4 ) ) - ( x + cx * ( x2 - x ) ) ), y + cx * ( y2 - y ) + cy * ( ( y4 + cx * ( y3 - y4 ) ) - ( y + cx * ( y2 - y ) ) ) )
                                 }
                           }
                     }
               }

            public function line ( p: Array, l: Array ) : void
               {
                  g.moveTo ( xc ( p[l[0] * 4] ), yc ( p[l[0] * 4 + 1] ) );
                  for ( var i: int = 1; i < l.length; i ++ )
                     {
                        if ( l[i] < 0 )
                           {
                              i ++;
                              g.moveTo ( xc ( p[l[i] * 4] ), yc ( p[l[i] * 4 + 1] ) )
                           }

                        else
                           {
                              g.lineTo ( xc ( p[l[i] * 4] ), yc ( p[l[i] * 4 + 1] ) )
                           }
                     }
               }

            public function faceIn ( p: Array, f: Array, h: Number, s: Number, v: Number, a: Number ) : void
               {
                  var np: int = 0;
                  for ( var i: int = 0; i < f.length; i ++ )
                     {
                        if ( isFaceIn ( p, f[i] ) )
                           {
                              g.beginFill ( hsv ( h, s, v ), a );
                              np = f[i].length;
                              g.moveTo ( xc ( p[f[i][0] * 4 + 0] ), yc ( p[f[i][0] * 4 + 1] ) );
                              for ( var j: int = 1; j < np; j ++ )
                                 {
                                    g.lineTo ( xc ( p[f[i][j] * 4 + 0] ), yc ( p[f[i][j] * 4 + 1] ) )
                                 }

                              g.lineTo ( xc ( p[f[i][0] * 4 + 0] ), yc ( p[f[i][0] * 4 + 1] ) );
                              g.endFill ()
                           }
                     }
               }

            public function faceOut ( p: Array, f: Array ) : void
               {
                  var np: int = 0;
                  for ( var i: int = 0; i < f.length; i ++ )
                     {
                        if ( !isFaceIn ( p, f[i] ) )
                           {
                              np = f[i].length;
                              g.moveTo ( xc ( p[f[i][0] * 4 + 0] ), yc ( p[f[i][0] * 4 + 1] ) );
                              for ( var j: int = 1; j < np; j ++ )
                                 {
                                    g.lineTo ( xc ( p[f[i][j] * 4 + 0] ), yc ( p[f[i][j] * 4 + 1] ) )
                                 }
                              g.lineTo ( xc ( p[f[i][0] * 4 + 0] ), yc ( p[f[i][0] * 4 + 1] ) )
                           }
                     }
               }

            public function isFaceIn ( p: Array, f: Array ) : Boolean
               {
                  var p1x: Number = xc ( p[f[0] * 4 + 0] ) - xc ( p[f[1] * 4 + 0] );
                  var p1y: Number = yc ( p[f[0] * 4 + 1] ) - yc ( p[f[1] * 4 + 1] );
                  var p2x: Number = xc ( p[f[2] * 4 + 0] ) - xc ( p[f[1] * 4 + 0] );
                  var p2y: Number = yc ( p[f[2] * 4 + 1] ) - yc ( p[f[1] * 4 + 1] );

                  if ( ( p1x * p2y - p1y * p2x ) >= 0 )
                     {
                        return true
                     }
                  return false
               }

            public function fx ( a: Number, b: Number, q: Array ) : Number
               {
                  return q[0] + a * ( q[2] - q[0] ) + b * ( ( q[6] + a * ( q[4] - q[6] ) ) - ( q[0] + a * ( q[2] - q[0] ) ) )
               }

            public function fy ( a: Number, b: Number, q: Array ) : Number
               {
                  return q[1] + a * ( q[3] - q[1] ) + b * ( ( q[7] + a * ( q[5] - q[7] ) ) - ( q[1] + a * ( q[3] - q[1] ) ) )
               }

            public function borderCode ( p: Array, v: Object ) : void
               {
                  var q: Array = [xc ( p[0] ), yc ( p[1] ), xc ( p[4] ), yc ( p[5] ), xc ( p[8] ), yc ( p[9] ), xc ( p[12] ), yc ( p[13] ) ];
                  var p0x: Number = v['p0x'];
                  var p0y: Number = v['p0y'];
                  var p1x: Number = v['p1x'];
                  var p1y: Number = v['p1y'];
                  var p2x: Number = v['p2x'];
                  var p2y: Number = v['p2y'];
                  var p3x: Number = v['p3x'];
                  var p3y: Number = v['p3y'];
                  g.lineStyle ( v['brw'], hsv ( v['brh'], v['brs'], v['brv'] ), v['bra'] );
                  g.moveTo ( fx ( p0x, p0y, q ), fy ( p0x, p0y, q ) );
                  g.lineTo ( fx ( p1x, p1y, q ), fy ( p1x, p1y, q ) );
                  g.lineTo ( fx ( p2x, p2y, q ), fy ( p2x, p2y, q ) );
                  g.lineTo ( fx ( p3x, p3y, q ), fy ( p3x, p3y, q ) );
                  g.lineTo ( fx ( p0x, p0y, q ), fy ( p0x, p0y, q ) )
               }

            public function bitmapCode ( p: Array, v: Object ) : void
               {
                  var nn: Boolean = v.bnn;
                  var na: Number = 0;
                  var nb: Number = 0;
                  var nc: Number = 0;
                  var nd: Number = 0;
                  var pa: Number = 0;
                  var pb: Number = 0;
                  var pc: Number = 0;
                  var pd: Number = 0;
                  var pe: Number = 0;
                  var flx: Number = 0;
                  var fly: Number = 0;
                  var cex: Number = 0;
                  var cey: Number = 0;
                  var ifn: String = v.bn;
                  var iwi: Number = v.bw;
                  var ihe: Number = v.bh;
                  var ial: Number = v.ba;
                  var curx: int = 0;
                  var totx: int = 0;
                  var cura: uint = 0;

                  if ( bi3.length < v.ind + 1 || bi3[v.ind] == null )
                     {
                        bm3[v.ind] = new BitmapData ( wi, he, true, 0 );
                        bi3[v.ind] = new BitmapData ( iwi, ihe, true, 0x00000000 );
                        var loader: Loader = new Loader ();
                        ldlk[loader.name] = bi3[v.ind];
                        loader.contentLoaderInfo.addEventListener ( Event.COMPLETE, imgComplete );
                        loader.contentLoaderInfo.addEventListener ( IOErrorEvent.IO_ERROR, imgError );
                        var r: URLRequest = new URLRequest ( ifn );
                        loader.load ( r )
                     }

                  var bme: BitmapData = bm3[v.ind];
                  var bmd: BitmapData = bi3[v.ind];
                  var q: Array = [xc ( p[0] ), yc ( p[1] ), xc ( p[4] ), yc ( p[5] ), xc ( p[8] ), yc ( p[9] ), xc ( p[12] ), yc ( p[13] ) ];
                  var w: int = ( wi / 2 );
                  var h: int = ( he / 2 );
                  var i: Number = 0;
                  var j: Number = 0;
                  bme.fillRect ( new Rectangle ( 0, 0, wi, he ), 0x00000000 );
                  var ax: Number = q[0];
                  var ay: Number = q[1];
                  var bx: Number = q[2];
                  var by: Number = q[3];
                  var cx: Number = q[4];
                  var cy: Number = q[5];
                  var dx: Number = q[6];
                  var dy: Number = q[7];
                  var ex: Number = 0;
                  var ey: Number = 0;
                  var fx: Number = 0;
                  var fy: Number = 0;
                  var gx: Number = 0;
                  var gy: Number = 0;
                  var hx: Number = 0;
                  var hy: Number = 0;
                  var ix: Number = 0;
                  var iy: Number = 0;
                  var jx: Number = 0;
                  var jy: Number = 0;
                  var ixi: Number = 0;
                  var iyi: Number = 0;
                  var jxi: Number = 0;
                  var jyi: Number = 0;
                  var xx: Number = 0;
                  var xxi: Number = 0;
                  var yy: Number = 0;
                  var yyi: Number = 0;
                  var sx: Number = 0;
                  var sxi: Number = 0;
                  var sy: Number = 0;
                  var syi: Number = 0;
                  var xst: Number = 0;
                  var xsti: Number = 0;
                  var xen: Number = 0;
                  var xeni: Number = 0;
                  var shadeMask: uint = ( Math.floor ( ( ial * v.lm * 255 ) ) << 24 ) | 0xFFFFFF;
                  if ( nn ) shadeMask = 0xFFFFFFFF;
                  var tpt: int = 0;

                  if ( by <= ay && by <= cy && by <= dy && cy <= ay )
                     {
                        ax = q[2];
                        ay = q[3];
                        bx = q[4];
                        by = q[5];
                        cx = q[6];
                        cy = q[7];
                        dx = q[0];
                        dy = q[1];
                        tpt = 3
                     }

                  else if ( ay <= by && ay <= cy && ay <= dy && dy <= by )
                     {
                        ax = q[6];
                        ay = q[7];
                        bx = q[0];
                        by = q[1];
                        cx = q[2];
                        cy = q[3];
                        dx = q[4];
                        dy = q[5];
                        tpt = 1
                     }

                  else if ( cy <= ay && cy <= by && cy <= dy )
                     {
                        if ( by <= dy )
                           {
                              ax = q[2];
                              ay = q[3];
                              bx = q[4];
                              by = q[5];
                              cx = q[6];
                              cy = q[7];
                              dx = q[0];
                              dy = q[1];
                              tpt = 3
                           }

                        else
                           {
                              ax = q[4];
                              ay = q[5];
                              bx = q[6];
                              by = q[7];
                              cx = q[0];
                              cy = q[1];
                              dx = q[2];
                              dy = q[3];
                              tpt = 2
                           }
                     }

                  else if ( dy <= ay && dy <= by && dy <= by )
                     {
                        if ( ay <= cy )
                           {
                              ax = q[6];
                              ay = q[7];
                              bx = q[0];
                              by = q[1];
                              cx = q[2];
                              cy = q[3];
                              dx = q[4];
                              dy = q[5];
                              tpt = 1
                           }

                        else
                           {
                              ax = q[4];
                              ay = q[5];
                              bx = q[6];
                              by = q[7];
                              cx = q[0];
                              cy = q[1];
                              dx = q[2];
                              dy = q[3];
                              tpt = 2
                           }
                     }

                  ax = Math.round ( ax );
                  ay = Math.round ( ay );
                  bx = Math.round ( bx );
                  by = Math.round ( by );
                  cx = Math.round ( cx );
                  cy = Math.round ( cy );
                  dx = Math.round ( dx );
                  dy = Math.round ( dy );

                  if ( tpt == 0 )
                     {
                        if ( ay < by )
                           {
                              ex = ax;
                              ey = ay;
                              fx = ax;
                              fy = ay;
                              gx = ax + ( dx - ax ) * ( by - ay ) / ( dy - ay );
                              gy = by;
                              hx = bx;
                              hy = by;
                              ix = 0;
                              jy = 0;
                              iy = 0;
                              iyi = ihe * 1.0 / ( dy - ay * 1.0 );
                              jx = 0;
                              jxi = iwi * 1.0 / ( gy - ey * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sx += sxi * ( Math.round ( xst ) - xst );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    sy += syi * ( Math.round ( xst ) - xst );
                                    totx = Math.round ( xen ) - Math.round ( xst ) + 1;
                                    curx = 0;

                                    if ( nn )
                                       {
                                          for ( i = Math.round ( xst ); i <= Math.round ( xen ); i ++ )
                                             {
                                                flx = Math.floor ( sx );
                                                cex = Math.ceil ( sx );
                                                fly = Math.floor ( sy );
                                                cey = Math.ceil ( sy );
                                                na = bmd.getPixel32 ( cex, cey );
                                                nb = bmd.getPixel32 ( cex, fly );
                                                nc = bmd.getPixel32 ( flx, cey );
                                                nd = bmd.getPixel32 ( flx, fly );
                                                pa = ( sx - flx + 0.0001 + sy - fly + 0.0001 );
                                                pb = ( sx - flx + cey - sy );
                                                pc = ( cex - sx + sy - fly );
                                                pd = ( cex - sx + cey - sy );
                                                pe = pa + pb + pc + pd;
                                                pa /= pe;
                                                pb /= pe;
                                                pc /= pe;
                                                pd /= pe;
                                                cura = 0xFF000000;
                                                if ( curx < 3 ) cura *= ( curx / 3.0 );
                                                else if ( curx >= totx - 3 ) cura *= ( ( totx - ( ( curx + 1 ) * 1.0 ) ) / 3.0 );
                                                na = cura + ( ( ( na & 0x00FF0000 ) * pa + ( nb & 0x00FF0000 ) * pb + ( nc & 0x00FF0000 ) * pc + ( nd & 0x00FF0000 ) * pd ) & 0x00FF0000 ) + ( ( ( na & 0x0000FF00 ) * pa + ( nb & 0x0000FF00 ) * pb + ( nc & 0x0000FF00 ) * pc + ( nd & 0x0000FF00 ) * pd ) & 0x0000FF00 ) + ( ( ( na & 0x000000FF ) * pa + ( nb & 0x000000FF ) * pb + ( nc & 0x000000FF ) * pc + ( nd & 0x000000FF ) * pd ) & 0x000000FF );
                                                bme.setPixel32 ( w + i, h + j, shadeMask & na );
                                                sx += sxi;
                                                sy += syi;
                                                curx ++
                                             }
                                       }

                                    else
                                       {
                                          for ( i = xst; i <= xen; i ++ )
                                             {
                                                bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( sx, sy ) );
                                                sx += sxi;
                                                sy += syi
                                             }
                                       }

                                    iy += iyi;
                                    jx += jxi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }

                        else if ( by < ay )
                           {
                              ex = bx;
                              ey = by;
                              fx = bx;
                              fy = by;
                              gx = ax;
                              gy = ay;
                              hx = bx + ( cx - bx ) * ( ay - by ) / ( cy - by );
                              hy = ay;
                              iy = 0;
                              jx = iwi;
                              ix = iwi;
                              ixi = iwi * 1.0 / ( gy - ey * 1.0 );
                              jy = 0;
                              jyi = ihe * 1.0 / ( cy - by * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sx += sxi * ( Math.round ( xst ) - xst );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    sy += syi * ( Math.round ( xst ) - xst );
                                    totx = Math.round ( xen ) - Math.round ( xst ) + 1;
                                    curx = 0;

                                    if ( nn )
                                       {
                                          for ( i = Math.round ( xst ); i <= Math.round ( xen ); i ++ )
                                             {
                                                flx = Math.floor ( sx );
                                                cex = Math.ceil ( sx );
                                                fly = Math.floor ( sy );
                                                cey = Math.ceil ( sy );
                                                na = bmd.getPixel32 ( cex, cey );
                                                nb = bmd.getPixel32 ( cex, fly );
                                                nc = bmd.getPixel32 ( flx, cey );
                                                nd = bmd.getPixel32 ( flx, fly );
                                                pa = ( sx - flx + 0.0001 + sy - fly + 0.0001 );
                                                pb = ( sx - flx + cey - sy );
                                                pc = ( cex - sx + sy - fly );
                                                pd = ( cex - sx + cey - sy );
                                                pe = pa + pb + pc + pd;
                                                pa /= pe;
                                                pb /= pe;
                                                pc /= pe;
                                                pd /= pe;
                                                cura = 0xFF000000;
                                                if ( curx < 3 ) cura *= ( curx / 3.0 );
                                                else if ( curx >= totx - 3 ) cura *= ( ( totx - ( ( curx + 1 ) * 1.0 ) ) / 3.0 );
                                                na = cura + ( ( ( na & 0x00FF0000 ) * pa + ( nb & 0x00FF0000 ) * pb + ( nc & 0x00FF0000 ) * pc + ( nd & 0x00FF0000 ) * pd ) & 0x00FF0000 ) + ( ( ( na & 0x0000FF00 ) * pa + ( nb & 0x0000FF00 ) * pb + ( nc & 0x0000FF00 ) * pc + ( nd & 0x0000FF00 ) * pd ) & 0x0000FF00 ) + ( ( ( na & 0x000000FF ) * pa + ( nb & 0x000000FF ) * pb + ( nc & 0x000000FF ) * pc + ( nd & 0x000000FF ) * pd ) & 0x000000FF );
                                                bme.setPixel32 ( w + i, h + j, shadeMask & na );
                                                sx += sxi;
                                                sy += syi;
                                                curx ++
                                             }
                                       }

                                    else
                                       {
                                          for ( i = xst; i <= xen; i ++ )
                                             {
                                                bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( sx, sy ) );
                                                sx += sxi;
                                                sy += syi
                                             }
                                       }

                                    ix -= ixi;
                                    jy += jyi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }

                        if ( by <= ay )
                           {
                              ex = ax;
                              ey = ay;
                              fx = bx + ( cx - bx ) * ( ay - by ) / ( cy - by );
                              fy = by + ( cy - by ) * ( ay - by ) / ( cy - by )
                           }

                        else
                           {
                              ex = ax + ( dx - ax ) * ( by - ay ) / ( dy - ay );
                              ey = ay + ( dy - ay ) * ( by - ay ) / ( dy - ay );
                              fx = bx;
                              fy = by
                           }

                        if ( dy <= cy )
                           {
                              gx = dx;
                              gy = dy;
                              hx = bx + ( cx - bx ) * ( dy - by ) / ( cy - by );
                              hy = by + ( cy - by ) * ( dy - by ) / ( cy - by )
                           }

                        else
                           {
                              gx = ax + ( dx - ax ) * ( cy - ay ) / ( dy - ay );
                              gy = ay + ( dy - ay ) * ( cy - ay ) / ( dy - ay );
                              hx = cx;
                              hy = cy
                           }

                        ix = 0;
                        iy = ihe * ( ( ey - ay * 1.0 ) / ( dy - ay * 1.0 ) );
                        iyi = ihe * 1.0 / ( dy - ay * 1.0 );
                        jx = iwi;
                        jy = ihe * ( ( fy - by * 1.0 ) / ( cy - by * 1.0 ) );
                        jyi = ihe * ( ( hy - fy * 1.0 ) / ( cy - by * 1.0 ) ) * ( 1.0 / ( gy - ey * 1.0 ) );
                        xst = ex;
                        xsti = ( gx - ex ) * ( 1.0 / ( gy - ey * 1.0 ) );
                        xen = fx;
                        xeni = ( hx - fx ) * ( 1.0 / ( hy - fy * 1.0 ) );
                        for ( j = ey; j <= gy; j ++ )
                           {
                              xx = ix;
                              xxi = ( jx * 1.0 - ix * 1.0 ) / ( xen * 1.0 - xst * 1.0 );
                              xx += xxi * ( Math.round ( xst ) - xst );
                              yy = iy;
                              yyi = ( jy * 1.0 - iy * 1.0 ) / ( xen * 1.0 - xst * 1.0 );
                              yy += yyi * ( Math.round ( xst ) - xst );
                              totx = Math.round ( xen ) - Math.round ( xst ) + 1;
                              curx = 0;

                              if ( nn )
                                 {
                                    for ( i = Math.round ( xst ); i <= Math.round ( xen ); i ++ )
                                       {
                                          flx = Math.floor ( xx );
                                          cex = Math.ceil ( xx );
                                          fly = Math.floor ( yy );
                                          cey = Math.ceil ( yy );
                                          na = bmd.getPixel32 ( cex, cey );
                                          nb = bmd.getPixel32 ( cex, fly );
                                          nc = bmd.getPixel32 ( flx, cey );
                                          nd = bmd.getPixel32 ( flx, fly );
                                          pa = ( xx - flx + 0.0001 + yy - fly + 0.0001 );
                                          pb = ( xx - flx + cey - yy );
                                          pc = ( cex - xx + yy - fly );
                                          pd = ( cex - xx + cey - yy );
                                          pe = pa + pb + pc + pd;
                                          pa /= pe;
                                          pb /= pe;
                                          pc /= pe;
                                          pd /= pe;
                                          cura = 0xFF000000;
                                          if ( curx < 3 ) cura *= ( curx / 3.0 );
                                          else if ( curx >= totx - 3 ) cura *= ( ( totx - ( ( curx + 1 ) * 1.0 ) ) / 3.0 );
                                          na = cura + ( ( ( na & 0x00FF0000 ) * pa + ( nb & 0x00FF0000 ) * pb + ( nc & 0x00FF0000 ) * pc + ( nd & 0x00FF0000 ) * pd ) & 0x00FF0000 ) + ( ( ( na & 0x0000FF00 ) * pa + ( nb & 0x0000FF00 ) * pb + ( nc & 0x0000FF00 ) * pc + ( nd & 0x0000FF00 ) * pd ) & 0x0000FF00 ) + ( ( ( na & 0x000000FF ) * pa + ( nb & 0x000000FF ) * pb + ( nc & 0x000000FF ) * pc + ( nd & 0x000000FF ) * pd ) & 0x000000FF );
                                          bme.setPixel32 ( w + i, h + j, shadeMask & na );
                                          xx += xxi;
                                          yy += yyi;
                                          curx ++
                                       }
                                 }

                              else
                                 {
                                    for ( i = xst; i <= xen; i ++ )
                                       {
                                          bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( xx, yy ) );
                                          xx += xxi;
                                          yy += yyi
                                       }
                                 }

                              iy += iyi;
                              jy += jyi;
                              xst += xsti;
                              xen += xeni
                           }

                        if ( cy < dy )
                           {
                              ex = dx + ( ax - dx ) * ( cy - dy ) / ( ay - dy );
                              ey = cy;
                              fx = cx;
                              fy = cy;
                              gx = dx;
                              gy = dy;
                              hx = dx;
                              hy = dy;
                              ix = 0;
                              jy = ihe;
                              iy = ihe * 1.0 * ( cy - ay * 1.0 ) / ( dy - ay * 1. );
                              iyi = ihe * 1.0 / ( dy - ay * 1.0 );
                              jx = iwi;
                              jxi = iwi * 1.0 / ( gy - ey * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sx += sxi * ( Math.round ( xst ) - xst );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    sy += syi * ( Math.round ( xst ) - xst );
                                    totx = Math.round ( xen ) - Math.round ( xst ) + 1;
                                    curx = 0;

                                    if ( nn )
                                       {
                                          for ( i = Math.round ( xst ); i <= Math.round ( xen ); i ++ )
                                             {
                                                flx = Math.floor ( sx );
                                                cex = Math.ceil ( sx );
                                                fly = Math.floor ( sy );
                                                cey = Math.ceil ( sy );
                                                na = bmd.getPixel32 ( cex, cey );
                                                nb = bmd.getPixel32 ( cex, fly );
                                                nc = bmd.getPixel32 ( flx, cey );
                                                nd = bmd.getPixel32 ( flx, fly );
                                                pa = ( sx - flx + 0.0001 + sy - fly + 0.0001 );
                                                pb = ( sx - flx + cey - sy );
                                                pc = ( cex - sx + sy - fly );
                                                pd = ( cex - sx + cey - sy );
                                                pe = pa + pb + pc + pd;
                                                pa /= pe;
                                                pb /= pe;
                                                pc /= pe;
                                                pd /= pe;
                                                cura = 0xFF000000;
                                                if ( curx < 3 ) cura *= ( curx / 3.0 );
                                                else if ( curx >= totx - 3 ) cura *= ( ( totx - ( ( curx + 1 ) * 1.0 ) ) / 3.0 );
                                                na = cura + ( ( ( na & 0x00FF0000 ) * pa + ( nb & 0x00FF0000 ) * pb + ( nc & 0x00FF0000 ) * pc + ( nd & 0x00FF0000 ) * pd ) & 0x00FF0000 ) + ( ( ( na & 0x0000FF00 ) * pa + ( nb & 0x0000FF00 ) * pb + ( nc & 0x0000FF00 ) * pc + ( nd & 0x0000FF00 ) * pd ) & 0x0000FF00 ) + ( ( ( na & 0x000000FF ) * pa + ( nb & 0x000000FF ) * pb + ( nc & 0x000000FF ) * pc + ( nd & 0x000000FF ) * pd ) & 0x000000FF );
                                                bme.setPixel32 ( w + i, h + j, shadeMask & na );
                                                sx += sxi;
                                                sy += syi;
                                                curx ++
                                             }
                                       }

                                    else
                                       {
                                          for ( i = xst; i <= xen; i ++ )
                                             {
                                                bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( sx, sy ) );
                                                sx += sxi;
                                                sy += syi
                                             }
                                       }

                                    iy += iyi;
                                    jx -= jxi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }

                        else if ( dy < cy )
                           {
                              ex = dx;
                              ey = dy;
                              fx = cx + ( bx - cx ) * ( dy - cy ) / ( by - cy );
                              fy = dy;
                              gx = cx;
                              gy = cy;
                              hx = cx;
                              hy = cy;
                              iy = ihe;
                              jx = iwi;
                              ix = 0;
                              ixi = iwi * 1.0 / ( gy - ey * 1.0 );
                              jy = ihe * 1.0 * ( dy - by * 1.0 ) / ( cy - by * 1.0 );
                              jyi = ihe * 1.0 / ( cy - by * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sx += sxi * ( Math.round ( xst ) - xst );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    sy += syi * ( Math.round ( xst ) - xst );
                                    totx = Math.round ( xen ) - Math.round ( xst ) + 1;
                                    curx = 0;

                                    if ( nn )
                                       {
                                          for ( i = Math.round ( xst ); i <= Math.round ( xen ); i ++ )
                                             {
                                                flx = Math.floor ( sx );
                                                cex = Math.ceil ( sx );
                                                fly = Math.floor ( sy );
                                                cey = Math.ceil ( sy );
                                                na = bmd.getPixel32 ( cex, cey );
                                                nb = bmd.getPixel32 ( cex, fly );
                                                nc = bmd.getPixel32 ( flx, cey );
                                                nd = bmd.getPixel32 ( flx, fly );
                                                pa = ( sx - flx + 0.0001 + sy - fly + 0.0001 );
                                                pb = ( sx - flx + cey - sy );
                                                pc = ( cex - sx + sy - fly );
                                                pd = ( cex - sx + cey - sy );
                                                pe = pa + pb + pc + pd;
                                                pa /= pe;
                                                pb /= pe;
                                                pc /= pe;
                                                pd /= pe;
                                                cura = 0xFF000000;
                                                if ( curx < 3 ) cura *= ( curx / 3.0 );
                                                else if ( curx >= totx - 3 ) cura *= ( ( totx - ( ( curx + 1 ) * 1.0 ) ) / 3.0 );
                                                na = cura + ( ( ( na & 0x00FF0000 ) * pa + ( nb & 0x00FF0000 ) * pb + ( nc & 0x00FF0000 ) * pc + ( nd & 0x00FF0000 ) * pd ) & 0x00FF0000 ) + ( ( ( na & 0x0000FF00 ) * pa + ( nb & 0x0000FF00 ) * pb + ( nc & 0x0000FF00 ) * pc + ( nd & 0x0000FF00 ) * pd ) & 0x0000FF00 ) + ( ( ( na & 0x000000FF ) * pa + ( nb & 0x000000FF ) * pb + ( nc & 0x000000FF ) * pc + ( nd & 0x000000FF ) * pd ) & 0x000000FF );
                                                bme.setPixel32 ( w + i, h + j, shadeMask & na );
                                                sx += sxi;
                                                sy += syi;
                                                curx ++
                                             }
                                       }

                                    else
                                       {
                                          for ( i = xst; i <= xen; i ++ )
                                             {
                                                bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( sx, sy ) );
                                                sx += sxi;
                                                sy += syi
                                             }
                                       }

                                    ix += ixi;
                                    jy += jyi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }
                     }

                  else if ( tpt == 1 )
                     {
                        iwi = bmd.height;
                        ihe = bmd.width;

                        if ( ay < by )
                           {
                              ex = ax;
                              ey = ay;
                              fx = ax;
                              fy = ay;
                              gx = ax + ( dx - ax ) * ( by - ay ) / ( dy - ay );
                              gy = by;
                              hx = bx;
                              hy = by;
                              ix = 0;
                              jy = 0;
                              iy = 0;
                              iyi = ihe * 1.0 / ( dy - ay * 1.0 );
                              jx = 0;
                              jxi = iwi * 1.0 / ( gy - ey * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    for ( i = xst; i <= xen; i ++ )
                                       {
                                          bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( sy, iwi - sx - 1 ) );
                                          sx += sxi;
                                          sy += syi
                                       }

                                    iy += iyi;
                                    jx += jxi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }

                        else if ( by < ay )
                           {
                              ex = bx;
                              ey = by;
                              fx = bx;
                              fy = by;
                              gx = ax;
                              gy = ay;
                              hx = bx + ( cx - bx ) * ( ay - by ) / ( cy - by );
                              hy = ay;
                              iy = 0;
                              jx = iwi;
                              ix = iwi;
                              ixi = iwi * 1.0 / ( gy - ey * 1.0 );
                              jy = 0;
                              jyi = ihe * 1.0 / ( cy - by * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    for ( i = xst; i <= xen; i ++ )
                                       {
                                          bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( sy, iwi - sx - 1 ) );
                                          sx += sxi;
                                          sy += syi
                                       }

                                    ix -= ixi;
                                    jy += jyi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }

                        if ( by <= ay )
                           {
                              ex = ax;
                              ey = ay;
                              fx = bx + ( cx - bx ) * ( ay - by ) / ( cy - by );
                              fy = by + ( cy - by ) * ( ay - by ) / ( cy - by )
                           }

                        else
                           {
                              ex = ax + ( dx - ax ) * ( by - ay ) / ( dy - ay );
                              ey = ay + ( dy - ay ) * ( by - ay ) / ( dy - ay );
                              fx = bx;
                              fy = by
                           }

                        if ( dy <= cy )
                           {
                              gx = dx;
                              gy = dy;
                              hx = bx + ( cx - bx ) * ( dy - by ) / ( cy - by );
                              hy = by + ( cy - by ) * ( dy - by ) / ( cy - by )
                           }

                        else
                           {
                              gx = ax + ( dx - ax ) * ( cy - ay ) / ( dy - ay );
                              gy = ay + ( dy - ay ) * ( cy - ay ) / ( dy - ay );
                              hx = cx;
                              hy = cy
                           }

                        ix = 0;
                        iy = ihe * ( ( ey - ay * 1.0 ) / ( dy - ay * 1.0 ) );
                        iyi = ihe * 1.0 / ( dy - ay * 1.0 );
                        jx = iwi;
                        jy = ihe * ( ( fy - by * 1.0 ) / ( cy - by * 1.0 ) );
                        jyi = ihe * ( ( hy - fy * 1.0 ) / ( cy - by * 1.0 ) ) * ( 1.0 / ( gy - ey * 1.0 ) );
                        xst = ex;
                        xsti = ( gx - ex ) * ( 1.0 / ( gy - ey * 1.0 ) );
                        xen = fx;
                        xeni = ( hx - fx ) * ( 1.0 / ( hy - fy * 1.0 ) );
                        for ( j = ey; j <= gy; j ++ )
                           {
                              xx = ix;
                              xxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                              yy = iy;
                              yyi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                              for ( i = xst; i <= xen; i ++ )
                                 {
                                    bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( yy, iwi - 1 - xx ) );
                                    xx += xxi;
                                    yy += yyi
                                 }

                              iy += iyi;
                              jy += jyi;
                              xst += xsti;
                              xen += xeni
                           }

                        if ( cy < dy )
                           {
                              ex = dx + ( ax - dx ) * ( cy - dy ) / ( ay - dy );
                              ey = cy;
                              fx = cx;
                              fy = cy;
                              gx = dx;
                              gy = dy;
                              hx = dx;
                              hy = dy;
                              ix = 0;
                              jy = ihe;
                              iy = ihe * 1.0 * ( cy - ay * 1.0 ) / ( dy - ay * 1. );
                              iyi = ihe * 1.0 / ( dy - ay * 1.0 );
                              jx = iwi;
                              jxi = iwi * 1.0 / ( gy - ey * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    for ( i = xst; i <= xen; i ++ )
                                       {
                                          bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( sy, iwi - 1 - sx ) );
                                          sx += sxi;
                                          sy += syi
                                       }

                                    iy += iyi;
                                    jx -= jxi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }

                        else if ( dy < cy )
                           {
                              ex = dx;
                              ey = dy;
                              fx = cx + ( bx - cx ) * ( dy - cy ) / ( by - cy );
                              fy = dy;
                              gx = cx;
                              gy = cy;
                              hx = cx;
                              hy = cy;
                              iy = ihe;
                              jx = iwi;
                              ix = 0;
                              ixi = iwi * 1.0 / ( gy - ey * 1.0 );
                              jy = ihe * 1.0 * ( dy - by * 1.0 ) / ( cy - by * 1.0 );
                              jyi = ihe * 1.0 / ( cy - by * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    for ( i = xst; i <= xen; i ++ )
                                       {
                                          bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( sy, iwi - 1 - sx ) );
                                          sx += sxi;
                                          sy += syi
                                       }

                                    ix += ixi;
                                    jy += jyi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }
                     }

                  else if ( tpt == 2 )
                     {
                        if ( ay < by )
                           {
                              ex = ax;
                              ey = ay;
                              fx = ax;
                              fy = ay;
                              gx = ax + ( dx - ax ) * ( by - ay ) / ( dy - ay );
                              gy = by;
                              hx = bx;
                              hy = by;
                              ix = 0;
                              jy = 0;
                              iy = 0;
                              iyi = ihe * 1.0 / ( dy - ay * 1.0 );
                              jx = 0;
                              jxi = iwi * 1.0 / ( gy - ey * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    for ( i = xst; i <= xen; i ++ )
                                       {
                                          bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( iwi - 1 - sx, ihe - 1 - sy ) );
                                          sx += sxi;
                                          sy += syi
                                       }

                                    iy += iyi;
                                    jx += jxi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }

                        else if ( by < ay )
                           {
                              ex = bx;
                              ey = by;
                              fx = bx;
                              fy = by;
                              gx = ax;
                              gy = ay;
                              hx = bx + ( cx - bx ) * ( ay - by ) / ( cy - by );
                              hy = ay;
                              iy = 0;
                              jx = iwi;
                              ix = iwi;
                              ixi = iwi * 1.0 / ( gy - ey * 1.0 );
                              jy = 0;
                              jyi = ihe * 1.0 / ( cy - by * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    for ( i = xst; i <= xen; i ++ )
                                       {
                                          bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( iwi - 1 - sx, ihe - 1 - sy ) );
                                          sx += sxi;
                                          sy += syi
                                       }

                                    ix -= ixi;
                                    jy += jyi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }

                        if ( by <= ay )
                           {
                              ex = ax;
                              ey = ay;
                              fx = bx + ( cx - bx ) * ( ay - by ) / ( cy - by );
                              fy = by + ( cy - by ) * ( ay - by ) / ( cy - by )
                           }

                        else
                           {
                              ex = ax + ( dx - ax ) * ( by - ay ) / ( dy - ay );
                              ey = ay + ( dy - ay ) * ( by - ay ) / ( dy - ay );
                              fx = bx;
                              fy = by
                           }

                        if ( dy <= cy )
                           {
                              gx = dx;
                              gy = dy;
                              hx = bx + ( cx - bx ) * ( dy - by ) / ( cy - by );
                              hy = by + ( cy - by ) * ( dy - by ) / ( cy - by )
                           }

                        else
                           {
                              gx = ax + ( dx - ax ) * ( cy - ay ) / ( dy - ay );
                              gy = ay + ( dy - ay ) * ( cy - ay ) / ( dy - ay );
                              hx = cx;
                              hy = cy
                           }

                        ix = 0;
                        iy = ihe * ( ( ey - ay * 1.0 ) / ( dy - ay * 1.0 ) );
                        iyi = ihe * 1.0 / ( dy - ay * 1.0 );
                        jx = iwi;
                        jy = ihe * ( ( fy - by * 1.0 ) / ( cy - by * 1.0 ) );
                        jyi = ihe * ( ( hy - fy * 1.0 ) / ( cy - by * 1.0 ) ) * ( 1.0 / ( gy - ey * 1.0 ) );
                        xst = ex;
                        xsti = ( gx - ex ) * ( 1.0 / ( gy - ey * 1.0 ) );
                        xen = fx;
                        xeni = ( hx - fx ) * ( 1.0 / ( hy - fy * 1.0 ) );
                        for ( j = ey; j <= gy; j ++ )
                           {
                              xx = ix;
                              xxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                              yy = iy;
                              yyi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                              for ( i = xst; i <= xen; i ++ )
                                 {
                                    bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( iwi - 1 - xx, ihe - 1 - yy ) );
                                    xx += xxi;
                                    yy += yyi
                                 }

                              iy += iyi;
                              jy += jyi;
                              xst += xsti;
                              xen += xeni
                           }

                        if ( cy < dy )
                           {
                              ex = dx + ( ax - dx ) * ( cy - dy ) / ( ay - dy );
                              ey = cy;
                              fx = cx;
                              fy = cy;
                              gx = dx;
                              gy = dy;
                              hx = dx;
                              hy = dy;
                              ix = 0;
                              jy = ihe;
                              iy = ihe * 1.0 * ( cy - ay * 1.0 ) / ( dy - ay * 1. );
                              iyi = ihe * 1.0 / ( dy - ay * 1.0 );
                              jx = iwi;
                              jxi = iwi * 1.0 / ( gy - ey * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    for ( i = xst; i <= xen; i ++ )
                                       {
                                          bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( iwi - 1 - sx, ihe - 1 - sy ) );
                                          sx += sxi;
                                          sy += syi
                                       }

                                    iy += iyi;
                                    jx -= jxi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }

                        else if ( dy < cy )
                           {
                              ex = dx;
                              ey = dy;
                              fx = cx + ( bx - cx ) * ( dy - cy ) / ( by - cy );
                              fy = dy;
                              gx = cx;
                              gy = cy;
                              hx = cx;
                              hy = cy;
                              iy = ihe;
                              jx = iwi;
                              ix = 0;
                              ixi = iwi * 1.0 / ( gy - ey * 1.0 );
                              jy = ihe * 1.0 * ( dy - by * 1.0 ) / ( cy - by * 1.0 );
                              jyi = ihe * 1.0 / ( cy - by * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    for ( i = xst; i <= xen; i ++ )
                                       {
                                          bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( iwi - 1 - sx, ihe - 1 - sy ) );
                                          sx += sxi;
                                          sy += syi
                                       }

                                    ix += ixi;
                                    jy += jyi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }
                     }

                  else if ( tpt == 3 )
                     {
                        iwi = bmd.height;
                        ihe = bmd.width;

                        if ( ay < by )
                           {
                              ex = ax;
                              ey = ay;
                              fx = ax;
                              fy = ay;
                              gx = ax + ( dx - ax ) * ( by - ay ) / ( dy - ay );
                              gy = by;
                              hx = bx;
                              hy = by;
                              ix = 0;
                              jy = 0;
                              iy = 0;
                              iyi = ihe * 1.0 / ( dy - ay * 1.0 );
                              jx = 0;
                              jxi = iwi * 1.0 / ( gy - ey * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    for ( i = xst; i <= xen; i ++ )
                                       {
                                          bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( ihe - 1 - sy, sx ) );
                                          sx += sxi;
                                          sy += syi
                                       }

                                    iy += iyi;
                                    jx += jxi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }

                        else if ( by < ay )
                           {
                              ex = bx;
                              ey = by;
                              fx = bx;
                              fy = by;
                              gx = ax;
                              gy = ay;
                              hx = bx + ( cx - bx ) * ( ay - by ) / ( cy - by );
                              hy = ay;
                              iy = 0;
                              jx = iwi;
                              ix = iwi;
                              ixi = iwi * 1.0 / ( gy - ey * 1.0 );
                              jy = 0;
                              jyi = ihe * 1.0 / ( cy - by * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    for ( i = xst; i <= xen; i ++ )
                                       {
                                          bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( ihe - 1 - sy, sx ) );
                                          sx += sxi;
                                          sy += syi
                                       }

                                    ix -= ixi;
                                    jy += jyi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }

                        if ( by <= ay )
                           {
                              ex = ax;
                              ey = ay;
                              fx = bx + ( cx - bx ) * ( ay - by ) / ( cy - by );
                              fy = by + ( cy - by ) * ( ay - by ) / ( cy - by )
                           }

                        else
                           {
                              ex = ax + ( dx - ax ) * ( by - ay ) / ( dy - ay );
                              ey = ay + ( dy - ay ) * ( by - ay ) / ( dy - ay );
                              fx = bx;
                              fy = by
                           }

                        if ( dy <= cy )
                           {
                              gx = dx;
                              gy = dy;
                              hx = bx + ( cx - bx ) * ( dy - by ) / ( cy - by );
                              hy = by + ( cy - by ) * ( dy - by ) / ( cy - by )
                           }

                        else
                           {
                              gx = ax + ( dx - ax ) * ( cy - ay ) / ( dy - ay );
                              gy = ay + ( dy - ay ) * ( cy - ay ) / ( dy - ay );
                              hx = cx;
                              hy = cy
                           }

                        ix = 0;
                        iy = ihe * ( ( ey - ay * 1.0 ) / ( dy - ay * 1.0 ) );
                        iyi = ihe * 1.0 / ( dy - ay * 1.0 );
                        jx = iwi;
                        jy = ihe * ( ( fy - by * 1.0 ) / ( cy - by * 1.0 ) );
                        jyi = ihe * ( ( hy - fy * 1.0 ) / ( cy - by * 1.0 ) ) * ( 1.0 / ( gy - ey * 1.0 ) );
                        xst = ex;
                        xsti = ( gx - ex ) * ( 1.0 / ( gy - ey * 1.0 ) );
                        xen = fx;
                        xeni = ( hx - fx ) * ( 1.0 / ( hy - fy * 1.0 ) );
                        for ( j = ey; j <= gy; j ++ )
                           {
                              xx = ix;
                              xxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                              yy = iy;
                              yyi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                              for ( i = xst; i <= xen; i ++ )
                                 {
                                    bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( ihe - 1 - yy, xx ) );
                                    xx += xxi;
                                    yy += yyi
                                 }

                              iy += iyi;
                              jy += jyi;
                              xst += xsti;
                              xen += xeni
                           }

                        if ( cy < dy )
                           {
                              ex = dx + ( ax - dx ) * ( cy - dy ) / ( ay - dy );
                              ey = cy;
                              fx = cx;
                              fy = cy;
                              gx = dx;
                              gy = dy;
                              hx = dx;
                              hy = dy;
                              ix = 0;
                              jy = ihe;
                              iy = ihe * 1.0 * ( cy - ay * 1.0 ) / ( dy - ay * 1. );
                              iyi = ihe * 1.0 / ( dy - ay * 1.0 );
                              jx = iwi;
                              jxi = iwi * 1.0 / ( gy - ey * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    for ( i = xst; i <= xen; i ++ )
                                       {
                                          bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( ihe - 1 - sy, sx ) );
                                          sx += sxi;
                                          sy += syi
                                       }

                                    iy += iyi;
                                    jx -= jxi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }

                        else if ( dy < cy )
                           {
                              ex = dx;
                              ey = dy;
                              fx = cx + ( bx - cx ) * ( dy - cy ) / ( by - cy );
                              fy = dy;
                              gx = cx;
                              gy = cy;
                              hx = cx;
                              hy = cy;
                              iy = ihe;
                              jx = iwi;
                              ix = 0;
                              ixi = iwi * 1.0 / ( gy - ey * 1.0 );
                              jy = ihe * 1.0 * ( dy - by * 1.0 ) / ( cy - by * 1.0 );
                              jyi = ihe * 1.0 / ( cy - by * 1.0 );
                              xst = ex;
                              xsti = ( gx - ex * 1.0 ) / ( gy - ey * 1.0 );
                              xen = fx;
                              xeni = ( hx - fx * 1.0 ) / ( hy - fy * 1.0 );
                              for ( j = ey; j <= gy; j ++ )
                                 {
                                    sx = ix;
                                    sxi = ( jx - ix * 1.0 ) / ( xen - xst * 1.0 );
                                    sy = iy;
                                    syi = ( jy - iy * 1.0 ) / ( xen - xst * 1.0 );
                                    for ( i = xst; i <= xen; i ++ )
                                       {
                                          bme.setPixel32 ( w + i, h + j, shadeMask & bmd.getPixel32 ( ihe - 1 - sy, sx ) );
                                          sx += sxi;
                                          sy += syi
                                       }

                                    ix += ixi;
                                    jy += jyi;
                                    xst += xsti;
                                    xen += xeni
                                 }
                           }
                     }

                  g.beginBitmapFill ( bme, new Matrix ( 1, 0, 0, 1, - w, - h ), false, true );
                  g.lineStyle ( 0, 0, 0 );
                  g.drawRect ( - w, - h, wi, he );
                  g.endFill ()
               }

            public function textCode ( p: Array, v: Object, lm: Number ) : void
               {
                  var q: Array = [xc ( p[0] ), yc ( p[1] ), xc ( p[4] ), yc ( p[5] ), xc ( p[8] ), yc ( p[9] ), xc ( p[12] ), yc ( p[13] ) ];
                  var s: String = v['te'];
                  var cw: Number = v['tw'] / v['wi'];
                  var ch: Number = v['th'] / v['he'];
                  var nu: Number = v['ts'] / v['wi'];
                  var cx: Number = 0;
                  var cy: Number = 0;
                  var cx2: Number = 0;
                  var cy2: Number = 0;
                  var i: int = 0;
                  var j: int = 0;
                  var cha: Array;
                  var cux: Number = v['tx'] - v.ta * ( s.length * cw + ( s.length - 1 ) * nu );
                  var cuy: Number = v['ty'] - v.tv * ch;
                  g.lineStyle ( v.tlw * ( v['tw'] / 0.1 ), hsv ( v.tlh, v.tls, v.tlv * lm ), v.tla );
                  for ( j = 0; j < s.length; j ++ )
                     {
                        cha = ca[s.charAt ( j ) ];

                        if ( cha != null )
                           {
                              for ( i = 0; i < cha.length; i += 2 )
                                 {
                                    if ( i == 0 )
                                       {
                                          cx = cux + cha[i] * cw;
                                          cy = cuy + cha[i + 1] * ch;
                                          g.moveTo ( q[0] + cx * ( q[2] - q[0] ) + cy * ( ( q[6] + cx * ( q[4] - q[6] ) ) - ( q[0] + cx * ( q[2] - q[0] ) ) ), q[1] + cx * ( q[3] - q[1] ) + cy * ( ( q[7] + cx * ( q[5] - q[7] ) ) - ( q[1] + cx * ( q[3] - q[1] ) ) ) )
                                       }

                                    else if ( cha[i] == - 2 )
                                       {
                                          i += 2;
                                          cx = cux + cha[i] * cw;
                                          cy = cuy + cha[i + 1] * ch;
                                          i += 2;
                                          cx2 = cux + cha[i] * cw;
                                          cy2 = cuy + cha[i + 1] * ch;
                                          g.curveTo ( q[0] + cx * ( q[2] - q[0] ) + cy * ( ( q[6] + cx * ( q[4] - q[6] ) ) - ( q[0] + cx * ( q[2] - q[0] ) ) ), q[1] + cx * ( q[3] - q[1] ) + cy * ( ( q[7] + cx * ( q[5] - q[7] ) ) - ( q[1] + cx * ( q[3] - q[1] ) ) ), q[0] + cx2 * ( q[2] - q[0] ) + cy2 * ( ( q[6] + cx2 * ( q[4] - q[6] ) ) - ( q[0] + cx2 * ( q[2] - q[0] ) ) ), q[1] + cx2 * ( q[3] - q[1] ) + cy2 * ( ( q[7] + cx2 * ( q[5] - q[7] ) ) - ( q[1] + cx2 * ( q[3] - q[1] ) ) ) )
                                       }

                                    else if ( cha[i] < 0 )
                                       {
                                          i += 2;
                                          cx = cux + cha[i] * cw;
                                          cy = cuy + cha[i + 1] * ch;
                                          g.moveTo ( q[0] + cx * ( q[2] - q[0] ) + cy * ( ( q[6] + cx * ( q[4] - q[6] ) ) - ( q[0] + cx * ( q[2] - q[0] ) ) ), q[1] + cx * ( q[3] - q[1] ) + cy * ( ( q[7] + cx * ( q[5] - q[7] ) ) - ( q[1] + cx * ( q[3] - q[1] ) ) ) )
                                       }

                                    else
                                       {
                                          cx = cux + cha[i] * cw;
                                          cy = cuy + cha[i + 1] * ch;
                                          g.lineTo ( q[0] + cx * ( q[2] - q[0] ) + cy * ( ( q[6] + cx * ( q[4] - q[6] ) ) - ( q[0] + cx * ( q[2] - q[0] ) ) ), q[1] + cx * ( q[3] - q[1] ) + cy * ( ( q[7] + cx * ( q[5] - q[7] ) ) - ( q[1] + cx * ( q[3] - q[1] ) ) ) )
                                       }
                                 }
                           }
                        cux += cw + nu
                     }
               }

            public function text ( p: Array, s: String, o: Object ) : void
               {
                  var i: int;
                  var j: int;
                  var q: Array = [xc ( p[0] ), yc ( p[1] ), xc ( p[4] ), yc ( p[5] ), xc ( p[8] ), yc ( p[9] ), xc ( p[12] ), yc ( p[13] ) ];
                  var numchr: Number = o.nc;
                  var ex: int = o.ex * 1;

                  if ( ex & 1 == 1 )
                     {
                        var mx: Number = q[7] + q[1] + Math.abs ( q[0] - q[6] );
                        var mi: int = 0;
                        for ( i = 1; i < 4; i ++ )
                           {
                              if ( q[i * 2 + 1] + q[ ( i - 1 ) * 2 + 1] + Math.abs ( q[i * 2] - q[ ( i - 1 ) * 2] ) > mx )
                                 {
                                    mi = i;
                                    mx = q[i * 2 + 1] + q[ ( i - 1 ) * 2 + 1] + Math.abs ( q[i * 2] - q[ ( i - 1 ) * 2] )
                                 }
                           }

                        var qq: Array = [];
                        for ( i = 0; i < 8; i ++ )
                           {
                              qq[i] = q[ ( i + ( mi + 1 ) * 2 ) %8]
                           }
                        q = qq
                     }

                  var ss: String = '';
                  var ls: int = 0;
                  var mh: int = 0;
                  var mv: int = 0;
                  var ps: int = - 1;
                  for ( i = 0; i < s.length; i ++ )
                     {
                        ls ++;

                        if ( ls > o.nc )
                           {
                              if ( s.charAt ( i ) == ' ' || s.charAt ( i ) == "\n" || ps == - 1 )
                                 {
                                    mh = Math.max ( mh, ls - 1 );
                                    mv ++;
                                    ss += "\n";
                                    ls = 1;
                                    if ( ps != - 1 ) i ++;
                                    ps = - 1
                                 }

                              else
                                 {
                                    mh = Math.max ( mh, ss.length - ( ls - ps ) );
                                    mv ++;
                                    ss = ss.substring ( 0, ss.length - ( ls - ps ) ) + "\n";
                                    i -= ( ls - ps - 1 );
                                    ls = 1;
                                    ps = - 1
                                 }
                           }

                        if ( i < s.length )
                           {
                              ss += s.charAt ( i );
                              if ( wch.indexOf ( s.charAt ( i ) ) < 0 ) ps = ls
                           }
                     }

                  mh = Math.max ( mh, ls );
                  mv ++;
                  s = ss;
                  var nu: Number = 1 / ( 8.0 * numchr );
                  var cx: Number = 0;
                  var cy: Number = 0;
                  var cx2: Number = 0;
                  var cy2: Number = 0;
                  var cw: Number = 6.0 / ( 8.0 * numchr );
                  var ch: Number = cw * o.ch;
                  var cux: Number = nu;
                  var cuy: Number = nu;
                  cux = 0.5 - ( mh * cw + ( mh - 1 ) * 2 * nu ) / 2;
                  cuy = 0.5 - ( mv * ch + ( mv - 1 ) * 2 * nu ) / 2;
                  var cha: Array = [];
                  for ( j = 0; j < s.length; j ++ )
                     {
                        cha = ca[s.charAt ( j ) ];

                        if ( cha != null )
                           {
                              for ( i = 0; i < cha.length; i += 2 )
                                 {
                                    if ( i == 0 )
                                       {
                                          cx = cux + cha[i] * cw;
                                          cy = cuy + cha[i + 1] * ch;
                                          g.moveTo ( q[0] + cx * ( q[2] - q[0] ) + cy * ( ( q[6] + cx * ( q[4] - q[6] ) ) - ( q[0] + cx * ( q[2] - q[0] ) ) ), q[1] + cx * ( q[3] - q[1] ) + cy * ( ( q[7] + cx * ( q[5] - q[7] ) ) - ( q[1] + cx * ( q[3] - q[1] ) ) ) )
                                       }

                                    else if ( cha[i] == - 2 )
                                       {
                                          i += 2;
                                          cx = cux + cha[i] * cw;
                                          cy = cuy + cha[i + 1] * ch;
                                          i += 2;
                                          cx2 = cux + cha[i] * cw;
                                          cy2 = cuy + cha[i + 1] * ch;
                                          g.curveTo ( q[0] + cx * ( q[2] - q[0] ) + cy * ( ( q[6] + cx * ( q[4] - q[6] ) ) - ( q[0] + cx * ( q[2] - q[0] ) ) ), q[1] + cx * ( q[3] - q[1] ) + cy * ( ( q[7] + cx * ( q[5] - q[7] ) ) - ( q[1] + cx * ( q[3] - q[1] ) ) ), q[0] + cx2 * ( q[2] - q[0] ) + cy2 * ( ( q[6] + cx2 * ( q[4] - q[6] ) ) - ( q[0] + cx2 * ( q[2] - q[0] ) ) ), q[1] + cx2 * ( q[3] - q[1] ) + cy2 * ( ( q[7] + cx2 * ( q[5] - q[7] ) ) - ( q[1] + cx2 * ( q[3] - q[1] ) ) ) )
                                       }

                                    else if ( cha[i] < 0 )
                                       {
                                          i += 2;
                                          cx = cux + cha[i] * cw;
                                          cy = cuy + cha[i + 1] * ch;
                                          g.moveTo ( q[0] + cx * ( q[2] - q[0] ) + cy * ( ( q[6] + cx * ( q[4] - q[6] ) ) - ( q[0] + cx * ( q[2] - q[0] ) ) ), q[1] + cx * ( q[3] - q[1] ) + cy * ( ( q[7] + cx * ( q[5] - q[7] ) ) - ( q[1] + cx * ( q[3] - q[1] ) ) ) )
                                       }

                                    else
                                       {
                                          cx = cux + cha[i] * cw;
                                          cy = cuy + cha[i + 1] * ch;
                                          g.lineTo ( q[0] + cx * ( q[2] - q[0] ) + cy * ( ( q[6] + cx * ( q[4] - q[6] ) ) - ( q[0] + cx * ( q[2] - q[0] ) ) ), q[1] + cx * ( q[3] - q[1] ) + cy * ( ( q[7] + cx * ( q[5] - q[7] ) ) - ( q[1] + cx * ( q[3] - q[1] ) ) ) )
                                       }
                                 }
                           }

                        cux += cw + 2 * nu;

                        if ( cux + cw > 1 || s.charAt ( j ) == "\n" )
                           {
                              if ( cux + cw > 1 && ( j + 1 < s.length && s.charAt ( j + 1 ) == "\n" ) ) j ++;
                              cuy += ch + 2 * nu;
                              cux = 0.5 - ( mh * cw + ( mh - 1 ) * 2 * nu ) / 2
                           }
                     }
               }

            public function updateMatrices () : void
               {
                  for ( var i: int = 0; i < ma3.length; i ++ )
                     {
                        if ( mm3[i] != i )
                           {
                              mmi ( ma3[i], mf3[mm3[i]], mf3[i] )
                           }
                     }
               }

            public function mi () : Array
               {
                  return [1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]
               }

            public function mxr ( a: Number ) : Array
               {
                  a = a * 2 * Math.PI;
                  return [1, 0, 0, 0, 0, Math.cos ( a ), Math.sin ( a ), 0, 0, - ( Math.sin ( a ) ), Math.cos ( a ), 0, 0, 0, 0, 1]
               }

            public function myr ( a: Number ) : Array
               {
                  a = a * 2 * Math.PI;
                  return [Math.cos ( a ), 0, - ( Math.sin ( a ) ), 0, 0, 1, 0, 0, Math.sin ( a ), 0, Math.cos ( a ), 0, 0, 0, 0, 1]
               }

            public function mt ( x: Number, y: Number, z: Number ) : Array
               {
                  return [1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, x, y, z, 1]
               }

            public function ms ( x: Number, y: Number, z: Number ) : Array
               {
                  return [x, 0, 0, 0, 0, y, 0, 0, 0, 0, z, 0, 0, 0, 0, 1]
               }

            public function mzr ( a: Number ) : Array
               {
                  a = a * 2 * Math.PI;
                  return [Math.cos ( a ), Math.sin ( a ), 0, 0, - ( Math.sin ( a ) ), Math.cos ( a ), 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]
               }

            public function norm ( a: Array ) : Array
               {
                  var b: Array = [0, 0, 0];
                  var i: int;
                  var v: Number = 0;
                  for ( i = 0; i < a.length; i ++ )
                     {
                        v += a[i] * a[i]
                     }

                  v = Math.pow ( v, 0.5 );
                  for ( i = 0; i < a.length; i ++ )
                     {
                        b[i] = a[i] / v
                     }
                  return b
               }

            public function threed ( o: Object ) : void
               {
                  var xa: Number, ya: Number, za: Number, a1: Number, a2: Number, a3: Number, b1: Number, b2: Number, b3: Number, i: int, ii: int, j: int;
                  var pi: Number = Math.PI;
                  xa = o.xa * 2 * pi;
                  ya = o.ya * 2 * pi;
                  za = o.za * 2 * pi;
                  var perp: Array = [0, 0, 1];
                  var pl: Number = 1;
                  var la: Number = 0;
                  var lm: Number = 0;
                  var sv: Object = new Object ();
                  var tpa: Array = new Array ();
                  xm = [1, 0, 0, 0, 0, Math.cos ( xa ), Math.sin ( xa ), 0, 0, - ( Math.sin ( xa ) ), Math.cos ( xa ), 0, 0, 0, 0, 1];
                  ym = [Math.cos ( ya ), 0, - ( Math.sin ( ya ) ), 0, 0, 1, 0, 0, Math.sin ( ya ), 0, Math.cos ( ya ), 0, 0, 0, 0, 1];
                  zm = [Math.cos ( za ), Math.sin ( za ), 0, 0, - ( Math.sin ( za ) ), Math.cos ( za ), 0, 0, 0, 0, 1, 0, 0, 0, 0, 1];
                  fm = mm ( mm ( ym, xm ), zm );

                  if ( o.br == 1 )
                     {
                        o.pc = getPoint ( o.pt );
                        faceIn ( o.pc, o.fa, o.h, o.s, o.v, o.a )
                     }

                  if ( pt3.length > 0 )
                     {
                        var p: Array = getPoint ( fp3 );
                        var np: int = 0;
                        var f: Array = fa3;
                        var z: Array = new Array ();
                        for ( i = 0; i < f.length; i ++ )
                           {
                              z.push ( 0 );
                              for ( j = 0; j < fa3[i].length; j ++ ) z[i] += p[fa3[i][j] * 4 + 2];
                              z[i] /= fa3[i].length
                           }

                        var ind: Array = z.sort ( Array.NUMERIC | Array.RETURNINDEXEDARRAY );
                        for ( ii = 0; ii < f.length; ii ++ )
                           {
                              i = ind[ii];

                              if ( !isFaceIn ( p, f[i] ) )
                                 {
                                    a1 = p[fa3[i][0] * 4 + 0] - p[fa3[i][1] * 4 + 0];
                                    a2 = p[fa3[i][0] * 4 + 1] - p[fa3[i][1] * 4 + 1];
                                    a3 = p[fa3[i][0] * 4 + 2] - p[fa3[i][1] * 4 + 2];
                                    b1 = p[fa3[i][2] * 4 + 0] - p[fa3[i][1] * 4 + 0];
                                    b2 = p[fa3[i][2] * 4 + 1] - p[fa3[i][1] * 4 + 1];
                                    b3 = p[fa3[i][2] * 4 + 2] - p[fa3[i][1] * 4 + 2];
                                    perp[0] = ( a2 * b3 - a3 * b2 );
                                    perp[1] = ( a3 * b1 - a1 * b3 );
                                    perp[2] = ( a1 * b2 - a2 * b1 );
                                    pl = Math.pow ( perp[0] * perp[0] + perp[1] * perp[1] + perp[2] * perp[2], 0.5 );
                                    perp[0] = perp[0] / pl;
                                    perp[1] = perp[1] / pl;
                                    perp[2] = perp[2] / pl;
                                    la = Math.abs ( Math.acos ( ( ( al[0] * perp[0] + al[1] * perp[1] + al[2] * perp[2] ) ) / ( Math.pow ( al[0] * al[0] + al[1] * al[1] + al[2] * al[2], 0.5 ) * Math.pow ( perp[0] * perp[0] + perp[1] * perp[1] + perp[2] * perp[2], 0.5 ) ) ) );
                                    lm = Math.sin ( Math.PI / 2 - Math.min ( la, Math.PI / 2 ) ) * ( 1 - am ) + am;
                                    g.lineStyle ( lc3[i][0], hsv ( lc3[i][1], lc3[i][2], lc3[i][3] * lm ), lc3[i][4] );
                                    g.beginFill ( hsv ( fc3[i][0], fc3[i][1], fc3[i][2] * lm ), fc3[i][3] );
                                    np = f[i].length;
                                    g.moveTo ( xc ( p[f[i][0] * 4 + 0] ), yc ( p[f[i][0] * 4 + 1] ) );
                                    for ( j = 1; j < np; j ++ )
                                       {
                                          g.lineTo ( xc ( p[f[i][j] * 4 + 0] ), yc ( p[f[i][j] * 4 + 1] ) )
                                       }

                                    g.lineTo ( xc ( p[f[i][0] * 4 + 0] ), yc ( p[f[i][0] * 4 + 1] ) );
                                    g.endFill ();
                                    tpa = [p[f[i][0] * 4 + 0], p[f[i][0] * 4 + 1], 0, 0, p[f[i][1] * 4 + 0], p[f[i][1] * 4 + 1], 0, 0, p[f[i][2] * 4 + 0], p[f[i][2] * 4 + 1], 0, 0, p[f[i][3] * 4 + 0], p[f[i][3] * 4 + 1], 0, 0];

                                    if ( tx3[i].length > 0 )
                                       {
                                          g.lineStyle ( tc3[i][0], hsv ( tc3[i][1], tc3[i][2], tc3[i][3] * lm ), tc3[i][4] );

                                          text ( tpa, tx3[i],
                                             {
                                                nc: tl3[i], ch: th3[i], ex: te3[i]
                                             })
                                       }

                                    if ( sc3[i].length > 0 )
                                       {
                                          sv['lm'] = lm;
                                          sv['pe'] = perp;
                                          sv['te'] = '';
                                          sv['tx'] = 0.05;
                                          sv['ty'] = 0.05;
                                          sv['th'] = 0.1;
                                          sv['tw'] = 0.05;
                                          sv['ts'] = 0.01;
                                          sv['ta'] = 0;
                                          sv['tv'] = 0;
                                          sv['tlw'] = 2;
                                          sv['tlh'] = 0;
                                          sv['tls'] = 0;
                                          sv['tlv'] = 0;
                                          sv['tla'] = 1;
                                          sv['ind'] = i;
                                          sv['bn'] = '';
                                          sv['bnn'] = 0;
                                          sv['bw'] = 100;
                                          sv['bh'] = 100;
                                          sv['ba'] = 1;
                                          sv['wi'] = Math.pow ( ( fp3[fa3[i][0] * 4] - fp3[fa3[i][1] * 4] ) * ( fp3[fa3[i][0] * 4] - fp3[fa3[i][1] * 4] ) + ( fp3[fa3[i][0] * 4 + 1] - fp3[fa3[i][1] * 4 + 1] ) * ( fp3[fa3[i][0] * 4 + 1] - fp3[fa3[i][1] * 4 + 1] ) + ( fp3[fa3[i][0] * 4 + 2] - fp3[fa3[i][1] * 4 + 2] ) * ( fp3[fa3[i][0] * 4 + 2] - fp3[fa3[i][1] * 4 + 2] ), 0.5 );
                                          sv['he'] = Math.pow ( ( fp3[fa3[i][2] * 4] - fp3[fa3[i][1] * 4] ) * ( fp3[fa3[i][2] * 4] - fp3[fa3[i][1] * 4] ) + ( fp3[fa3[i][2] * 4 + 1] - fp3[fa3[i][1] * 4 + 1] ) * ( fp3[fa3[i][2] * 4 + 1] - fp3[fa3[i][1] * 4 + 1] ) + ( fp3[fa3[i][2] * 4 + 2] - fp3[fa3[i][1] * 4 + 2] ) * ( fp3[fa3[i][2] * 4 + 2] - fp3[fa3[i][1] * 4 + 2] ), 0.5 );
                                          for ( var k: int = 0; k < sc3[i].length; k ++ )
                                             {
                                                if ( sc3[i][k] == 't' )
                                                   {
                                                      textCode ( tpa, sv, lm )
                                                   }

                                                else if ( sc3[i][k] == 'b' )
                                                   {
                                                      bitmapCode ( tpa, sv )
                                                   }

                                                else if ( sc3[i][k] == 'br' )
                                                   {
                                                      borderCode ( tpa, sv )
                                                   }

                                                else if ( i < sc3[i].length - 1 )
                                                   {
                                                      sv[sc3[i][k]] = sc3[i][k + 1];
                                                      k ++
                                                   }
                                             }
                                       }
                                 }
                           }
                     }
               }

            public function threedb ( o: Object ) : void
               {
                  var p: Object = olk[o.uid];

                  if ( p.br == 1 )
                     {
                        faceOut ( p.pc, p.fa )
                     }
               }

            public function threel ( o: Object ) : void
               {
                  if ( curLineAlpha > 0 ) line ( getPoint ( o.ar[2] ), o.ar[3] )
               }

            public function threep ( o: Object ) : void
               {
                  point ( getPoint ( o.ar[2] ), o )
               }

            public function threet ( o: Object ) : void
               {
                  var sq: Array = getPoint ( o.ar[2] );
                  if ( o.br == 1 ) line ( sq, [0, 1, 2, 3, 0] );
                  text ( sq, o.ar[3], o )
               }

            public function doTask ( o: Object ) : void
               {
                  if ( o.type == 'bf' ) g.beginFill ( hsv ( o.h, o.s, o.v ), o.a );
                  else if ( o.type == 'ci' ) g.drawCircle ( xc ( o.x ), yc ( o.y ), pw ( o.r ) );
                  else if ( o.type == 'cu' ) g.curveTo ( xc ( o.v ), yc ( o.w ), xc ( o.x ), yc ( o.y ) );
                  else if ( o.type == 'ef' ) g.endFill ();
                  else if ( o.type == 'lt' ) g.lineTo ( xc ( o.x ), yc ( o.y ) );
                  else if ( o.type == 'mt' ) g.moveTo ( xc ( o.x ), yc ( o.y ) );
                  else if ( o.type == 're' ) g.drawRect ( xc ( o.x ), yc ( o.y ) - ph ( o.h ), pw ( o.w ), ph ( o.h ) );
                  else if ( o.type == '3d' ) threed ( o );
                  else if ( o.type == '3db' ) threedb ( o );
                  else if ( o.type == '3l' ) threel ( o );
                  else if ( o.type == '3p' ) threep ( o );
                  else if ( o.type == '3t' ) threet ( o );
                  else if ( o.type == 'rr' ) g.drawRoundRect ( xc ( o.x ), yc ( o.y ) - ph ( o.h ), pw ( o.w ), ph ( o.h ), o.cx, o.cy );

                  else if ( o.type == 'li' )
                     {
                        th = o.w;
                        thh = th / 2;
                        g.lineStyle ( th, hsv ( o.h, o.s, o.v ), o.a );
                        curLineAlpha = o.a
                     }

                  else if ( o.type == 'xp' )
                     {
                        g.moveTo ( xc ( o.x[0] ), yc ( o.y[0] ) );
                        for ( var i: int = 1; i < o.x.length; i ++ ) g.lineTo ( xc ( o.x[i] ), yc ( o.y[i] ) )
                     }

                  else if ( o.type == 'po' )
                     {
                        xa.shift ();
                        ya.shift ();
                        xb.shift ();
                        yb.shift ();
                        clst.shift ();
                        cv = clst[0];
                        gr ( cv.graphics )
                     }

                  else if ( o.type == 'pu' )
                     {
                        var x: Number = xa[0] + o.x * ( xb[0] - xa[0] ) + o.nl * 1 + o.nu * 1;
                        var x2: Number = xa[0] + o.w * ( xb[0] - xa[0] ) - ( o.nl * 1 + o.nr * 1 + o.nu * 2 );
                        var y: Number = ya[0] + o.y * ( yb[0] - ya[0] ) + o.nt * 1 + o.nu * 1;
                        var y2: Number = ya[0] + o.h * ( yb[0] - ya[0] ) - ( o.nt * 1 + o.nb * 1 + o.nu * 2 );
                        xa.unshift ( x );
                        xb.unshift ( x + x2 );
                        ya.unshift ( y );
                        yb.unshift ( y + y2 );
                        var nc: Canvas;

                        if ( cind == cnv.length )
                           {
                              nc = new Canvas ();
                              nc.percentWidth = 100;
                              nc.percentHeight = 100;
                              nc.x = 0;
                              nc.y = 0;
                              nc.clipContent = false;
                              nc.horizontalScrollPolicy = 'off';
                              nc.verticalScrollPolicy = 'off';
                              cnv.push ( nc )
                           }

                        else
                           {
                              nc = cnv[cind];
                              nc.visible = true
                           }

                        nc.alpha = o.a;
                        nc.rotation = o.r;
                        nc.x = xa[0] + o.rx * ( xb[0] - xa[0] );
                        nc.y = ya[0] + o.ry * ( yb[0] - ya[0] );
                        nc.rx = o.rx;
                        nc.ry = o.ry;
                        nc.scaleX = o.sx;
                        nc.scaleY = o.sy;
                        cv.addChild ( nc );
                        cv = nc;
                        clst.unshift ( cv );
                        gr ( cv.graphics );
                        ro = cv;
                        cind ++
                     }

                  else if ( o.type == 'te' )
                     {
                        var xl: int = 0.5;
                        var yl: int = 0.5;
                        var ff: String = 'miarial';
                        var fs: int = 14;
                        var fw: String = 'normal';
                        var td: String = 'none';
                        if ( o.z.indexOf ( "l" ) >= 0 ) xl = 0;
                        if ( o.z.indexOf ( "c" ) >= 0 ) xl = 0.5;
                        if ( o.z.indexOf ( "r" ) >= 0 ) xl = 1;
                        if ( o.z.indexOf ( "t" ) >= 0 ) yl = 0;
                        if ( o.z.indexOf ( "m" ) >= 0 ) yl = 0.5;
                        if ( o.z.indexOf ( "b" ) >= 0 ) yl = 1;
                        if ( o.z.indexOf ( "B" ) >= 0 ) fw = "bold";
                        if ( o.z.indexOf ( "U" ) >= 0 ) td = "underline";
                        if ( o.z.indexOf ( "10" ) >= 0 ) fs = 10;
                        if ( o.z.indexOf ( "12" ) >= 0 ) fs = 12;
                        if ( o.z.indexOf ( "14" ) >= 0 ) fs = 14;
                        if ( o.z.indexOf ( "16" ) >= 0 ) fs = 16;
                        if ( o.z.indexOf ( "18" ) >= 0 ) fs = 18;
                        if ( o.z.indexOf ( "20" ) >= 0 ) fs = 20;
                        if ( o.z.indexOf ( "22" ) >= 0 ) fs = 22;
                        if ( o.z.indexOf ( "24" ) >= 0 ) fs = 24;
                        var lb: Label;

                        if ( lind == lbl.length )
                           {
                              lb = new Label ();
                              lbl.push ( lb )
                           }

                        else lb = lbl[lind];
                        lind ++;
                        if ( fw == 'bold' && ff == 'miarial' ) ff = 'miarialbld';
                        if ( fw == 'normal' && ff == 'miarialbld' ) ff = 'miarial';
                        lb.text = o.t;
                        lb.setStyle ( "fontFamily", ff );
                        lb.setStyle ( "fontSize", fs );
                        lb.setStyle ( "fontWeight", fw );
                        lb.setStyle ( "textDecoration", td );
                        lb.setPos ( xc ( o.x ), yc ( o.y ), xl, yl );
                        lb.visible = true;
                        cv.addChild ( lb )
                     }

                  else if ( o.type == 'im' )
                     {
                        var im: Image;

                        if ( iind == img.length )
                           {
                              im = new Image ();
                              img.push ( im )
                           }

                        else im = img[iind];
                        iind ++;
                        im.source = o.s;
                        im.maintainAspectRatio = false;
                        im.x = xc ( o.x );
                        im.y = yc ( o.y ) - ph ( o.h );
                        im.width = pw ( o.w );
                        im.height = ph ( o.h );
                        im.visible = true;
                        cv.addChild ( im )
                     }
               }

            public static function d2h ( h: Number, numDig: int = 0 ) : String
               {
                  var c: String = "0123456789ABCDEF";
                  var z: String = "";
                  var n: int = Math.round ( h );

                  while ( n > 0 )
                     {
                        var d: int = n%16;
                        n = ( n - d ) / 16;
                        z = c.charAt ( d ) + z
                     }

                  while ( z.length < numDig ) z = '0' + z;
                  return z
               }

            public function imgComplete ( e: Event ) : void
               {
                  var loader: Loader = Loader ( e.target.loader );
                  var image: Bitmap = Bitmap ( loader.content );
                  var bitmapData: BitmapData = image.bitmapData;
                  var bm: BitmapData = ( BitmapData )( ldlk[loader.name] );
                  var iwi: Number = bm.width;
                  var ihe: Number = bm.height;
                  for ( var k: int = 0; k < iwi; k ++ )
                     {
                        for ( var l: int = 0; l < ihe; l ++ )
                           {
                              bm.setPixel32 ( k, l, bitmapData.getPixel32 ( k, l ) )
                           }
                     }
                  up ()
               }

            public function imgError ( e: Event ) : void
               {
                  Alert.show ( 'error' )
               }

            public function fj ( s: String ) : void
               {
                  s = s.replace ( new RegExp ( "\n", 'g' ), '' );
                  var y: Array = s.split ( ' ' );
                  var len: int = y.length;
                  var ind: int = 0;
                  var t: String = '';
                  var z: Array = null;
                  var yy: Array = null;
                  var tmp: Object;
                  var updateFlag: Boolean = false;

                  while ( ind < len )
                     {
                        yy = y[ind].split ( ":" );
                        z = yy[0].split ( ";" );
                        t = z.shift ();
                        if ( t == 'li' ) createObject ( z, yy, 'li', 'w 1 h 1 s 1 v 0 a 1' );

                        else if ( t == 'lis' )
                           {
                              tmp = olk[z.shift () ];

                              if ( tmp != null )
                                 {
                                    if ( z.length > 0 ) tmp.w = z[0] * 1;
                                    if ( z.length > 1 ) tmp.h = z[1] * 1;
                                    if ( z.length > 2 ) tmp.s = z[2] * 1;
                                    if ( z.length > 3 ) tmp.v = z[3] * 1;
                                    if ( z.length > 4 ) tmp.a = z[4] * 1
                                 }
                              updateFlag = true
                           }

                        else if ( t == 'pu' ) createObject ( z, yy, 'pu', 'x 0 y 0 w 1 h 1 a 1 r 0 rx 0.5 ry 0.5 sx 1.0 sy 1.0 nl 0 nr 0 nt 0 nb 0 nu 0' );
                        else if ( t == 'po' ) createObject ( z, yy, 'po', '' );
                        else if ( t == 'up' ) cpo = pt3.length / 4;
                        else if ( t == 'am' ) am = z[0];
                        else if ( t == 'al' ) al = norm ( [z[0] * 1, z[1] * 1, z[2] * 1] );

                        else if ( t == 'xr' )
                           {
                              if ( z.length > 1 ) mlk[z[1]] = ma3.length;
                              if ( z.length <= 2 || z[2] == '' ) mm3.push ( mm3.length - 1 );

                              else
                                 {
                                    mm3.push ( mlk[z[2]] )
                                 }

                              ma3.push ( mxr ( z[0] ) );
                              mf3.push ( mxr ( z[0] ) );
                              updateMatrices ()
                           }

                        else if ( t == 'yr' )
                           {
                              if ( z.length > 1 ) mlk[z[1]] = ma3.length;
                              if ( z.length <= 2 || z[2] == '' ) mm3.push ( mm3.length - 1 );

                              else
                                 {
                                    mm3.push ( mlk[z[2]] )
                                 }

                              ma3.push ( myr ( z[0] ) );
                              mf3.push ( myr ( z[0] ) );
                              updateMatrices ()
                           }

                        else if ( t == 'zr' )
                           {
                              if ( z.length > 1 ) mlk[z[1]] = ma3.length;
                              if ( z.length <= 2 || z[2] == '' ) mm3.push ( mm3.length - 1 );

                              else
                                 {
                                    mm3.push ( mlk[z[2]] )
                                 }

                              ma3.push ( mzr ( z[0] ) );
                              mf3.push ( mzr ( z[0] ) );
                              updateMatrices ()
                           }

                        else if ( t == 'tr' )
                           {
                              if ( z.length > 3 ) mlk[z[3]] = ma3.length;
                              if ( z.length <= 4 || z[4] == '' ) mm3.push ( mm3.length - 1 );

                              else
                                 {
                                    mm3.push ( mlk[z[4]] )
                                 }

                              ma3.push ( mt ( z[0], z[1], z[2] ) );
                              mf3.push ( mt ( z[0], z[1], z[2] ) );
                              updateMatrices ()
                           }

                        else if ( t == 'sc' )
                           {
                              if ( z.length > 3 ) mlk[z[3]] = ma3.length;
                              if ( z.length <= 4 || z[4] == '' ) mm3.push ( mm3.length - 1 );

                              else
                                 {
                                    mm3.push ( mlk[z[4]] )
                                 }

                              ma3.push ( ms ( z[0], z[1], z[2] ) );
                              mf3.push ( ms ( z[0], z[1], z[2] ) );
                              updateMatrices ()
                           }

                        else if ( t == 'fp' ) finalPoint ();
                        else if ( t == 'mt' ) createObject ( z, yy, 'mt', 'x 0 y 0' );
                        else if ( t == 'lt' ) createObject ( z, yy, 'lt', 'x 0 y 0' );
                        else if ( t == 'im' ) createObject ( z, yy, 'im', 's s.gif x 0 y 0 w 1 h 1 a 1 r 0' );
                        else if ( t == 'ci' ) createObject ( z, yy, 'ci', 'x 0.5 y 0.5 r 0.5' );
                        else if ( t == 'cu' ) createObject ( z, yy, 'cu', 'v 0 w 0 x 0 y 0' );
                        else if ( t == 're' ) createObject ( z, yy, 're', 'x 0 y 0 w 1 h 1' );
                        else if ( t == '3d' ) createObject ( z, yy, '3d', 'xa 0 ya 0 za 0 d 6.0 r 1.5 br 0 h 0.666 s 0.1 v 1 a 1 id cube rot 1' );
                        else if ( t == '3db' ) createObject ( z, yy, '3db', '' );
                        else if ( t == '3l' ) createObject ( z, yy, '3l', '' );

                        else if ( t == '3ls' )
                           {
                              tmp = olk[z.shift () ];

                              if ( tmp != null )
                                 {
                                    tmp.ar[2] = z
                                 }
                              updateFlag = true
                           }

                        else if ( t == '3p' ) createObject ( z, yy, '3p', 'ra 0.0333 hi - 1 ha 0.1' );
                        else if ( t == 'pt' ) addPoint ( z );

                        else if ( t == 'cb' )
                           {
                              cpo = pt3.length / 4;
                              addPoint ( [ - 1, 1, 1] );
                              addPoint ( [1, 1, 1] );
                              addPoint ( [1, - 1, 1] );
                              addPoint ( [ - 1, - 1, 1] );
                              addPoint ( [ - 1, 1, - 1] );
                              addPoint ( [1, 1, - 1] );
                              addPoint ( [1, - 1, - 1] );
                              addPoint ( [ - 1, - 1, - 1] );
                              addFace ( [0, 1, 2, 3] );
                              addFace ( [1, 5, 6, 2] );
                              addFace ( [5, 4, 7, 6] );
                              addFace ( [4, 0, 3, 7] );
                              addFace ( [4, 5, 1, 0] );
                              addFace ( [3, 2, 6, 7] )
                           }

                        else if ( t == 'bm' ){}

                        else if ( t == 'sq' )
                           {
                              cpo = pt3.length / 4;
                              addPoint ( [ - 1, 1, 0] );
                              addPoint ( [1, 1, 0] );
                              addPoint ( [1, - 1, 0] );
                              addPoint ( [ - 1, - 1, 0] );
                              addFace ( [0, 1, 2, 3] );
                              addFace ( [3, 2, 1, 0] )
                           }

                        else if ( t == 'fa' ) addFace ( z );
                        else if ( t == 'fc' ) addFill ( z );
                        else if ( t == 'lc' ) addLine ( z );
                        else if ( t == 'tc' ) addTextColor ( z );
                        else if ( t == 'tl' ) addCharPerCol ( z );
                        else if ( t == 'th' ) addCharHeight ( z );
                        else if ( t == 'tx' ) addText ( z );
                        else if ( t == 'co' ) addScript ( z );
                        else if ( t == 'te' ) cte = z[0];
                        else if ( t == '3t' ) createObject ( z, yy, '3t', 'nc 10 ch 2 lh 0.5 tw 1 bw 1 br 0' );
                        else if ( t == 'rr' ) createObject ( z, yy, 'rr', 'x 0 y 0 w 1 h 1 cx 10 cy 10' );
                        else if ( t == 'an' || t == 'ss' ) createObject ( z, yy, 'an', 'vid a vn a sd 0 ed 1 start 0 end 1 ty ss' );
                        else if ( t == 'sf' ) createObject ( z, yy, 'an', 'vid a vn a sd 0 ed 1 start 0 end 1 ty sf' );
                        else if ( t == 'fs' ) createObject ( z, yy, 'an', 'vid a vn a sd 0 ed 1 start 0 end 1 ty fs' );
                        else if ( t == 'ff' ) createObject ( z, yy, 'an', 'vid a vn a sd 0 ed 1 start 0 end 1 ty ff' );
                        else if ( t == 'bf' ) createObject ( z, yy, 'bf', 'h 1 s 1 v 1 a 1' );
                        else if ( t == 'ef' ) createObject ( z, yy, 'ef', '' );
                        else if ( t == 'te' ) createObject ( z, yy, 'te', 't a x 0.5 y 0.5 z a18' );
                        else if ( t == 'xp' ) createObject ( z, yy, 'xp', '' );

                        else if ( t == 'cl' )
                           {
                              cl ();
                              firstTask = null;
                              lastTask = null
                           }
                        ind ++
                     }

                  if ( updateFlag )
                     {
                        updateMatrices ();
                        finalPoint ();
                        up ()
                     }
               }

            public function addPoint ( z: Array ) : void
               {
                  pt3.push ( z[0] );
                  pt3.push ( z[1] );
                  pt3.push ( z[2] );
                  pt3.push ( 0 );
                  fp3.push ( z[0] );
                  fp3.push ( z[1] );
                  fp3.push ( z[2] );
                  fp3.push ( 0 );
                  mp3.push ( ma3.length - 1 );
                  if ( z.length > 3 ) plk[z[3]] = pt3.length / 4 - 1
               }

            public function finalPoint () : void
               {
                  var p: Array = [0, 0, 0, 1];
                  var r: Array = [0, 0, 0, 1];
                  for ( var i: int = 0; i < pt3.length / 4; i ++ )
                     {
                        p[0] = pt3[i * 4 + 0];
                        p[1] = pt3[i * 4 + 1];
                        p[2] = pt3[i * 4 + 2];
                        mmi ( p, mf3[mp3[i]], r );
                        fp3[i * 4 + 0] = r[0];
                        fp3[i * 4 + 1] = r[1];
                        fp3[i * 4 + 2] = r[2]
                     }
               }

            public function addFace ( z: Array ) : void
               {
                  for ( var i: int = 0; i < z.length; i ++ ) z[i] = plk[z[i]];
                  fa3.push ( z );
                  fc3.push ( [cfc[0], cfc[1], cfc[2], cfc[3]] );
                  lc3.push ( [clc[0], clc[1], clc[2], clc[3], clc[4]] );
                  tx3.push ( ctx );
                  sc3.push ( csc );
                  te3.push ( cte );
                  th3.push ( cth );
                  tl3.push ( ctl );
                  tc3.push ( ctc );
                  ctx = '';
                  csc = []
               }

            public function addFill ( z: Array ) : void
               {
                  cfc[0] = z[0];
                  cfc[1] = z[1];
                  cfc[2] = z[2];
                  cfc[3] = z[3]
               }

            public function addLine ( z: Array ) : void
               {
                  clc[0] = z[0];
                  clc[1] = z[1];
                  clc[2] = z[2];
                  clc[3] = z[3];
                  clc[4] = z[4]
               }

            public function addTextColor ( z: Array ) : void
               {
                  ctc[0] = z[0];
                  ctc[1] = z[1];
                  ctc[2] = z[2];
                  ctc[3] = z[3];
                  ctc[4] = z[4]
               }

            public function addCharPerCol ( z: Array ) : void
               {
                  ctl = z[0]
               }

            public function addCharHeight ( z: Array ) : void
               {
                  cth = z[0]
               }

            public function addText ( z: Array ) : void
               {
                  ctx = z[0]
               }

            public function addScript ( z: Array ) : void
               {
                  var sa: Array = new Array ();
                  csc = z;
                  for ( var i: int = 0; i < z.length; i ++ )
                     {
                        sa = csc[i].split ( "~" );

                        if ( sa.length > 1 )
                           {
                              csc[i] = sa[1];
                              clk[sa[0]] = sc3.length;
                              cik[sa[0]] = i
                           }
                     }
               }

            public function gr ( g: Graphics ) : void
               {
                  this.g = g
               }

            public function hsv ( h: Number, s: Number, v: Number ) : uint
               {
                  var t: String = hsvs ( h, s, v );
                  var n: uint = 0;
                  var c: String = "0123456789ABCDEF";
                  for ( var i: int = 1; i < t.length; i ++ ) n = n * 16 + c.indexOf ( t.charAt ( i ) );
                  return n
               }

            public function hsvs ( h: Number, s: Number, v: Number ) : String
               {
                  if ( s == 0 ) return rgb ( v, v, v );
                  if ( h < 1.0 / 3.0 ) h *= ( 1.0 / 2.0 );
                  else if ( h < 1.0 / 2.0 ) h -= ( 1.0 / 6.0 );
                  else if ( h < 2.0 / 3.0 ) h = h * 2.0 - ( 2.0 / 3.0 );
                  h *= 6.0;
                  if ( h >= 6.0 ) h = 0;
                  var i: int = ( int )( Math.floor ( h ) );
                  var f: Number = h - i;
                  var p: Number = v * ( 1 - s );
                  var q: Number = v * ( 1 - s * f );
                  var t: Number = v * ( 1 - s * ( 1 - f ) );
                  if ( i == 0 ) return rgb ( v, t, p );
                  else if ( i == 1 ) return rgb ( q, v, p );
                  else if ( i == 2 ) return rgb ( p, v, t );
                  else if ( i == 3 ) return rgb ( p, q, v );
                  else if ( i == 4 ) return rgb ( t, p, v );
                  else return rgb ( v, p, q )
               }

            public function init () : void
               {
                  code ();

                  if ( ss != null && ss.length > 0 )
                     {
                        zipLoad ( [ss], '' )
                     }
               }

            public function code () : void
               {
                  gr ( cv.graphics );
                  g.clear ();

                  if ( sc != null && sc.length > 0 )
                     {
                        fj ( sc );
                        sc = ''
                     }
               }

            public function gs ( a: Array, i: int ) : String
               {
                  var z: String = '';
                  if ( a.length > i ) z = a[i];
                  return z
               }

            public function ph ( a: Number ) : Number
               {
                  return a * ( yb[0] - ya[0] ) - th
               }

            public function pw ( a: Number ) : Number
               {
                  return a * ( xb[0] - xa[0] ) - th
               }

            public function rgb ( r: Number, g: Number, b: Number ) : String
               {
                  return "#" + d2h ( r * 255, 2 ) + d2h ( g * 255, 2 ) + d2h ( b * 255, 2 )
               }

            public function rj ( ...b ) : void
               {
                  ExternalInterface.call ( 'rj', b )
               }

            public function runTask () : void
               {
                  var o: Object = firstTask;

                  while ( o != null )
                     {
                        doTask ( o );
                        o = o.right
                     }
               }

            public function up () : void
               {
                  cl ();
                  runTask ()
               }

            public function xc ( a: Number ) : Number
               {
                  return ( thh + xa[0] + a * ( ( xb[0] - xa[0] ) - th ) ) - xa[0] - cv.rx * ( xb[0] - xa[0] )
               }

            public function yc ( a: Number ) : Number
               {
                  return ( he - ( thh + ya[0] + a * ( ( yb[0] - ya[0] ) - th ) ) ) - ya[0] - cv.ry * ( yb[0] - ya[0] )
               }

            public function an ( d: Object ) : void
               {
                  d.L = null;
                  d.R = null;
                  d.add = 0;
                  d.am = d.ty;
                  d.time = new Date () .time;
                  d.duration = 0;
                  d.ss = '';
                  d.es = '';
                  d.start = d.time + 1000 * d.start;
                  d.end = d.time + 1000 * d.end;
                  if ( d.end < d.start ) d.end = d.start;
                  d.duration = d.end - d.start;
                  if ( Ar == null ) Ar = d;

                  else
                     {
                        var a: Object = Ar;
                        var b: Object = null;

                        while ( a != null && a.start <= d.start )
                           {
                              b = a;
                              a = a.R
                           }

                        if ( b == null )
                           {
                              d.R = Ar;
                              Ar.L = d;
                              Ar = d
                           }

                        else
                           {
                              if ( b.R != null )
                                 {
                                    b.R.L = d;
                                    d.R = b.R;
                                    d.L = b;
                                    b.R = d
                                 }

                              else
                                 {
                                    b.R = d;
                                    d.L = b
                                 }
                           }
                     }
               }

            public function anr ( a: Object ) : void
               {
                  if ( a.L != null )
                     {
                        if ( a.R != null )
                           {
                              a.L.R = a.R;
                              a.R.L = a.L
                           }
                        else a.L.R = null
                     }

                  else
                     {
                        if ( a.R != null )
                           {
                              Ar = a.R;
                              a.R.L = null
                           }
                        else Ar = null
                     }
                  Aq.push ( a )
               }

            public function anc () : void
               {
                  while ( Ar != null ) anr ( Ar )
               }

            public function anct ( id: String, n: String ) : void
               {
                  var a: Object = Ar;

                  while ( a != null )
                     {
                        if ( a.vid == id && a.vn == n ) anr ( a );
                        a = a.R
                     }
               }

            public function ans () : void
               {
                  if ( cnv != null && cnv.length > 0 && cnv[0] != null ) cnv[0].frm ();
                  var a: Object, b: Object, k: Number, t: Number, v: Number;
                  t = new Date () .time;
                  Ac = t;
                  a = Ar;

                  if ( a != null )
                     {
                        while ( a != null )
                           {
                              b = a.R;

                              if ( t >= a.start )
                                 {
                                    k = 1;
                                    if ( a.duration > 0 ) k = ( t - a.start ) / a.duration;
                                    if ( k >= 1 ) k = 1;
                                    if ( a.am == 'ss' ) k = ( Math.sin ( k * Math.PI - Math.PI / 2 ) + 1 ) / 2;
                                    else if ( a.am == 'fs' ) k = ( Math.sin ( k * Math.PI / 2 ) );
                                    else if ( a.am == 'sf' ) k = 1 - ( Math.sin ( ( 1 - k ) * Math.PI / 2 ) );

                                    if ( a.vn == 'xr' )
                                       {
                                          v = ( k * ( a.ed - a.sd ) + a.sd * 1 ) * 2 * Math.PI;
                                          ma3[mlk[a.vid]][5] = Math.cos ( v );
                                          ma3[mlk[a.vid]][6] = Math.sin ( v );
                                          ma3[mlk[a.vid]][9] = - Math.sin ( v );
                                          ma3[mlk[a.vid]][10] = Math.cos ( v )
                                       }

                                    else if ( a.vn == 'yr' )
                                       {
                                          v = ( k * ( a.ed - a.sd ) + a.sd * 1 ) * 2 * Math.PI;
                                          ma3[mlk[a.vid]][0] = Math.cos ( v );
                                          ma3[mlk[a.vid]][2] = - Math.sin ( v );
                                          ma3[mlk[a.vid]][8] = Math.sin ( v );
                                          ma3[mlk[a.vid]][10] = Math.cos ( v )
                                       }

                                    else if ( a.vn == 'zr' )
                                       {
                                          v = ( k * ( a.ed - a.sd ) + a.sd * 1 ) * 2 * Math.PI;
                                          ma3[mlk[a.vid]][0] = Math.cos ( v );
                                          ma3[mlk[a.vid]][1] = Math.sin ( v );
                                          ma3[mlk[a.vid]][4] = - Math.sin ( v );
                                          ma3[mlk[a.vid]][5] = Math.cos ( v )
                                       }

                                    else if ( a.vn == 'mx' )
                                       {
                                          ma3[mlk[a.vid]][12] = ( k * ( a.ed - a.sd ) + a.sd * 1 )
                                       }

                                    else if ( a.vn == 'my' )
                                       {
                                          ma3[mlk[a.vid]][13] = ( k * ( a.ed - a.sd ) + a.sd * 1 )
                                       }

                                    else if ( a.vn == 'mz' )
                                       {
                                          ma3[mlk[a.vid]][14] = ( k * ( a.ed - a.sd ) + a.sd * 1 )
                                       }

                                    else if ( a.vn == 'sx' )
                                       {
                                          ma3[mlk[a.vid]][0] = ( k * ( a.ed - a.sd ) + a.sd * 1 )
                                       }

                                    else if ( a.vn == 'sy' )
                                       {
                                          ma3[mlk[a.vid]][5] = ( k * ( a.ed - a.sd ) + a.sd * 1 )
                                       }

                                    else if ( a.vn == 'sz' )
                                       {
                                          ma3[mlk[a.vid]][10] = ( k * ( a.ed - a.sd ) + a.sd * 1 )
                                       }

                                    else if ( a.vn == 'co' )
                                       {
                                          sc3[clk[a.vid]][cik[a.vid] + 1] = k * ( a.ed - a.sd ) + a.sd * 1
                                       }

                                    else
                                       {
                                          olk[a.vid][a.vn] = k * ( a.ed - a.sd ) + a.sd * 1
                                       }
                                    if ( k >= 1 ) anr ( a )
                                 }
                              a = b
                           }

                        updateMatrices ();
                        finalPoint ();
                        up ()
                     }

                  Af ++;
                  if ( Af == 2 ) rj ( 'fld[]' )
               }
         }
   }