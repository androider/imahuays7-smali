.class public Lanet/channel/strategy/y$c;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[Lanet/channel/strategy/y$b;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ip"

    .line 127
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/y$c;->a:Ljava/lang/String;

    const-string v0, "unit"

    .line 128
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/y$c;->b:Ljava/lang/String;

    const-string v0, "uid"

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/y$c;->d:Ljava/lang/String;

    const-string v0, "utdid"

    .line 130
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/y$c;->e:Ljava/lang/String;

    const-string v0, "cv"

    .line 131
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanet/channel/strategy/y$c;->f:I

    const-string v0, "fcl"

    .line 132
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanet/channel/strategy/y$c;->g:I

    const-string v0, "fct"

    .line 133
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanet/channel/strategy/y$c;->h:I

    const-string v0, "dns"

    .line 134
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 137
    new-array v1, v0, [Lanet/channel/strategy/y$b;

    iput-object v1, p0, Lanet/channel/strategy/y$c;->c:[Lanet/channel/strategy/y$b;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 139
    iget-object v2, p0, Lanet/channel/strategy/y$c;->c:[Lanet/channel/strategy/y$b;

    new-instance v3, Lanet/channel/strategy/y$b;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lanet/channel/strategy/y$b;-><init>(Lorg/json/JSONObject;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iput-object v1, p0, Lanet/channel/strategy/y$c;->c:[Lanet/channel/strategy/y$b;

    :cond_1
    return-void
.end method
