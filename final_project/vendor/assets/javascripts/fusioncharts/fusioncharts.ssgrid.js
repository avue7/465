/*
 FusionCharts JavaScript Library
 Copyright FusionCharts Technologies LLP
 License Information at <http://www.fusioncharts.com/license>

 @version 3.11.0
*/
FusionCharts.register("module",["private","modules.renderer.js-ssgrid",function(){var C=this,p=C.hcLib,q=p.BLANKSTRING,g=p.pluck,d=p.pluckNumber,F=p.chartAPI,w=p.graphics.convertColor,x=p.getFirstColor,M=p.setLineHeight,v=Math,N=v.min,G=v.max,O=v.ceil,P=v.round,Q=p.toRaphaelColor,J=p.POSITION_START,K=p.HUNDREDSTRING,L=p.COLOR_TRANSPARENT,v=!/fusioncharts\.com$/i.test(C.window.location.hostname);F("ssgrid",{standaloneInit:!0,creditLabel:v,friendlyName:"ssgrid Chart",defaultDatasetType:"ssgrid",canvasBorderThickness:1,
singleseries:!0,bgColor:"#FFFFFF",bgAlpha:100,_drawCaption:function(){},_drawCanvas:function(){},_createAxes:function(){},_feedAxesRawData:function(){},_setCategories:function(){},_setAxisLimits:function(){},_spaceManager:function(){var e=this.components.dataset[0];e._manageSpace&&this._allocateSpace(e._manageSpace())}},F.sscartesian);FusionCharts.register("component",["dataset","ssgrid",{init:function(e){var a=this.chart;if(!e)return!1;this.JSONData=e;this.chartGraphics=a.chartGraphics;this.components=
{};this.config={};this.graphics={};this.visible=1===d(this.JSONData.visible,!Number(this.JSONData.initiallyhidden),1);this.configure()},configure:function(){var e=this.chart,a=this.config,b=e.jsonData.chart||{},l=e.components.colorManager;a.plotFillAngle=d(360-b.plotfillangle,e.isBar?180:90);a.plotFillAlpha=g(b.plotfillalpha,K);a.plotBorderAlpha=g(b.plotborderalpha,K);a.plotBorderColor=g(b.plotbordercolor,l.getColor("plotBorderColor"));a.plotDashLen=d(b.plotborderdashlen,5);a.plotDashGap=d(b.plotborderdashgap,
4);a.showPercentValues=d(b.showpercentvalues,0);a.numberItemsPerPage=d(b.numberitemsperpage)||void 0;a.showShadow=d(b.showshadow,0);a.baseFont=g(b.basefont,"Verdana,sans");a.baseFontSize=g(b.basefontsize,10)+"px";a.baseFontColor=x(g(b.basefontcolor,l.getColor("baseFontColor")));a.alternateRowBgColor=x(g(b.alternaterowbgcolor,l.getColor("altHGridColor")));a.alternateRowBgAlpha=g(b.alternaterowbgalpha,l.getColor("altHGridAlpha"))+q;a.listRowDividerThickness=d(b.listrowdividerthickness,1);a.listRowDividerColor=
x(g(b.listrowdividercolor,l.getColor("borderColor")));a.listRowDividerAlpha=d(d(b.listrowdivideralpha,l.getColor("altHGridAlpha")+15))+q;a.colorBoxWidth=d(b.colorboxwidth,8);a.colorBoxHeight=d(b.colorboxheight,8);a.navButtonRadius=d(b.navbuttonradius,7);a.navButtonColor=x(g(b.navbuttoncolor,l.getColor("canvasBorderColor")));a.navButtonHoverColor=x(g(b.navbuttonhovercolor,l.getColor("altHGridColor")));a.textVerticalPadding=d(b.textverticalpadding,3);a.navButtonPadding=d(b.navbuttonpadding,5);a.colorBoxPadding=
d(b.colorboxpadding,10);a.valueColumnPadding=d(b.valuecolumnpadding,10);a.nameColumnPadding=d(b.namecolumnpadding,5);a.shadow=d(b.showshadow,0)?{enabled:!0,opacity:a.plotFillAlpha/100}:!1;this.currentPage=0;this._setConfigure()},_setConfigure:function(){var e=this.chart,a=this.config,b=this.JSONData,l=e.jsonData&&e.jsonData.data,b=G(l&&l.length||0,b&&b.data&&b.data.length||0),n=e.components,e=n.colorManager,m=n.numberFormatter,k=a.plotColor=e.getPlotColor(this.index||this.positionIndex),r=p.parseUnsafeString,
c=a.plotBorderThickness,I=a.plotBorderDashStyle,h,f,R=p.getDashStyle,t=this.components.data,s,z,y,A,E=n=0,H;t||(t=this.components.data=[]);for(A=0;A<b&&l;A++)if(h=l[A])if(k=m.getCleanValue(h.value),f=r(g(h.label,h.name)),null!=k||f!=q)f=t[n]||(t[n]={config:{}}),f=f.config,f.tooltext=h.tooltext,f.showValue=d(h.showvalue,a.showValues),f.setValue=k=m.getCleanValue(h.value),f.setLink=g(h.link),f.toolTipValue=m.dataLabels(k),f.setDisplayValue=r(h.displayvalue),f.displayValue=m.dataLabels(k)||q,f.dataLabel=
r(g(h.label,h.name))||q,s=d(h.dashed),z=d(h.dashlen,void 0),y=d(h.dashgap,a.plotDashGap),E+=k,n+=1,f.plotBorderDashStyle=1===s?R(z,y,c):0===s?"none":I,k=g(h.color,e.getPlotColor(d(H-b,A))),g(h.ratio,a.plotFillRatio),s=g(h.alpha,a.plotFillAlpha),f.color=w(k,s),f.borderColor=w(a.plotBorderColor,g(h.alpha,a.plotBorderAlpha).toString()),H++;l={fontFamily:a.baseFont,fontSize:a.baseFontSize,color:a.baseFontColor};M(l);a.textStyle=l;a.actualDataLen=n;a.sumOfValues=E},_manageSpace:function(){var e=this.chart,
a=this.config,b=e.linkedItems.smartLabel,l=this.components.data,n=e.config,m=e.jsonData.chart||{},m=n.borderThickness=d(m.showborder,1)?d(m.borderthickness,1):0,k=n.height-2*m,m=n.width-2*m,r=a.textStyle,c=a.actualDataLen,I=a.sumOfValues,h=e.components.numberFormatter,e=0,f,g;b.useEllipsesOnOverflow(n.useEllipsesWhenOverflow);b.setStyle(r);g=l.length;for(n=0;n<g;n++)if(f=l[n])f=f&&f.config,a.showPercentValues&&(f.displayValue=h.percentValue(f.setValue/I*100)),f=b.getOriSize(f.displayValue),e=G(e,
f.width+a.valueColumnPadding);b=parseInt(r.lineHeight,10);b+=2*a.textVerticalPadding;b=G(b,a.colorBoxHeight+a.listRowDividerThickness);l=k/b;a.numberItemsPerPage&&l>=a.numberItemsPerPage?a.numberItemsPerPage>=c?(a.numberItemsPerPage=c,k/=a.numberItemsPerPage):(k-=2*(a.navButtonPadding+a.navButtonRadius),c=a.numberItemsPerPage,k/=c):(l>=c||(k-=2*(a.navButtonPadding+a.navButtonRadius),c=Math.floor(k/b)),k/=c);m=m-a.colorBoxPadding-a.colorBoxWidth-a.nameColumnPadding-e-a.valueColumnPadding;a.labelX=
a.colorBoxPadding+a.colorBoxWidth+a.nameColumnPadding;a.valueX=a.colorBoxPadding+a.colorBoxWidth+a.nameColumnPadding+m+a.valueColumnPadding;a.valueColumnPadding=a.valueColumnPadding;a.rowHeight=k;a.itemsPerPage=c;a.listRowDividerAttr={"stroke-width":a.listRowDividerThickness,stroke:w(a.listRowDividerColor,a.listRowDividerAlpha)};a.alternateRowColor=w(a.alternateRowBgColor,a.alternateRowBgAlpha);return{top:0,bottom:0}},draw:function(){var e=this.config,a=this.chart,b=a.linkedItems.smartLabel,l=a.components.paper,
n=a.graphics.datasetGroup,m=this.components.data,k=a.jsonData&&a.jsonData.data,k=k&&k.length||0,d=G(k,m.length),c=this.graphics,g,c=a.config,h=c.borderThickness,f=h,a=a.config.width-c.borderThickness,p=Q(e.alternateRowColor),t=e.rowHeight,s=e.listRowDividerAttr,z=s["stroke-width"]%2/2,y=e.colorBoxPadding+h,A=e.colorBoxHeight,E=e.colorBoxWidth,H=e.labelX+h,v=e.valueX+h,q=e.textStyle,x=e.itemsPerPage,B=0,w=this.currentPage||(this.currentPage=0),C={},F,D,u;this.graphics.container||(this.graphics.container=
[]);this.currentPage=w=N(O(d/x)-1,w);for(D=0;D<d;D++)if(1!=(D+1)%x&&1!=x&&g||(f=h,(g=this.graphics.container[B])||(g=this.graphics.container[B]=l.group("grid-"+B,n)),B!==w?g.hide():g.show(),B+=1,C={pageId:B,data:[]},g.data("eventArgs",C)),c=m[D])u=c&&c.config,c=c&&(c.graphics||(c.graphics={})),D>=k?(c.alternateRow&&c.alternateRow.remove(),c.alternateRow=void 0,c.listRowDivideElem&&c.listRowDivideElem.remove(),c.listRowDivideElem=void 0,c.element&&c.element.remove(),c.element=void 0,c.label&&c.label.remove(),
c.label=void 0,c.displayValue&&c.displayValue.remove(),c.displayValue=void 0,c.listRowDivideElem&&c.listRowDivideElem.remove(),c.listRowDivideElem=void 0):(0===D%2&&(c.alternateRow||(c.alternateRow=l.rect()),g.appendChild(c.alternateRow),c.alternateRow.attr({x:h,y:f+.5*e.listRowDividerThickness,width:a-h,height:t,fill:p,"stroke-width":0})),c.element||(c.element=l.rect()),g.appendChild(c.element),c.element.attr({x:y,y:f+t/2-A/2,width:E,height:A,fill:u.color,"stroke-width":0,stroke:"#000000"}).shadow(e.shadow),
F=b.getSmartText(u.displayValue).width||0,c.displayValue||(c.displayValue=l.text()),g.appendChild(c.displayValue),c.displayValue.attr({text:u.displayValue,x:v,y:f+t/2,fill:q.color,direction:e.textDirection,"text-anchor":J}).css(q),c.label||(c.label=l.text()),u.label=b.getSmartText(u.dataLabel,a-(F+E+y),t),g.appendChild(c.label),c.label.attr({text:u.label.text,x:H,y:f+t/2,fill:q.color,direction:e.textDirection,"text-anchor":J}).css(q),C.data.push({color:u.color,displayValue:u.displayValue,label:u.dataLabel,
originalText:u.label.text,y:f+t/2}),f+=t,u=P(f)+z,c.listRowDivideElem||(c.listRowDivideElem=l.path()),g.appendChild(c.listRowDivideElem),c.listRowDivideElem.attr("path",["M",h,u,"L",a,u]).attr(s));for(d=this.graphics.container.length-1;d>=B;--d)g=this.graphics.container,g[d].remove(),g.splice(d,1);this._drawSSGridNavButton()},_drawSSGridNavButton:function(){var e=this,a=e.chart,b=e.config,l=b.actualDataLen,g=b.itemsPerPage,d=e.graphics,k=a.components.paper,r=a.config.borderThickness,c=b.navButtonColor,
p=b.navButtonHoverColor,h=b.navButtonRadius,f=.67*h,b=r+b.navButtonPadding+f+b.itemsPerPage*b.rowHeight+.5*h,r=20+r,q=a.config.width-r,a=a.graphics,t=a.trackerGroup,s=a.pageNavigationLayer,z=a.pagePreNavigationLayer,y=a.pageNextNavigationLayer,A=d.container.length,x=e.currentPage,w,v;s||(s=a.pageNavigationLayer=k.group("page-nav",t));z||(z=a.pagePreNavigationLayer=k.group("page-prev-nav",s));y||(y=a.pageNextNavigationLayer=k.group("page-next-nav",s));l>g?(s.show(),d.navElePrv||(d.navElePrv=k.path(z)),
w=d.navElePrv.attr({path:["M",r,b,"L",r+h+f,b-f,r+h,b,r+h+f,b+f,"Z"],fill:c,"stroke-width":0,cursor:"pointer"}),d.navTrackerPrv||(d.navTrackerPrv=k.circle(z).mouseover(function(){w.attr({fill:p,cursor:"pointer"})}).mouseout(function(){w.attr({fill:c})}).click(function(){e._nenagitePage(-1)})),d.navTrackerPrv.attr({cx:r+h,cy:b,r:h,fill:L,"stroke-width":0,cursor:"pointer"}),d.navEleNxt||(v=d.navEleNxt=k.path(y)),v=d.navEleNxt.attr({path:["M",q,b,"L",q-h-f,b-f,q-h,b,q-h-f,b+f,"Z"],fill:c,"stroke-width":0,
cursor:"pointer"}),d.navTrackerNxt||(d.navTrackerNxt=k.circle(y).mouseover(function(){v.attr({fill:p})}).mouseout(function(){v.attr({fill:c})}).click(function(){e._nenagitePage(1)})),d.navTrackerNxt.attr({cx:q-h,cy:b,r:h,fill:L,"stroke-width":0,cursor:"pointer"}),0===x?z.hide():z.show(),x===A-1?y.hide():y.show()):s.hide()},_nenagitePage:function(e){var a=this.chart,b=this.graphics.container,d=this.currentPage,g=a.graphics,m=g.pagePreNavigationLayer,g=g.pageNextNavigationLayer,k=b.length;b[d+e]&&(b[d].hide(),
b[d+e].show(),d=this.currentPage+=e);e=b[d].data("eventArgs");C.raiseEvent("pageNavigated",{pageId:d,data:e.data},a.chartInstance);0===d?m.hide():m.show();d===k-1?g.hide():g.show()}}])},[3,2,0,"sr2"]]);
