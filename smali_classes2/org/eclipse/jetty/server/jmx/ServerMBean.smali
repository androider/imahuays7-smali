.class public Lorg/eclipse/jetty/server/jmx/ServerMBean;
.super Lorg/eclipse/jetty/jmx/ObjectMBean;
.source "ServerMBean.java"


# instance fields
.field private final server:Lorg/eclipse/jetty/server/Server;

.field private final startupTime:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/jmx/ObjectMBean;-><init>(Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/jmx/ServerMBean;->startupTime:J

    .line 38
    check-cast p1, Lorg/eclipse/jetty/server/Server;

    iput-object p1, p0, Lorg/eclipse/jetty/server/jmx/ServerMBean;->server:Lorg/eclipse/jetty/server/Server;

    return-void
.end method


# virtual methods
.method public getContexts()[Lorg/eclipse/jetty/server/Handler;
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/server/jmx/ServerMBean;->server:Lorg/eclipse/jetty/server/Server;

    const-class v1, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getStartupTime()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/eclipse/jetty/server/jmx/ServerMBean;->startupTime:J

    return-wide v0
.end method
