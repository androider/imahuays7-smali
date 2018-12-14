.class public Lanetwork/channel/b/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile a:Z = false

.field private static b:Landroid/webkit/CookieManager; = null

.field private static c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lanetwork/channel/b/a;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-boolean v1, Lanetwork/channel/b/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 26
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 30
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 31
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 33
    :cond_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    sput-object p0, Lanetwork/channel/b/a;->b:Landroid/webkit/CookieManager;

    .line 34
    sget-object p0, Lanetwork/channel/b/a;->b:Landroid/webkit/CookieManager;

    invoke-virtual {p0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 35
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p0, v3, :cond_2

    .line 36
    sget-object p0, Lanetwork/channel/b/a;->b:Landroid/webkit/CookieManager;

    invoke-virtual {p0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v2, 0x0

    .line 39
    :try_start_2
    sput-boolean v2, Lanetwork/channel/b/a;->c:Z

    const-string v3, "anet.CookieManager"

    const-string v4, "Cookie Manager setup failed!!!"

    const/4 v5, 0x0

    .line 40
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, p0, v2}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 42
    :cond_2
    :goto_0
    sput-boolean v1, Lanetwork/channel/b/a;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    throw p0
.end method
