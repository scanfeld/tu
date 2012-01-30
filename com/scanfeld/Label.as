package com.scanfeld
   {
      import flash.events.Event;
      import mx.controls.Alert;
      import mx.controls.Label;
      import mx.events.FlexEvent;

      public dynamic class Label extends mx.controls.Label
         {
            public var xc: Number;
            public var yc: Number;
            public var xa: int;
            public var ya: int;
            public var wi: Number;
            public var he: Number;

            public function Label () : void
               {
                  super ();
                  this.addEventListener ( FlexEvent.UPDATE_COMPLETE, handleChange );
                  this.addEventListener ( FlexEvent.CREATION_COMPLETE, handleChange );
                  this.addEventListener ( Event.CHANGE, handleChange );
                  this.addEventListener ( Event.RESIZE, handleChange )
               }

            public function handleChange ( event: Event ) : void
               {
                  wi = this.textWidth;
                  he = this.textHeight;
                  x = xc + ( 2 * xa - 1 ) * wi / 2;
                  y = yc + ( 2 * ya - 1 ) * he / 2
               }

            public function setPos ( xc: Number, yc: Number, xa: int, ya: int ) : void
               {
                  this.xc = xc;
                  this.yc = yc;
                  this.xa = xa;
                  this.ya = ya;
                  x = xc + ( 2 * xa - 1 ) * wi / 2;
                  y = yc + ( 2 * ya - 1 ) * he / 2
               }
         }
   }