.class Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;
.super Ljava/lang/Object;
.source "ContextHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/ContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CLDump"
.end annotation


# instance fields
.field final _loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 2449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2450
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;->_loader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 1

    .line 2455
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2460
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;->_loader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2462
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;->_loader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_2

    .line 2464
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;->_loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2467
    instance-of v1, v0, Lorg/eclipse/jetty/util/component/Dumpable;

    if-nez v1, :cond_0

    .line 2468
    new-instance v1, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;-><init>(Ljava/lang/ClassLoader;)V

    move-object v0, v1

    .line 2470
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;->_loader:Ljava/lang/ClassLoader;

    instance-of v1, v1, Ljava/net/URLClassLoader;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 2471
    new-array v1, v1, [Ljava/util/Collection;

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;->_loader:Ljava/lang/ClassLoader;

    check-cast v4, Ljava/net/URLClassLoader;

    invoke-virtual {v4}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p1, p2, v1}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    goto :goto_0

    .line 2473
    :cond_1
    new-array v1, v2, [Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p1, p2, v1}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    :cond_2
    :goto_0
    return-void
.end method
