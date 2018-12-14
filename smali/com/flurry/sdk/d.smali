.class public Lcom/flurry/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/d$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/String; = null

.field static b:Ljava/lang/String; = null

.field private static final e:Ljava/lang/String; = "d"


# instance fields
.field c:Lcom/flurry/sdk/d$a;

.field d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type"

    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    invoke-static {v1}, Lcom/flurry/sdk/d$a;->a(Lcom/flurry/sdk/d$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iput-object v0, p0, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/d$a;

    const-string v0, "value"

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/d;->d:Ljava/lang/Object;

    return-void

    .line 49
    :cond_0
    sget-object v1, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    invoke-static {v1}, Lcom/flurry/sdk/d$a;->a(Lcom/flurry/sdk/d$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    sget-object v0, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    iput-object v0, p0, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/d$a;

    const-string v0, "value"

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/d;->d:Ljava/lang/Object;

    return-void

    .line 52
    :cond_1
    sget-object p1, Lcom/flurry/sdk/d$a;->c:Lcom/flurry/sdk/d$a;

    invoke-static {p1}, Lcom/flurry/sdk/d$a;->a(Lcom/flurry/sdk/d$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 53
    sget-object p1, Lcom/flurry/sdk/d$a;->c:Lcom/flurry/sdk/d$a;

    iput-object p1, p0, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/d$a;

    return-void

    .line 55
    :cond_2
    sget-object p1, Lcom/flurry/sdk/d;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ConfigItem type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 113
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 115
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    .line 116
    iget-object v1, p0, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/d$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/d$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "value"

    .line 117
    iget-object v1, p0, Lcom/flurry/sdk/d;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 119
    sget-object v0, Lcom/flurry/sdk/d;->e:Ljava/lang/String;

    const-string v1, "Error to create JSON object."

    invoke-static {v0, v1, p1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
