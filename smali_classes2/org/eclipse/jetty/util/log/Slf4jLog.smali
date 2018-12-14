.class public Lorg/eclipse/jetty/util/log/Slf4jLog;
.super Lorg/eclipse/jetty/util/log/AbstractLogger;
.source "Slf4jLog.java"


# instance fields
.field private final _logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "org.eclipse.jetty.util.log"

    .line 32
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/log/Slf4jLog;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;-><init>()V

    .line 38
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 42
    instance-of v0, p1, Lorg/slf4j/spi/LocationAwareLogger;

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;

    check-cast p1, Lorg/slf4j/spi/LocationAwareLogger;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;-><init>(Lorg/slf4j/spi/LocationAwareLogger;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    goto :goto_0

    .line 48
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    :goto_0
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 94
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignore(Ljava/lang/Throwable;)V
    .locals 1

    .line 122
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IGNORED "

    .line 124
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 79
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method protected newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 117
    new-instance v0, Lorg/eclipse/jetty/util/log/Slf4jLog;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setDebugEnabled(Z)V
    .locals 3

    const-string p1, "setDebugEnabled not implemented"

    const/4 v0, 0x2

    .line 109
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/log/Slf4jLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->_logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 64
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
