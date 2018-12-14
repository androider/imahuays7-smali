.class public Lcom/fm/openinstall/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fm/openinstall/a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/fm/openinstall/a/f;->a()Lcom/fm/openinstall/a/f;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/fm/openinstall/a/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/fm/openinstall/a;Ljava/lang/String;)Lcom/fm/openinstall/model/AppData;
    .locals 0

    invoke-direct {p0, p1}, Lcom/fm/openinstall/a;->a(Ljava/lang/String;)Lcom/fm/openinstall/model/AppData;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/fm/openinstall/model/AppData;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/fm/openinstall/model/AppData;

    invoke-direct {v0}, Lcom/fm/openinstall/model/AppData;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "c"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "c"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fm/openinstall/model/AppData;->setChannel(Ljava/lang/String;)V

    :cond_1
    const-string p1, "d"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "d"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "d"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fm/openinstall/model/AppData;->setData(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private a(Landroid/net/Uri;Lcom/fm/openinstall/b/a;Lcom/fm/openinstall/g/c;)V
    .locals 2

    iget-object v0, p0, Lcom/fm/openinstall/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fm/openinstall/a/b;->a(Landroid/content/Context;)Lcom/fm/openinstall/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fm/openinstall/a/b;->c()V

    invoke-static {}, Lcom/fm/openinstall/a/f;->a()Lcom/fm/openinstall/a/f;

    move-result-object v0

    new-instance v1, Lcom/fm/openinstall/b;

    invoke-direct {v1, p0, p3, p1}, Lcom/fm/openinstall/b;-><init>(Lcom/fm/openinstall/a;Lcom/fm/openinstall/g/c;Landroid/net/Uri;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/fm/openinstall/a/f;->a(Landroid/net/Uri;Lcom/fm/openinstall/b/a;Lcom/fm/openinstall/a/m;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/fm/openinstall/a/f;->a()Lcom/fm/openinstall/a/f;

    move-result-object v0

    new-instance v1, Lcom/fm/openinstall/e;

    invoke-direct {v1, p0}, Lcom/fm/openinstall/e;-><init>(Lcom/fm/openinstall/a;)V

    invoke-virtual {v0, v1}, Lcom/fm/openinstall/a/f;->a(Lcom/fm/openinstall/a/m;)V

    return-void
.end method

.method public a(Landroid/content/Intent;Lcom/fm/openinstall/g/c;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    sget-boolean v0, Lcom/fm/openinstall/f/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "decodeWakeUp"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/fm/openinstall/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/fm/openinstall/a;->a(Landroid/net/Uri;Lcom/fm/openinstall/b/a;Lcom/fm/openinstall/g/c;)V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/fm/openinstall/a/f;->a()Lcom/fm/openinstall/a/f;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v1, Lcom/fm/openinstall/d;

    invoke-direct {v1, p0}, Lcom/fm/openinstall/d;-><init>(Lcom/fm/openinstall/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/fm/openinstall/a/f;->a(Ljava/lang/String;Lcom/fm/openinstall/a/m;)V

    return-void
.end method

.method public a(Lcom/fm/openinstall/g/b;J)V
    .locals 2

    invoke-static {}, Lcom/fm/openinstall/a/f;->a()Lcom/fm/openinstall/a/f;

    move-result-object v0

    new-instance v1, Lcom/fm/openinstall/c;

    invoke-direct {v1, p0, p1}, Lcom/fm/openinstall/c;-><init>(Lcom/fm/openinstall/a;Lcom/fm/openinstall/g/b;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/fm/openinstall/a/f;->a(Lcom/fm/openinstall/a/m;J)V

    return-void
.end method

.method public a(Lcom/fm/openinstall/g/c;)V
    .locals 2

    sget-boolean v0, Lcom/fm/openinstall/f/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "decodeWakeUpYYB"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/fm/openinstall/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/fm/openinstall/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fm/openinstall/a/b;->a(Landroid/content/Context;)Lcom/fm/openinstall/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fm/openinstall/a/b;->b()Lcom/fm/openinstall/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/fm/openinstall/a;->a(Landroid/net/Uri;Lcom/fm/openinstall/b/a;Lcom/fm/openinstall/g/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4

    sget-boolean v0, Lcom/fm/openinstall/f/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "save effectPoint : (%s, %d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fm/openinstall/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/fm/openinstall/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fm/openinstall/e/f;->a(Landroid/content/Context;)Lcom/fm/openinstall/e/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/fm/openinstall/e/f;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fm/openinstall/f/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public b()Z
    .locals 3

    iget-object v0, p0, Lcom/fm/openinstall/a;->a:Landroid/content/Context;

    const-string v1, "FM_first"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fm/openinstall/f/d;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "openinstall_intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    sget-object v2, Lcom/fm/openinstall/f/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/fm/openinstall/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/fm/openinstall/f/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p0, Lcom/fm/openinstall/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/fm/openinstall/a/b;->a(Landroid/content/Context;)Lcom/fm/openinstall/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fm/openinstall/a/b;->a()Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/fm/openinstall/a;->a:Landroid/content/Context;

    const-string v1, "FM_first"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/fm/openinstall/f/d;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
