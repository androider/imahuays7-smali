.class Lcom/xiaomi/mipush/sdk/l;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/k;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/l;->a:Lcom/xiaomi/mipush/sdk/k;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/l;->a:Lcom/xiaomi/mipush/sdk/k;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/l;->a:Lcom/xiaomi/mipush/sdk/k;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/k;->a(Lcom/xiaomi/mipush/sdk/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/d;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/b/a/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/mipush/sdk/k;->a(Lcom/xiaomi/mipush/sdk/k;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/l;->a:Lcom/xiaomi/mipush/sdk/k;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/k;->b(Lcom/xiaomi/mipush/sdk/k;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/l;->a:Lcom/xiaomi/mipush/sdk/k;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/k;->a(Lcom/xiaomi/mipush/sdk/k;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/l;->a:Lcom/xiaomi/mipush/sdk/k;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/k;->a(Lcom/xiaomi/mipush/sdk/k;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/a/a/d/a;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/l;->a:Lcom/xiaomi/mipush/sdk/k;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/k;->c()V

    :cond_0
    return-void
.end method
