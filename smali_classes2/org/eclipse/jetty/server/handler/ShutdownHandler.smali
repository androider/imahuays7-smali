.class public Lorg/eclipse/jetty/server/handler/ShutdownHandler;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "ShutdownHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _exitJvm:Z

.field private final _server:Lorg/eclipse/jetty/server/Server;

.field private final _shutdownToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Server;Ljava/lang/String;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_exitJvm:Z

    .line 89
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_server:Lorg/eclipse/jetty/server/Server;

    .line 90
    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_shutdownToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/handler/ShutdownHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->shutdownServer()V

    return-void
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 67
    sget-object v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private hasCorrectSecurityToken(Ljavax/servlet/http/HttpServletRequest;)Z
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_shutdownToken:Ljava/lang/String;

    const-string v1, "token"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private requestFromLocalhost(Ljavax/servlet/http/HttpServletRequest;)Z
    .locals 1

    const-string v0, "127.0.0.1"

    .line 142
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->getRemoteAddr(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private shutdownServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->stop()V

    .line 159
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_exitJvm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 161
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getRemoteAddr(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 0

    .line 147
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    const-string p2, "/shutdown"

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string p2, "POST"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x190

    .line 102
    invoke-interface {p4, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void

    .line 105
    :cond_1
    invoke-direct {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->hasCorrectSecurityToken(Ljavax/servlet/http/HttpServletRequest;)Z

    move-result p1

    const/16 p2, 0x191

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 107
    sget-object p1, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unauthorized shutdown attempt from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->getRemoteAddr(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-interface {p4, p2}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void

    .line 111
    :cond_2
    invoke-direct {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->requestFromLocalhost(Ljavax/servlet/http/HttpServletRequest;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 113
    sget-object p1, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unauthorized shutdown attempt from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->getRemoteAddr(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-interface {p4, p2}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void

    .line 118
    :cond_3
    sget-object p1, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Shutting down by request from "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->getRemoteAddr(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    new-instance p1, Lorg/eclipse/jetty/server/handler/ShutdownHandler$1;

    invoke-direct {p1, p0}, Lorg/eclipse/jetty/server/handler/ShutdownHandler$1;-><init>(Lorg/eclipse/jetty/server/handler/ShutdownHandler;)V

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ShutdownHandler$1;->start()V

    return-void
.end method

.method public setExitJvm(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_exitJvm:Z

    return-void
.end method
