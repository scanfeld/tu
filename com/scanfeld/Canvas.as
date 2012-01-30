package com.scanfeld
   {
      import flash.events.Event;
      import flash.events.KeyboardEvent;
      import flash.events.MouseEvent;
      import mx.controls.Alert;
      import mx.events.FlexEvent;
      import mx.containers.Canvas;

      public dynamic class Canvas extends mx.containers.Canvas
         {
            public var ax: Object;
            public var pl: Tu;
            public var dw: Boolean;
            public var xa: Number;
            public var ya: Number;
            public var za: Number;
            public var xc: Number;
            public var yc: Number;
            public var mx: Number;
            public var my: Number;
            public var mt: uint;
            public var mcx: Number;
            public var mcy: Number;
            public var mcz: Number;
            public var mpx: Number;
            public var mpy: Number;
            public var mpz: Number;
            public var mcs: uint;
            public var mce: uint;
            public var cx: Number;
            public var cy: Number;
            public var xx: Number;
            public var xy: Number;
            public var yx: Number;
            public var yy: Number;
            public var zx: Number;
            public var zy: Number;
            public var st: String;
            public var kd: Array;
            public var inc: Number;
            public var upf: Boolean = false;

            public function Canvas () : void
               {
                  super ();
                  dw = false;
                  st = 'x';
                  kd = [];
                  inc = 0.01
               }

            public function threed ( p: Tu, a: Object ) : void
               {
                  pl = p;
                  ax = a;
                  p.ax = a;

                  if ( a.rot == 1 )
                     {
                        this.addEventListener ( MouseEvent.MOUSE_DOWN, downHandler );
                        this.addEventListener ( MouseEvent.MOUSE_MOVE, moveHandler );
                        this.addEventListener ( MouseEvent.MOUSE_OVER, overHandler );
                        this.addEventListener ( MouseEvent.MOUSE_OUT, outHandler );
                        this.addEventListener ( MouseEvent.MOUSE_UP, upHandler );
                        this.addEventListener ( KeyboardEvent.KEY_DOWN, keyDown );
                        this.addEventListener ( KeyboardEvent.KEY_UP, keyUp )
                     }
               }

            public function frm () : void
               {
                  if ( kd[44] )
                     {
                        if ( st == 'x' || kd[49] ) ax.xa += inc;
                        if ( st == 'y' || kd[50] ) ax.ya += inc;
                        if ( st == 'z' || kd[51] ) ax.za += inc;
                        if ( st == 'd' || kd[52] ) ax.d *= 1.0 + inc;
                        if ( st == 'r' || kd[53] ) ax.r += inc;
                        pl.up ()
                     }

                  if ( kd[46] )
                     {
                        if ( st == 'x' || kd[49] ) ax.xa -= inc;
                        if ( st == 'y' || kd[50] ) ax.ya -= inc;
                        if ( st == 'z' || kd[51] ) ax.za -= inc;
                        if ( st == 'd' || kd[52] ) ax.d /= 1.0 + inc;
                        if ( st == 'r' || kd[53] ) ax.r -= inc;
                        pl.up ()
                     }

                  if ( kd[109] )
                     {
                        if ( st == 'x' || kd[49] ) ax.xa = 0;
                        if ( st == 'y' || kd[50] ) ax.ya = 0;
                        if ( st == 'z' || kd[51] ) ax.za = 0;
                        if ( st == 'd' || kd[52] ) ax.d = 6.0;
                        if ( st == 'r' || kd[53] ) ax.r = 1.5;
                        pl.up ()
                     }

                  if ( upf )
                     {
                        pl.up ();
                        upf = false
                     }
               }

            public function keyDown ( e: KeyboardEvent ) : void
               {
                  if ( e.charCode == 49 ) st = 'x';
                  else if ( e.charCode == 50 ) st = 'y';
                  else if ( e.charCode == 51 ) st = 'z';
                  else if ( e.charCode == 52 ) st = 'd';
                  else if ( e.charCode == 53 ) st = 'r';
                  else if ( e.charCode == 122 ) loopAbbr ();
                  kd[e.charCode] = 1;
                  if ( e.charCode == 44 ) pl.anc ();
                  else if ( e.charCode == 46 ) pl.anc ()
               }

            public function loopAbbr () : void
               {
                  pl.anct ( 'pts', 'hi' );
                  pl.fj ( "ff;pts;hi;1;49;0;5" )
               }

            public function keyUp ( e: KeyboardEvent ) : void
               {
                  kd[e.charCode] = 0;

                  if ( kd[47] )
                     {
                        Alert.show ( 'charcode: ' + e.charCode );
                        for ( var i: int = 0; i < 256; i ++ )
                           {
                              if ( kd[i] ) Alert.show ( 'keydown: ' + i )
                           }
                     }
               }

            public function downHandler ( e: MouseEvent ) : void
               {
                  stage.focus = this;
                  dw = true;
                  pl.anct ( "cube", "xa" );
                  pl.anct ( "cube", "ya" );
                  pl.anct ( "cube", "za" );
                  xa = ax.xa;
                  ya = ax.ya;
                  za = ax.za;
                  xx = 0;
                  xy = 0;
                  yx = 0;
                  yy = 0;
                  zx = 0;
                  zy = 0;

                  if ( xa > 0.25 && xa < 0.75 )
                     {
                        xy = 1;
                        yx = - 1
                     }

                  else
                     {
                        xy = 1;
                        yx = 1
                     }

                  xc = e.stageX;
                  yc = e.stageY;
                  mx = xc;
                  my = yc;
                  mt = 0;
                  mcx = 0;
                  mcy = 0;
                  mcz = 0;
                  mpx = 0;
                  mpy = 0;
                  mpz = 0;
                  mcs = mt;
                  mce = mt
               }

            public function moveHandler ( e: MouseEvent ) : void
               {
                  if ( dw )
                     {
                        mx = e.stageX;
                        my = e.stageY;
                        mt = new Date () .time;
                        cx = ( mx - xc ) / ( 2 * width );
                        cy = ( my - yc ) / ( 2 * height );
                        ax.xa = xa + xx * cx + xy * cy;
                        ax.ya = ya + yx * cx + yy * cy;
                        ax.za = za + zx * cx + zy * cy;
                        while ( ax.xa < 0 ) ax.xa += 1.0;
                        while ( ax.xa >= 1 ) ax.xa -= 1.0;
                        while ( ax.ya < 0 ) ax.ya += 1.0;
                        while ( ax.ya >= 1 ) ax.ya -= 1.0;
                        while ( ax.za < 0 ) ax.za += 1.0;
                        while ( ax.za >= 1 ) ax.za -= 1.0;

                        if ( Math.abs ( ax.xa - mcx ) > 0.0001 || Math.abs ( ax.ya - mcy ) > 0.0001 || Math.abs ( ax.za - mcz ) > 0.0001 )
                           {
                              mpx = mcx;
                              mpy = mcy;
                              mpz = mcz;
                              mcx = ax.xa;
                              mcy = ax.ya;
                              mcz = ax.za;
                              mcs = mce;
                              mce = new Date () .time
                           }
                        upf = true
                     }
               }

            public function overHandler ( event: Event ) : void{}

            public function outHandler ( event: Event ) : void{}

            public function upHandler ( e: MouseEvent ) : void
               {
                  var clk: Number = mce;
                  moveHandler ( e );
                  dw = false;
                  var dif: uint = ( mce - mcs );
                  var xd: Number = mcx - mpx;
                  var yd: Number = mcy - mpy;
                  var zd: Number = mcz - mpz;
                  if ( xd > 0.5 ) xd = - ( 1 - xd );
                  if ( xd < - 0.5 ) xd = ( 1 + xd );
                  if ( yd > 0.5 ) yd = - ( 1 - yd );
                  if ( yd < - 0.5 ) yd = ( 1 + yd );
                  if ( zd > 0.5 ) zd = - ( 1 - zd );
                  if ( zd < - 0.5 ) zd = ( 1 + zd );
                  var mx: Number = Math.max ( Math.max ( Math.abs ( xd ), Math.abs ( yd ) ), Math.abs ( zd ) );

                  if ( clk > 0 && mx > 0 && ( mt - mce ) < 100 )
                     {
                        pl.fj ( "fs;cube;xa;" + ax.xa + ";" + ( ax.xa + 0.25 * ( xd / mx ) ) + ";0;2" );
                        pl.fj ( "fs;cube;ya;" + ax.ya + ";" + ( ax.ya + 0.25 * ( yd / mx ) ) + ";0;2" );
                        pl.fj ( "fs;cube;za;" + ax.za + ";" + ( ax.za + 0.25 * ( zd / mx ) ) + ";0;2" )
                     }
               }
         }
   }