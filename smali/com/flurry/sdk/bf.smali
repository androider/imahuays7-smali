.class public Lcom/flurry/sdk/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/dx<",
        "Lcom/flurry/sdk/af;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "bf"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 154
    :cond_0
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1160
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Deserialize not supported for request"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    check-cast p2, Lcom/flurry/sdk/af;

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 2054
    :cond_0
    new-instance v0, Lcom/flurry/sdk/bf$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/bf$1;-><init>(Lcom/flurry/sdk/bf;Ljava/io/OutputStream;)V

    .line 2061
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "project_key"

    .line 2063
    iget-object v2, p2, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/bf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bundle_id"

    .line 2064
    iget-object v2, p2, Lcom/flurry/sdk/af;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/bf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_version"

    .line 2065
    iget-object v2, p2, Lcom/flurry/sdk/af;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/bf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk_version"

    .line 2066
    iget v2, p2, Lcom/flurry/sdk/af;->d:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "platform"

    .line 2067
    iget v2, p2, Lcom/flurry/sdk/af;->e:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "platform_version"

    .line 2068
    iget-object v2, p2, Lcom/flurry/sdk/af;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/bf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "limit_ad_tracking"

    .line 2069
    iget-boolean v2, p2, Lcom/flurry/sdk/af;->g:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2073
    iget-object v1, p2, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2074
    iget-object v1, p2, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    iget-object v1, v1, Lcom/flurry/sdk/ai;->a:Lcom/flurry/sdk/ac;

    if-eqz v1, :cond_1

    .line 2075
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2076
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "model"

    .line 2078
    iget-object v5, p2, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    iget-object v5, v5, Lcom/flurry/sdk/ai;->a:Lcom/flurry/sdk/ac;

    iget-object v5, v5, Lcom/flurry/sdk/ac;->a:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/bf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "brand"

    .line 2079
    iget-object v5, p2, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    iget-object v5, v5, Lcom/flurry/sdk/ai;->a:Lcom/flurry/sdk/ac;

    iget-object v5, v5, Lcom/flurry/sdk/ac;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/bf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "id"

    .line 2080
    iget-object v5, p2, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    iget-object v5, v5, Lcom/flurry/sdk/ai;->a:Lcom/flurry/sdk/ac;

    iget-object v5, v5, Lcom/flurry/sdk/ac;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/bf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "device"

    .line 2081
    iget-object v5, p2, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    iget-object v5, v5, Lcom/flurry/sdk/ai;->a:Lcom/flurry/sdk/ac;

    iget-object v5, v5, Lcom/flurry/sdk/ac;->d:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/bf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "product"

    .line 2082
    iget-object v5, p2, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    iget-object v5, v5, Lcom/flurry/sdk/ai;->a:Lcom/flurry/sdk/ac;

    iget-object v5, v5, Lcom/flurry/sdk/ac;->e:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/bf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "version_release"

    .line 2084
    iget-object v5, p2, Lcom/flurry/sdk/af;->h:Lcom/flurry/sdk/ai;

    iget-object v5, v5, Lcom/flurry/sdk/ai;->a:Lcom/flurry/sdk/ac;

    iget-object v5, v5, Lcom/flurry/sdk/ac;->f:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/bf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.flurry.proton.generated.avro.v2.AndroidTags"

    .line 2087
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    const-string v3, "device_tags"

    .line 2091
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string v1, "device_tags"

    .line 2093
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2097
    :goto_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2099
    iget-object v3, p2, Lcom/flurry/sdk/af;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/ah;

    .line 2100
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "type"

    .line 2101
    iget v7, v4, Lcom/flurry/sdk/ah;->a:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "id"

    .line 2102
    iget-object v4, v4, Lcom/flurry/sdk/ah;->b:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/flurry/sdk/bf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    const-string v3, "device_ids"

    .line 2107
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2110
    iget-object v1, p2, Lcom/flurry/sdk/af;->j:Lcom/flurry/sdk/am;

    if-eqz v1, :cond_4

    .line 2111
    iget-object v1, p2, Lcom/flurry/sdk/af;->j:Lcom/flurry/sdk/am;

    iget-object v1, v1, Lcom/flurry/sdk/am;->a:Lcom/flurry/sdk/al;

    if-eqz v1, :cond_4

    .line 2112
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2113
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "latitude"

    .line 2114
    iget-object v4, p2, Lcom/flurry/sdk/af;->j:Lcom/flurry/sdk/am;

    iget-object v4, v4, Lcom/flurry/sdk/am;->a:Lcom/flurry/sdk/al;

    iget-wide v4, v4, Lcom/flurry/sdk/al;->a:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "longitude"

    .line 2115
    iget-object v4, p2, Lcom/flurry/sdk/af;->j:Lcom/flurry/sdk/am;

    iget-object v4, v4, Lcom/flurry/sdk/am;->a:Lcom/flurry/sdk/al;

    iget-wide v4, v4, Lcom/flurry/sdk/al;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "accuracy"

    .line 2116
    iget-object v4, p2, Lcom/flurry/sdk/af;->j:Lcom/flurry/sdk/am;

    iget-object v4, v4, Lcom/flurry/sdk/am;->a:Lcom/flurry/sdk/al;

    iget v4, v4, Lcom/flurry/sdk/al;->c:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "com.flurry.proton.generated.avro.v2.Geolocation"

    .line 2117
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz v2, :cond_5

    const-string v1, "geo"

    .line 2121
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_5
    const-string v1, "geo"

    .line 2123
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2126
    :goto_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2127
    iget-object v2, p2, Lcom/flurry/sdk/af;->k:Lcom/flurry/sdk/ap;

    if-eqz v2, :cond_6

    const-string v2, "string"

    .line 2128
    iget-object p2, p2, Lcom/flurry/sdk/af;->k:Lcom/flurry/sdk/ap;

    iget-object p2, p2, Lcom/flurry/sdk/ap;->a:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/flurry/sdk/bf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "publisher_user_id"

    .line 2129
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_6
    const-string p2, "publisher_user_id"

    .line 2131
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    const/4 p2, 0x5

    .line 2134
    sget-object v1, Lcom/flurry/sdk/bf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proton Request String: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2136
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 2137
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2141
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 2139
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    const-string v1, "Invalid Json"

    invoke-direct {p2, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2141
    :goto_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw p1

    :cond_7
    :goto_6
    return-void
.end method
