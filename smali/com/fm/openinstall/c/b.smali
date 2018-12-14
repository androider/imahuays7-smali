.class public Lcom/fm/openinstall/c/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/fm/openinstall/c/c;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fm/openinstall/c/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fm/openinstall/c/b;->a:Lcom/fm/openinstall/c/c;

    iput p2, p0, Lcom/fm/openinstall/c/b;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/fm/openinstall/c/b;
    .locals 4

    new-instance v0, Lcom/fm/openinstall/c/b;

    invoke-direct {v0}, Lcom/fm/openinstall/c/b;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "config"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "config"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "config"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/fm/openinstall/c/b;->d(Ljava/lang/String;)V

    :cond_0
    const-string p0, "code"

    const/4 v2, -0x2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/fm/openinstall/c/c;->a:Lcom/fm/openinstall/c/c;

    invoke-virtual {v0, p0}, Lcom/fm/openinstall/c/b;->a(Lcom/fm/openinstall/c/c;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/fm/openinstall/c/b;->a(I)V

    const-string p0, "body"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "body"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "body"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/fm/openinstall/c/b;->c(Ljava/lang/String;)V

    :cond_1
    const-string p0, "msg"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "msg"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "msg"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/fm/openinstall/c/c;->c:Lcom/fm/openinstall/c/c;

    invoke-virtual {v0, v3}, Lcom/fm/openinstall/c/b;->a(Lcom/fm/openinstall/c/c;)V

    invoke-virtual {v0, v2}, Lcom/fm/openinstall/c/b;->a(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "msg"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/fm/openinstall/c/b;->b(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public a()Lcom/fm/openinstall/c/c;
    .locals 1

    iget-object v0, p0, Lcom/fm/openinstall/c/b;->a:Lcom/fm/openinstall/c/c;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/fm/openinstall/c/b;->b:I

    return-void
.end method

.method public a(Lcom/fm/openinstall/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/c/b;->a:Lcom/fm/openinstall/c/c;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/fm/openinstall/c/b;->b:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/c/b;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fm/openinstall/c/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/c/b;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fm/openinstall/c/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/c/b;->e:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fm/openinstall/c/b;->e:Ljava/lang/String;

    return-object v0
.end method
