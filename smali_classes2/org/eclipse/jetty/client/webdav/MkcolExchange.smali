.class public Lorg/eclipse/jetty/client/webdav/MkcolExchange;
.super Lorg/eclipse/jetty/client/CachedExchange;
.source "MkcolExchange.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field exists:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/client/CachedExchange;-><init>(Z)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->exists:Z

    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->exists:Z

    return v0
.end method

.method protected onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc9

    if-ne p2, v2, :cond_0

    .line 47
    sget-object v2, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "MkcolExchange:Status: Successfully created resource"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->exists:Z

    :cond_0
    const/16 v2, 0x195

    if-ne p2, v2, :cond_1

    .line 53
    sget-object v2, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "MkcolExchange:Status: Resource must exist"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->exists:Z

    .line 57
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/CachedExchange;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method
