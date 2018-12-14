.class public final Lcom/tencent/a/a/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field T:J

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/a/a/a/a/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/a/a/a/a/c;->b:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/a/a/a/a/c;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/a/a/a/a/c;->T:J

    return-void
.end method

.method static e(Ljava/lang/String;)Lcom/tencent/a/a/a/a/c;
    .locals 3

    new-instance v0, Lcom/tencent/a/a/a/a/c;

    invoke-direct {v0}, Lcom/tencent/a/a/a/a/c;-><init>()V

    invoke-static {p0}, Lcom/tencent/a/a/a/a/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "ui"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ui"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/a/a/a/a/c;->a:Ljava/lang/String;

    :cond_0
    const-string p0, "mc"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "mc"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/a/a/a/a/c;->b:Ljava/lang/String;

    :cond_1
    const-string p0, "mid"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "mid"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/a/a/a/a/c;->c:Ljava/lang/String;

    :cond_2
    const-string p0, "ts"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "ts"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/a/a/a/a/c;->T:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v1, "MID"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object v0
.end method

.method private n()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ui"

    iget-object v2, p0, Lcom/tencent/a/a/a/a/c;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/a/a/a/a/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mc"

    iget-object v2, p0, Lcom/tencent/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/a/a/a/a/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mid"

    iget-object v2, p0, Lcom/tencent/a/a/a/a/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/a/a/a/a/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ts"

    iget-wide v2, p0, Lcom/tencent/a/a/a/a/c;->T:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "MID"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/a/a/a/a/c;->n()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
