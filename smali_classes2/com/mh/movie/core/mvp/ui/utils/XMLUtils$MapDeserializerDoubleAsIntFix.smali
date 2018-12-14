.class public Lcom/mh/movie/core/mvp/ui/utils/XMLUtils$MapDeserializerDoubleAsIntFix;
.super Ljava/lang/Object;
.source "XMLUtils.java"

# interfaces
.implements Lcom/google/gson/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapDeserializerDoubleAsIntFix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/j<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/google/gson/k;Ljava/lang/reflect/Type;Lcom/google/gson/i;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils$MapDeserializerDoubleAsIntFix;->deserialize(Lcom/google/gson/k;Ljava/lang/reflect/Type;Lcom/google/gson/i;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/google/gson/k;Ljava/lang/reflect/Type;Lcom/google/gson/i;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/k;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/i;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils$MapDeserializerDoubleAsIntFix;->read(Lcom/google/gson/k;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public read(Lcom/google/gson/k;)Ljava/lang/Object;
    .locals 5

    .line 119
    invoke-virtual {p1}, Lcom/google/gson/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-virtual {p1}, Lcom/google/gson/k;->l()Lcom/google/gson/h;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/google/gson/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/k;

    .line 123
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils$MapDeserializerDoubleAsIntFix;->read(Lcom/google/gson/k;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 126
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/k;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    .line 128
    invoke-virtual {p1}, Lcom/google/gson/k;->k()Lcom/google/gson/m;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/google/gson/m;->o()Ljava/util/Set;

    move-result-object p1

    .line 130
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/k;

    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils$MapDeserializerDoubleAsIntFix;->read(Lcom/google/gson/k;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0

    .line 134
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/k;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    invoke-virtual {p1}, Lcom/google/gson/k;->m()Lcom/google/gson/n;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lcom/google/gson/n;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    invoke-virtual {p1}, Lcom/google/gson/n;->f()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 138
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/n;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    invoke-virtual {p1}, Lcom/google/gson/n;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 140
    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/n;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    invoke-virtual {p1}, Lcom/google/gson/n;->a()Ljava/lang/Number;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    cmpl-double v4, v0, v2

    if-nez v4, :cond_6

    .line 146
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 148
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method
