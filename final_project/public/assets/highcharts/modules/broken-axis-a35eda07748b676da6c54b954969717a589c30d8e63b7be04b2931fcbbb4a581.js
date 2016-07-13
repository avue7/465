!function(t){return"object"==typeof module&&module.exports?void(module.exports=t):void t(Highcharts)}(function(t){"use strict";function i(){return Array.prototype.slice.call(arguments,1)}function r(t){t.apply(this),this.drawBreaks(this.xAxis,["x"]),this.drawBreaks(this.yAxis,o(this.pointArrayMap,["y"]))}var o=t.pick,e=t.wrap,s=t.each,n=t.extend,a=t.fireEvent,f=t.Axis,p=t.Series;n(f.prototype,{isInBreak:function(t,i){var r,o=t.repeat||1/0,e=t.from,s=t.to-t.from,n=i>=e?(i-e)%o:o-(e-i)%o;return r=t.inclusive?s>=n:s>n&&0!==n},isInAnyBreak:function(t,i){var r,e,s,n=this.options.breaks,a=n&&n.length;if(a){for(;a--;)this.isInBreak(n[a],t)&&(r=!0,e||(e=o(n[a].showPoints,!this.isXAxis)));s=r&&i?r&&!e:r}return s}}),e(f.prototype,"setTickPositions",function(t){if(t.apply(this,Array.prototype.slice.call(arguments,1)),this.options.breaks){var i,r=this,o=this.tickPositions,e=this.tickPositions.info,s=[];for(i=0;i<o.length;i++)r.isInAnyBreak(o[i])||s.push(o[i]);this.tickPositions=s,this.tickPositions.info=e}}),e(f.prototype,"init",function(t,i,r){if(r.breaks&&r.breaks.length&&(r.ordinal=!1),t.call(this,i,r),this.options.breaks){var o=this;o.isBroken=!0,this.val2lin=function(t){var i,r,e=t;for(r=0;r<o.breakArray.length;r++)if(i=o.breakArray[r],i.to<=t)e-=i.len;else{if(i.from>=t)break;if(o.isInBreak(i,t)){e-=t-i.from;break}}return e},this.lin2val=function(t){var i,r,e=t;for(r=0;r<o.breakArray.length&&(i=o.breakArray[r],!(i.from>=e));r++)i.to<e?e+=i.len:o.isInBreak(i,e)&&(e+=i.len);return e},this.setExtremes=function(t,i,r,o,e){for(;this.isInAnyBreak(t);)t-=this.closestPointRange;for(;this.isInAnyBreak(i);)i-=this.closestPointRange;f.prototype.setExtremes.call(this,t,i,r,o,e)},this.setAxisTranslation=function(t){f.prototype.setAxisTranslation.call(this,t);var i,r,e,s,n,p,l=o.options.breaks,h=[],u=[],k=0,c=o.userMin||o.min,y=o.userMax||o.max;for(n in l)e=l[n],r=e.repeat||1/0,o.isInBreak(e,c)&&(c+=e.to%r-c%r),o.isInBreak(e,y)&&(y-=y%r-e.from%r);for(n in l){for(e=l[n],s=e.from,r=e.repeat||1/0;s-r>c;)s-=r;for(;c>s;)s+=r;for(p=s;y>p;p+=r)h.push({value:p,move:"in"}),h.push({value:p+(e.to-e.from),move:"out",size:e.breakSize})}h.sort(function(t,i){var r;return r=t.value===i.value?("in"===t.move?0:1)-("in"===i.move?0:1):t.value-i.value}),i=0,s=c;for(n in h)e=h[n],i+="in"===e.move?1:-1,1===i&&"in"===e.move&&(s=e.value),0===i&&(u.push({from:s,to:e.value,len:e.value-s-(e.size||0)}),k+=e.value-s-(e.size||0));o.breakArray=u,a(o,"afterBreaks"),o.transA*=(y-o.min)/(y-c-k),o.min=c,o.max=y}}}),e(p.prototype,"generatePoints",function(t){t.apply(this,i(arguments));var r,o,e=this,s=e.xAxis,n=e.yAxis,a=e.points,f=a.length,p=e.options.connectNulls;if(s&&n&&(s.options.breaks||n.options.breaks))for(;f--;)r=a[f],o=null===r.y&&p===!1,o||!s.isInAnyBreak(r.x,!0)&&!n.isInAnyBreak(r.y,!0)||(a.splice(f,1),this.data[f]&&this.data[f].destroyElements())}),t.Series.prototype.drawBreaks=function(t,i){var r,e,n,f,p=this,l=p.points;s(i,function(i){r=t.breakArray||[],e=t.isXAxis?t.min:o(p.options.threshold,t.min),s(l,function(p){f=o(p["stack"+i.toUpperCase()],p[i]),s(r,function(i){n=!1,e<i.from&&f>i.to||e>i.from&&f<i.from?n="pointBreak":(e<i.from&&f>i.from&&f<i.to||e>i.from&&f>i.to&&f<i.from)&&(n="pointInBreak"),n&&a(t,n,{point:p,brk:i})})})})},e(t.seriesTypes.column.prototype,"drawPoints",r),e(t.Series.prototype,"drawPoints",r)});