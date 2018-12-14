.class Lcom/fm/openinstall/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fm/openinstall/a/m;


# instance fields
.field final synthetic a:Lcom/fm/openinstall/g/b;

.field final synthetic b:Lcom/fm/openinstall/a;


# direct methods
.method constructor <init>(Lcom/fm/openinstall/a;Lcom/fm/openinstall/g/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/c;->b:Lcom/fm/openinstall/a;

    iput-object p2, p0, Lcom/fm/openinstall/c;->a:Lcom/fm/openinstall/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fm/openinstall/c/b;)V
    .locals 6

    invoke-virtual {p1}, Lcom/fm/openinstall/c/b;->a()Lcom/fm/openinstall/c/c;

    move-result-object v0

    sget-object v1, Lcom/fm/openinstall/c/c;->a:Lcom/fm/openinstall/c/c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/fm/openinstall/f/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "decodeInstall success : %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fm/openinstall/c/b;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Lcom/fm/openinstall/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/fm/openinstall/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/fm/openinstall/f/b;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "decodeInstall warning : %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fm/openinstall/c/b;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Lcom/fm/openinstall/f/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/fm/openinstall/c/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fm/openinstall/b/d;->d(Ljava/lang/String;)Lcom/fm/openinstall/b/d;

    move-result-object p1

    new-instance v0, Lcom/fm/openinstall/model/AppData;

    invoke-direct {v0}, Lcom/fm/openinstall/model/AppData;-><init>()V

    invoke-virtual {p1}, Lcom/fm/openinstall/b/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fm/openinstall/model/AppData;->setChannel(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fm/openinstall/b/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fm/openinstall/model/AppData;->setData(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fm/openinstall/c;->a:Lcom/fm/openinstall/g/b;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/fm/openinstall/c;->a:Lcom/fm/openinstall/g/b;

    invoke-interface {p1, v0, v2}, Lcom/fm/openinstall/g/b;->onInstallFinish(Lcom/fm/openinstall/model/AppData;Lcom/fm/openinstall/model/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-boolean v0, Lcom/fm/openinstall/f/b;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "decodeInstall error : %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/fm/openinstall/f/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/fm/openinstall/c;->a:Lcom/fm/openinstall/g/b;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/fm/openinstall/c;->a:Lcom/fm/openinstall/g/b;

    invoke-interface {p1, v2, v2}, Lcom/fm/openinstall/g/b;->onInstallFinish(Lcom/fm/openinstall/model/AppData;Lcom/fm/openinstall/model/a;)V

    return-void

    :cond_3
    sget-boolean v0, Lcom/fm/openinstall/f/b;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "decodeInstall fail : %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fm/openinstall/c/b;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/fm/openinstall/f/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/fm/openinstall/c;->a:Lcom/fm/openinstall/g/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fm/openinstall/c;->a:Lcom/fm/openinstall/g/b;

    new-instance v1, Lcom/fm/openinstall/model/a;

    invoke-virtual {p1}, Lcom/fm/openinstall/c/b;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/fm/openinstall/c/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lcom/fm/openinstall/model/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, v1}, Lcom/fm/openinstall/g/b;->onInstallFinish(Lcom/fm/openinstall/model/AppData;Lcom/fm/openinstall/model/a;)V

    :cond_5
    return-void
.end method
