.class public Lanet/channel/strategy/y$b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:[Ljava/lang/String;

.field public final g:[Lanet/channel/strategy/y$a;

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:I

.field public final l:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "host"

    .line 72
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    const-string v0, "ttl"

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanet/channel/strategy/y$b;->b:I

    const-string v0, "safeAisles"

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/y$b;->c:Ljava/lang/String;

    const-string v0, "cname"

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/y$b;->d:Ljava/lang/String;

    const-string v0, "isHot"

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanet/channel/strategy/y$b;->k:I

    const-string v0, "clear"

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lanet/channel/strategy/y$b;->h:Z

    const-string v0, "etag"

    .line 78
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/y$b;->i:Ljava/lang/String;

    const-string v0, "notModified"

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lanet/channel/strategy/y$b;->j:Z

    const-string v0, "effectNow"

    .line 80
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lanet/channel/strategy/y$b;->l:Z

    const-string v0, "ips"

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 85
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lanet/channel/strategy/y$b;->e:[Ljava/lang/String;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 87
    iget-object v5, p0, Lanet/channel/strategy/y$b;->e:[Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 90
    :cond_2
    iput-object v1, p0, Lanet/channel/strategy/y$b;->e:[Ljava/lang/String;

    :cond_3
    const-string v0, "sips"

    .line 93
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 95
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 96
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lanet/channel/strategy/y$b;->f:[Ljava/lang/String;

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_5

    .line 98
    iget-object v5, p0, Lanet/channel/strategy/y$b;->f:[Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 101
    :cond_4
    iput-object v1, p0, Lanet/channel/strategy/y$b;->f:[Ljava/lang/String;

    :cond_5
    const-string v0, "aisles"

    .line 104
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 106
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 107
    new-array v1, v0, [Lanet/channel/strategy/y$a;

    iput-object v1, p0, Lanet/channel/strategy/y$b;->g:[Lanet/channel/strategy/y$a;

    :goto_4
    if-ge v2, v0, :cond_7

    .line 109
    iget-object v1, p0, Lanet/channel/strategy/y$b;->g:[Lanet/channel/strategy/y$a;

    new-instance v3, Lanet/channel/strategy/y$a;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lanet/channel/strategy/y$a;-><init>(Lorg/json/JSONObject;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 112
    :cond_6
    iput-object v1, p0, Lanet/channel/strategy/y$b;->g:[Lanet/channel/strategy/y$a;

    :cond_7
    return-void
.end method
