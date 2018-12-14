.class public Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;
.super Ljava/lang/Object;
.source "Holder.java"

# interfaces
.implements Ljavax/servlet/Registration$Dynamic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HolderRegistration"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/Holder;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/servlet/Holder;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInitParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAsyncSupported(Z)V
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->illegalStateIfContextStarted()V

    .line 330
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/Holder;->setAsyncSupported(Z)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 3

    .line 335
    invoke-static {}, Lorg/eclipse/jetty/servlet/Holder;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lorg/eclipse/jetty/servlet/Holder;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 361
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->illegalStateIfContextStarted()V

    if-nez p1, :cond_0

    .line 363
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "init parameter name required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 366
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "non-null value required for init parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 368
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 370
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/servlet/Holder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setInitParameters(Ljava/util/Map;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->illegalStateIfContextStarted()V

    .line 378
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 380
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 381
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "init parameter name required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 383
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 384
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "non-null value required for init parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_3

    .line 389
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 390
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    return-object v1

    .line 395
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 396
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
