.class public Lorg/fourthline/cling/model/resource/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private pathQuery:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "TM;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_0
    new-instance v6, Ljava/net/URI;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lorg/fourthline/cling/model/resource/Resource;->pathQuery:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iput-object p2, p0, Lorg/fourthline/cling/model/resource/Resource;->model:Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Model instance must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 44
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    check-cast p1, Lorg/fourthline/cling/model/resource/Resource;

    .line 100
    invoke-virtual {p0}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p1}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getModel()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/fourthline/cling/model/resource/Resource;->model:Ljava/lang/Object;

    return-object v0
.end method

.method public getPathQuery()Ljava/net/URI;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/fourthline/cling/model/resource/Resource;->pathQuery:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 107
    invoke-virtual {p0}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public maintain(Ljava/util/List;Lorg/fourthline/cling/model/ExpirationDetails;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lorg/fourthline/cling/model/ExpirationDetails;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public matches(Ljava/net/URI;)Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
