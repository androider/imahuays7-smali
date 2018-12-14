.class public final Lcom/flurry/sdk/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/flurry/sdk/m;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/flurry/sdk/k;

.field public b:I

.field public c:I

.field d:Lorg/json/JSONObject;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/k;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/m;->e:Ljava/util/Map;

    .line 34
    iput-object p1, p0, Lcom/flurry/sdk/m;->a:Lcom/flurry/sdk/k;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/m;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/m;->e:Ljava/util/Map;

    .line 26
    iget-object v0, p1, Lcom/flurry/sdk/m;->a:Lcom/flurry/sdk/k;

    iput-object v0, p0, Lcom/flurry/sdk/m;->a:Lcom/flurry/sdk/k;

    .line 27
    iget v0, p1, Lcom/flurry/sdk/m;->b:I

    iput v0, p0, Lcom/flurry/sdk/m;->b:I

    .line 28
    iget v0, p1, Lcom/flurry/sdk/m;->c:I

    iput v0, p0, Lcom/flurry/sdk/m;->c:I

    .line 29
    iget-object v0, p1, Lcom/flurry/sdk/m;->d:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/flurry/sdk/m;->d:Lorg/json/JSONObject;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/flurry/sdk/m;->e:Ljava/util/Map;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/flurry/sdk/m;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/d;",
            ">;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/flurry/sdk/m;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/flurry/sdk/m;)V
    .locals 3

    .line 90
    invoke-virtual {p1}, Lcom/flurry/sdk/m;->a()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcom/flurry/sdk/m;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/flurry/sdk/m;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 16
    check-cast p1, Lcom/flurry/sdk/m;

    .line 1114
    iget-object v0, p0, Lcom/flurry/sdk/m;->a:Lcom/flurry/sdk/k;

    iget-object v1, p1, Lcom/flurry/sdk/m;->a:Lcom/flurry/sdk/k;

    if-eq v0, v1, :cond_1

    .line 1115
    iget-object p1, p0, Lcom/flurry/sdk/m;->a:Lcom/flurry/sdk/k;

    sget-object v0, Lcom/flurry/sdk/k;->a:Lcom/flurry/sdk/k;

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 1118
    :cond_1
    iget v0, p0, Lcom/flurry/sdk/m;->b:I

    iget p1, p1, Lcom/flurry/sdk/m;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 104
    :cond_0
    instance-of v1, p1, Lcom/flurry/sdk/m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 108
    :cond_1
    check-cast p1, Lcom/flurry/sdk/m;

    .line 109
    iget-object v1, p0, Lcom/flurry/sdk/m;->a:Lcom/flurry/sdk/k;

    iget-object v3, p1, Lcom/flurry/sdk/m;->a:Lcom/flurry/sdk/k;

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/flurry/sdk/m;->b:I

    iget p1, p1, Lcom/flurry/sdk/m;->b:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/flurry/sdk/m;->a:Lcom/flurry/sdk/k;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/flurry/sdk/m;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/m;->a:Lcom/flurry/sdk/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/flurry/sdk/m;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/flurry/sdk/m;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
