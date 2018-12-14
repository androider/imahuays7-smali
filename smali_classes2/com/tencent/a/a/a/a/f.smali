.class public abstract Lcom/tencent/a/a/a/a/f;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/a/a/a/a/f;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/a/a/a/a/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/a/a/a/a/c;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/a/a/a/a/c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/a/a/a/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/tencent/a/a/a/a/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/a/a/a/a/f;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract a()Z
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public final o()Lcom/tencent/a/a/a/a/c;
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/a/a/a/a/f;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/a/a/a/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/a/a/a/a/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/tencent/a/a/a/a/c;->e(Ljava/lang/String;)Lcom/tencent/a/a/a/a/c;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method
