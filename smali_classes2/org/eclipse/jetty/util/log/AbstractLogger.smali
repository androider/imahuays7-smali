.class public abstract Lorg/eclipse/jetty/util/log/AbstractLogger;
.super Ljava/lang/Object;
.source "AbstractLogger.java"

# interfaces
.implements Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isBlank(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 69
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 70
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public final getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 2

    .line 30
    invoke-static {p1}, Lorg/eclipse/jetty/util/log/AbstractLogger;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lorg/eclipse/jetty/util/log/AbstractLogger;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getRootLogger()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    if-ne v1, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    :cond_2
    :goto_0
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getLoggers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/log/Logger;

    if-nez v0, :cond_4

    .line 39
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/log/AbstractLogger;->newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    .line 41
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getMutableLoggers()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/util/log/Logger;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p1

    :cond_4
    :goto_1
    return-object v0
.end method

.method protected abstract newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
.end method
