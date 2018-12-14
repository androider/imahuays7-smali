.class public Lcom/xiaomi/b/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/b/a/d;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/b/a/d;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/b/a/d;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/b/a/d;
    .locals 1

    sget-object v0, Lcom/xiaomi/b/a/d;->a:Lcom/xiaomi/b/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/b/a/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/b/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/b/a/d;->a:Lcom/xiaomi/b/a/d;

    :cond_0
    sget-object p0, Lcom/xiaomi/b/a/d;->a:Lcom/xiaomi/b/a/d;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget v0, p0, Lcom/xiaomi/b/a/d;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/b/a/d;->c:I

    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/b/a/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/xiaomi/b/a/d;->c:I

    iget v0, p0, Lcom/xiaomi/b/a/d;->c:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/b/a/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public b()Landroid/net/Uri;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const-string v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
