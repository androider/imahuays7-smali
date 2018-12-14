.class public Lorg/eclipse/jetty/util/component/Container$Relationship;
.super Ljava/lang/Object;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/component/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Relationship"
.end annotation


# instance fields
.field private final _child:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _container:Lorg/eclipse/jetty/util/component/Container;

.field private final _parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _relationship:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/util/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_container:Lorg/eclipse/jetty/util/component/Container;

    .line 247
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_parent:Ljava/lang/ref/WeakReference;

    .line 248
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_child:Ljava/lang/ref/WeakReference;

    .line 249
    iput-object p4, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_relationship:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lorg/eclipse/jetty/util/component/Container$1;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/util/component/Container$Relationship;-><init>(Lorg/eclipse/jetty/util/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 287
    instance-of v1, p1, Lorg/eclipse/jetty/util/component/Container$Relationship;

    if-nez v1, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    check-cast p1, Lorg/eclipse/jetty/util/component/Container$Relationship;

    .line 290
    iget-object v1, p1, Lorg/eclipse/jetty/util/component/Container$Relationship;->_parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lorg/eclipse/jetty/util/component/Container$Relationship;->_child:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_child:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object p1, p1, Lorg/eclipse/jetty/util/component/Container$Relationship;->_relationship:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_relationship:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getChild()Ljava/lang/Object;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_child:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContainer()Lorg/eclipse/jetty/util/component/Container;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_container:Lorg/eclipse/jetty/util/component/Container;

    return-object v0
.end method

.method public getParent()Ljava/lang/Object;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRelationship()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_relationship:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_child:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_relationship:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_relationship:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_child:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
