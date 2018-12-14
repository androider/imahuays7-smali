.class Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lorg/eclipse/jetty/util/Attributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncludeAttributes"
.end annotation


# instance fields
.field final _attr:Lorg/eclipse/jetty/util/Attributes;

.field _contextPath:Ljava/lang/String;

.field _pathInfo:Ljava/lang/String;

.field _query:Ljava/lang/String;

.field _requestURI:Ljava/lang/String;

.field _servletPath:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jetty/server/Dispatcher;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/Dispatcher;Lorg/eclipse/jetty/util/Attributes;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->this$0:Lorg/eclipse/jetty/server/Dispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    return-void
.end method


# virtual methods
.method public clearAttributes()V
    .locals 1

    .line 541
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 465
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->this$0:Lorg/eclipse/jetty/server/Dispatcher;

    invoke-static {v0}, Lorg/eclipse/jetty/server/Dispatcher;->access$000(Lorg/eclipse/jetty/server/Dispatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "javax.servlet.include.path_info"

    .line 467
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_pathInfo:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, "javax.servlet.include.servlet_path"

    .line 468
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_servletPath:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string v0, "javax.servlet.include.context_path"

    .line 469
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_contextPath:Ljava/lang/String;

    return-object p1

    :cond_2
    const-string v0, "javax.servlet.include.query_string"

    .line 470
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_query:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string v0, "javax.servlet.include.request_uri"

    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_requestURI:Ljava/lang/String;

    return-object p1

    :cond_4
    const-string v0, "javax.servlet.include."

    .line 473
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    return-object p1

    .line 477
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 4

    .line 483
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 484
    iget-object v1, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/Attributes;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 485
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "javax.servlet.include."

    .line 488
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 489
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->this$0:Lorg/eclipse/jetty/server/Dispatcher;

    invoke-static {v1}, Lorg/eclipse/jetty/server/Dispatcher;->access$000(Lorg/eclipse/jetty/server/Dispatcher;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 494
    iget-object v1, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_pathInfo:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "javax.servlet.include.path_info"

    .line 495
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v1, "javax.servlet.include.path_info"

    .line 497
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_1
    const-string v1, "javax.servlet.include.request_uri"

    .line 498
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "javax.servlet.include.servlet_path"

    .line 499
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "javax.servlet.include.context_path"

    .line 500
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v1, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_query:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "javax.servlet.include.query_string"

    .line 502
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v1, "javax.servlet.include.query_string"

    .line 504
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 507
    :cond_4
    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 547
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 513
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->this$0:Lorg/eclipse/jetty/server/Dispatcher;

    invoke-static {v0}, Lorg/eclipse/jetty/server/Dispatcher;->access$000(Lorg/eclipse/jetty/server/Dispatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "javax.servlet."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "javax.servlet.include.path_info"

    .line 515
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_pathInfo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "javax.servlet.include.request_uri"

    .line 516
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_requestURI:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "javax.servlet.include.servlet_path"

    .line 517
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_servletPath:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "javax.servlet.include.context_path"

    .line 518
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_contextPath:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "javax.servlet.include.query_string"

    .line 519
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_query:Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    .line 521
    iget-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    if-nez p2, :cond_7

    .line 526
    iget-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 528
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INCLUDE+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
