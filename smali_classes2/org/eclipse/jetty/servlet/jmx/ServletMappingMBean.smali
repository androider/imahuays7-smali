.class public Lorg/eclipse/jetty/servlet/jmx/ServletMappingMBean;
.super Lorg/eclipse/jetty/jmx/ObjectMBean;
.source "ServletMappingMBean.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/jmx/ObjectMBean;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getObjectNameBasis()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/jmx/ServletMappingMBean;->_managed:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/jmx/ServletMappingMBean;->_managed:Ljava/lang/Object;

    instance-of v0, v0, Lorg/eclipse/jetty/servlet/ServletMapping;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/jmx/ServletMappingMBean;->_managed:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletMapping;

    .line 37
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 42
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/jmx/ObjectMBean;->getObjectNameBasis()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
