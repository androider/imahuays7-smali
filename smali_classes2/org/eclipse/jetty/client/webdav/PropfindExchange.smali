.class public Lorg/eclipse/jetty/client/webdav/PropfindExchange;
.super Lorg/eclipse/jetty/client/HttpExchange;
.source "PropfindExchange.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field _propertyExists:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/eclipse/jetty/client/webdav/PropfindExchange;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->_propertyExists:Z

    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->_propertyExists:Z

    return v0
.end method

.method protected onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    .line 42
    sget-object v1, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "PropfindExchange:Status: Exists"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->_propertyExists:Z

    goto :goto_0

    .line 47
    :cond_0
    sget-object v1, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "PropfindExchange:Status: Not Exists"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpExchange;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method
