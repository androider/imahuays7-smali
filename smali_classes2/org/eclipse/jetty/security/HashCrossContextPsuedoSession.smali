.class public Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;
.super Ljava/lang/Object;
.source "HashCrossContextPsuedoSession.java"

# interfaces
.implements Lorg/eclipse/jetty/security/CrossContextPsuedoSession;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/eclipse/jetty/security/CrossContextPsuedoSession<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final _cookieName:Ljava/lang/String;

.field private final _cookiePath:Ljava/lang/String;

.field private final _data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final _random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_random:Ljava/util/Random;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookieName:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "/"

    .line 46
    :cond_0
    iput-object p2, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookiePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 5

    .line 85
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 87
    iget-object v3, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookieName:Ljava/lang/String;

    invoke-virtual {v2}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {v2}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public fetch(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/http/HttpServletRequest;",
            ")TT;"
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 53
    iget-object v3, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookieName:Ljava/lang/String;

    invoke-virtual {v2}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v2}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public store(Ljava/lang/Object;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljavax/servlet/http/HttpServletResponse;",
            ")V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    monitor-enter v0

    .line 71
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x7

    rem-long/2addr v3, v5

    long-to-int v3, v3

    add-int/lit8 v3, v3, 0x1e

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    new-instance p1, Ljavax/servlet/http/Cookie;

    iget-object v0, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookieName:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookiePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V

    .line 80
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->addCookie(Ljavax/servlet/http/Cookie;)V

    return-void

    :catchall_0
    move-exception p1

    .line 76
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
