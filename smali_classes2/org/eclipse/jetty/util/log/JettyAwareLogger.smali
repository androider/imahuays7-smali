.class Lorg/eclipse/jetty/util/log/JettyAwareLogger;
.super Ljava/lang/Object;
.source "JettyAwareLogger.java"

# interfaces
.implements Lorg/slf4j/Logger;


# static fields
.field private static final DEBUG:I = 0xa

.field private static final ERROR:I = 0x28

.field private static final FQCN:Ljava/lang/String;

.field private static final INFO:I = 0x14

.field private static final TRACE:I = 0x0

.field private static final WARN:I = 0x1e


# instance fields
.field private final _logger:Lorg/slf4j/spi/LocationAwareLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/eclipse/jetty/util/log/Slf4jLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->FQCN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/slf4j/spi/LocationAwareLogger;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    return-void
.end method

.method private log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    if-nez p4, :cond_0

    .line 607
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->FQCN:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 611
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x14

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1e

    goto :goto_0

    :cond_4
    const/16 v0, 0x28

    :goto_0
    if-gt v0, p2, :cond_5

    .line 619
    invoke-static {p3, p4}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p3

    .line 620
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->FQCN:Ljava/lang/String;

    invoke-virtual {p3}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 179
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 188
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 197
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 p2, 0x1

    aput-object p3, v5, p2

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .line 215
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 206
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6

    const/16 v2, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 233
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 242
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const/16 v3, 0xa

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 251
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const/4 p3, 0x1

    aput-object p4, v5, p3

    const/16 v3, 0xa

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/16 v2, 0xa

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 269
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/16 v2, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 260
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0x28

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 503
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 512
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 v2, 0x0

    const/16 v3, 0x28

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 521
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 p2, 0x1

    aput-object p3, v5, p2

    const/4 v2, 0x0

    const/16 v3, 0x28

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0x28

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .line 539
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0x28

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 530
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6

    const/16 v2, 0x28

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 557
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 566
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const/16 v3, 0x28

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 575
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const/4 p3, 0x1

    aput-object p4, v5, p3

    const/16 v3, 0x28

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/16 v2, 0x28

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 593
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/16 v2, 0x28

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 584
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 287
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 296
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 v2, 0x0

    const/16 v3, 0x14

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 305
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 p2, 0x1

    aput-object p3, v5, p2

    const/4 v2, 0x0

    const/16 v3, 0x14

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .line 323
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 314
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6

    const/16 v2, 0x14

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 341
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 350
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const/16 v3, 0x14

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 359
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const/4 p3, 0x1

    aput-object p4, v5, p3

    const/16 v3, 0x14

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/16 v2, 0x14

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 377
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/16 v2, 0x14

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 368
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isDebugEnabled(Lorg/slf4j/Marker;)Z
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isDebugEnabled(Lorg/slf4j/Marker;)Z

    move-result p1

    return p1
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled(Lorg/slf4j/Marker;)Z
    .locals 1

    .line 548
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isErrorEnabled(Lorg/slf4j/Marker;)Z

    move-result p1

    return p1
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled(Lorg/slf4j/Marker;)Z
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isInfoEnabled(Lorg/slf4j/Marker;)Z

    move-result p1

    return p1
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled(Lorg/slf4j/Marker;)Z
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isTraceEnabled(Lorg/slf4j/Marker;)Z

    move-result p1

    return p1
.end method

.method public isWarnEnabled()Z
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled(Lorg/slf4j/Marker;)Z
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isWarnEnabled(Lorg/slf4j/Marker;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 599
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 71
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 80
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 89
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 p2, 0x1

    aput-object p3, v5, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .line 107
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 98
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 125
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 134
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 143
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const/4 p3, 0x1

    aput-object p4, v5, p3

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 161
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 152
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0x1e

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 395
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 404
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 v2, 0x0

    const/16 v3, 0x1e

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 422
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 p2, 0x1

    aput-object p3, v5, p2

    const/4 v2, 0x0

    const/16 v3, 0x1e

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0x1e

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .line 431
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0x1e

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 413
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6

    const/16 v2, 0x1e

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 449
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 458
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const/16 v3, 0x1e

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 467
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const/4 p3, 0x1

    aput-object p4, v5, p3

    const/16 v3, 0x1e

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/16 v2, 0x1e

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 485
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/16 v2, 0x1e

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 476
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
