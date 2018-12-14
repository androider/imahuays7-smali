.class Lcom/fm/openinstall/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fm/openinstall/a/m;


# instance fields
.field final synthetic a:Lcom/fm/openinstall/a;


# direct methods
.method constructor <init>(Lcom/fm/openinstall/a;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/d;->a:Lcom/fm/openinstall/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fm/openinstall/c/b;)V
    .locals 4

    invoke-virtual {p1}, Lcom/fm/openinstall/c/b;->a()Lcom/fm/openinstall/c/c;

    move-result-object v0

    sget-object v1, Lcom/fm/openinstall/c/c;->a:Lcom/fm/openinstall/c/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/fm/openinstall/f/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "reportWakeup success"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/fm/openinstall/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/fm/openinstall/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/fm/openinstall/f/b;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "reportWakeup warning : %s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fm/openinstall/c/b;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/fm/openinstall/f/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-boolean v0, Lcom/fm/openinstall/f/b;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "reportWakeup fail : %s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fm/openinstall/c/b;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/fm/openinstall/f/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
