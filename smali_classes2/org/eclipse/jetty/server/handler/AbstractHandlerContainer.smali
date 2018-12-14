.class public abstract Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "AbstractHandlerContainer.java"

# interfaces
.implements Lorg/eclipse/jetty/server/HandlerContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    return-void
.end method

.method public static findContainerOf(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/Class;Lorg/eclipse/jetty/server/Handler;)Lorg/eclipse/jetty/server/HandlerContainer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/eclipse/jetty/server/HandlerContainer;",
            ">(",
            "Lorg/eclipse/jetty/server/HandlerContainer;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/eclipse/jetty/server/Handler;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 99
    :cond_0
    invoke-interface {p0, p1}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 102
    array-length p1, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    aget-object v3, p0, v2

    .line 104
    check-cast v3, Lorg/eclipse/jetty/server/HandlerContainer;

    .line 105
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 108
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    if-ne v7, p2, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->dumpThis(Ljava/lang/Appendable;)V

    const/4 v0, 0x2

    .line 121
    new-array v0, v0, [Ljava/util/Collection;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->getBeans()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    return-void
.end method

.method protected expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p1
.end method

.method protected expandHandler(Lorg/eclipse/jetty/server/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/server/Handler;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "Lorg/eclipse/jetty/server/Handler;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-eqz p3, :cond_1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    :cond_1
    invoke-static {p2, p1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 81
    :cond_2
    instance-of v0, p1, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;

    if-eqz v0, :cond_3

    .line 82
    check-cast p1, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 83
    :cond_3
    instance-of v0, p1, Lorg/eclipse/jetty/server/HandlerContainer;

    if-eqz v0, :cond_5

    .line 85
    check-cast p1, Lorg/eclipse/jetty/server/HandlerContainer;

    if-nez p3, :cond_4

    .line 86
    invoke-interface {p1}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-interface {p1, p3}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object p1

    .line 87
    :goto_0
    invoke-static {p2, p1}, Lorg/eclipse/jetty/util/LazyList;->addArray(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_5
    :goto_1
    return-object p2
.end method

.method public getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/eclipse/jetty/server/Handler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 63
    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/server/Handler;

    return-object p1
.end method

.method public getChildHandlers()[Lorg/eclipse/jetty/server/Handler;
    .locals 2

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0, v0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    const-class v1, Lorg/eclipse/jetty/server/Handler;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/server/Handler;

    return-object v0
.end method

.method public getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lorg/eclipse/jetty/server/Handler;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jetty/server/Handler;

    return-object p1
.end method
