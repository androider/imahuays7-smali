.class Lanetwork/channel/a/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/a/a;


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.taobao.orange.OrangeConfig"

    .line 30
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lanetwork/channel/a/c;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lanetwork/channel/a/c;->a:Z

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 72
    sget-boolean v0, Lanetwork/channel/a/c;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "awcn.OrangeConfigImpl"

    const-string v0, "no orange sdk"

    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2, v1}, Lanet/channel/h/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 78
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    aget-object v3, p1, v1

    const/4 v4, 0x1

    aget-object v4, p1, v4

    const/4 v5, 0x2

    aget-object p1, p1, v5

    invoke-virtual {v0, v3, v4, p1}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "awcn.OrangeConfigImpl"

    const-string v3, "get config failed!"

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, p1, v1}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public a()V
    .locals 7

    .line 40
    sget-boolean v0, Lanetwork/channel/a/c;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "awcn.OrangeConfigImpl"

    const-string v3, "no orange sdk"

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2}, Lanet/channel/h/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 46
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "networkSdk"

    aput-object v5, v4, v2

    new-instance v5, Lanetwork/channel/a/d;

    invoke-direct {v5, p0}, Lanetwork/channel/a/d;-><init>(Lanetwork/channel/a/c;)V

    invoke-virtual {v0, v4, v5}, Lcom/taobao/orange/OrangeConfig;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    const/4 v0, 0x3

    .line 53
    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "networkSdk"

    aput-object v5, v4, v2

    const-string v5, "network_empty_scheme_https_switch"

    aput-object v5, v4, v3

    const-string v5, "true"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lanetwork/channel/a/c;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 54
    invoke-static {}, Lanetwork/channel/statist/a;->a()Lanetwork/channel/statist/a;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "networkSdk"

    aput-object v5, v0, v2

    const-string v5, "network_monitor_whitelist_url"

    aput-object v5, v0, v3

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lanetwork/channel/a/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lanetwork/channel/statist/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "awcn.OrangeConfigImpl"

    const-string v4, "register fail"

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
