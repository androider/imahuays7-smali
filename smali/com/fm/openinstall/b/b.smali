.class public Lcom/fm/openinstall/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fm/openinstall/b/b;->a:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/fm/openinstall/b/b;->b:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/fm/openinstall/b/b;->c:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/fm/openinstall/b/b;->d:Ljava/lang/Long;

    const-string v0, ""

    iput-object v0, p0, Lcom/fm/openinstall/b/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/fm/openinstall/b/b;
    .locals 4

    new-instance v0, Lcom/fm/openinstall/b/b;

    invoke-direct {v0}, Lcom/fm/openinstall/b/b;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "wakeupStatsEnabled"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    const-string p0, "wakeupStatsEnabled"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/fm/openinstall/b/b;->a(Ljava/lang/Boolean;)V

    :cond_1
    const-string p0, "aliveStatsEnabled"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "aliveStatsEnabled"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/fm/openinstall/b/b;->c(Ljava/lang/Boolean;)V

    :cond_2
    const-string p0, "registerStatsEnabled"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "registerStatsEnabled"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/fm/openinstall/b/b;->b(Ljava/lang/Boolean;)V

    :cond_3
    const-string p0, "eventStatsEnabled"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "eventStatsEnabled"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/fm/openinstall/b/b;->c(Ljava/lang/Boolean;)V

    :cond_4
    const-string p0, "reportPeriod"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "reportPeriod"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/fm/openinstall/b/b;->a(Ljava/lang/Long;)V

    :cond_5
    const-string p0, "installId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "installId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/fm/openinstall/b/b;->b(Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method private d(Ljava/lang/Boolean;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/fm/openinstall/b/b;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/b/b;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/b/b;->d:Ljava/lang/Long;

    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/b/b;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/b/b;->e:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/fm/openinstall/b/b;->a:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/fm/openinstall/b/b;->d(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/fm/openinstall/b/b;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/b/b;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/fm/openinstall/b/b;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/fm/openinstall/b/b;->c:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/fm/openinstall/b/b;->d(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/fm/openinstall/b/b;->b:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/fm/openinstall/b/b;->d(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/fm/openinstall/b/b;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fm/openinstall/b/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "wakeupStatsEnabled"

    iget-object v2, p0, Lcom/fm/openinstall/b/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "registerStatsEnabled"

    iget-object v2, p0, Lcom/fm/openinstall/b/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventStatsEnabled"

    iget-object v2, p0, Lcom/fm/openinstall/b/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reportPeriod"

    iget-object v2, p0, Lcom/fm/openinstall/b/b;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "installId"

    iget-object v2, p0, Lcom/fm/openinstall/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
