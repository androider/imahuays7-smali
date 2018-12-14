.class public Lcom/flurry/sdk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "g"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/m;",
            ">;"
        }
    .end annotation

    const-string v0, "variants"

    .line 30
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 37
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 42
    invoke-static {v2}, Lcom/flurry/sdk/g;->b(Lorg/json/JSONObject;)Lcom/flurry/sdk/m;

    move-result-object v2

    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/flurry/sdk/m;
    .locals 5

    const-string v0, "document"

    .line 55
    sget-object v1, Lcom/flurry/sdk/k;->a:Lcom/flurry/sdk/k;

    invoke-virtual {v1}, Lcom/flurry/sdk/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/flurry/sdk/m;

    invoke-static {v0}, Lcom/flurry/sdk/k;->a(Ljava/lang/String;)Lcom/flurry/sdk/k;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/sdk/m;-><init>(Lcom/flurry/sdk/k;)V

    const-string v0, "id"

    .line 57
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1050
    iput v0, v1, Lcom/flurry/sdk/m;->b:I

    const-string v0, "version"

    .line 58
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1058
    iput v0, v1, Lcom/flurry/sdk/m;->c:I

    .line 1066
    iput-object p0, v1, Lcom/flurry/sdk/m;->d:Lorg/json/JSONObject;

    const-string v0, "items"

    .line 61
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 64
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "name"

    const/4 v4, 0x0

    .line 69
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 71
    new-instance v4, Lcom/flurry/sdk/d;

    invoke-direct {v4, v2}, Lcom/flurry/sdk/d;-><init>(Lorg/json/JSONObject;)V

    .line 1070
    iget-object v2, v1, Lcom/flurry/sdk/m;->e:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
