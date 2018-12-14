.class public Lcom/taobao/agoo/a/b;
.super Lcom/taobao/accs/base/a;
.source "Taobao"


# static fields
.field public static b:Lcom/taobao/agoo/a/a;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/agoo/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/taobao/accs/base/a;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/taobao/agoo/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taobao/agoo/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    :cond_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/taobao/agoo/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pushAliasToken"

    const/4 v1, 0x0

    .line 149
    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/g;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/android/agoo/a/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {p2}, Lcom/taobao/agoo/b;->a()V

    .line 154
    sget-object p1, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    iget-object p2, p2, Lcom/taobao/agoo/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/agoo/a/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, ""

    const-string v0, "agoo server error-pushtoken null"

    .line 158
    invoke-virtual {p2, p1, v0}, Lcom/taobao/agoo/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 5

    const/4 p5, 0x0

    :try_start_0
    const-string v0, "AgooDeviceCmd"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 51
    iget-object v0, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/agoo/b;

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_f

    .line 53
    new-instance p3, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {p3, p4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p4, "RequestListener"

    const-string v1, "RequestListener onResponse"

    const/4 v2, 0x6

    .line 54
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "dataId"

    aput-object v3, v2, p5

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const-string v4, "listener"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    const-string v4, "json"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    invoke-static {p4, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "resultCode"

    const/4 v1, 0x0

    .line 56
    invoke-static {p4, p3, v1}, Lcom/taobao/accs/utl/g;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "cmd"

    .line 57
    invoke-static {p4, v2, v1}, Lcom/taobao/accs/utl/g;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    .line 60
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "agoo server error"

    invoke-virtual {v0, p3, p4}, Lcom/taobao/agoo/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-string p3, "AgooDeviceCmd"

    .line 119
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string p3, "register"

    .line 68
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p3, "deviceId"

    .line 69
    invoke-static {p4, p3, v1}, Lcom/taobao/accs/utl/g;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 70
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_3

    if-eqz v0, :cond_4

    const-string p3, ""

    const-string p4, "agoo server error deviceid null"

    .line 72
    invoke-virtual {v0, p3, p4}, Lcom/taobao/agoo/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_3
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p3}, Lorg/android/agoo/a/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    sget-object p4, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/taobao/agoo/a/a;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 77
    instance-of p4, v0, Lcom/taobao/agoo/c;

    if-eqz p4, :cond_4

    const-string p4, "Agoo_AppStore"

    .line 78
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/taobao/accs/utl/b;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 79
    check-cast v0, Lcom/taobao/agoo/c;

    invoke-virtual {v0, p3}, Lcom/taobao/agoo/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_0
    const-string p3, "AgooDeviceCmd"

    .line 119
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 120
    iget-object p1, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void

    :cond_6
    :try_start_2
    const-string p3, "setAlias"

    .line 87
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 88
    invoke-direct {p0, p4, v0}, Lcom/taobao/agoo/a/b;->a(Lorg/json/JSONObject;Lcom/taobao/agoo/b;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p3, "AgooDeviceCmd"

    .line 119
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 120
    iget-object p1, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void

    :cond_8
    :try_start_3
    const-string p3, "removeAlias"

    .line 93
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 94
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v1}, Lorg/android/agoo/a/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    .line 96
    invoke-virtual {v0}, Lcom/taobao/agoo/b;->a()V

    .line 98
    :cond_9
    sget-object p3, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    invoke-virtual {p3}, Lcom/taobao/agoo/a/a;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string p3, "AgooDeviceCmd"

    .line 119
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 120
    iget-object p1, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void

    :cond_b
    :try_start_4
    const-string p3, "enablePush"

    .line 102
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c

    const-string p3, "disablePush"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    :cond_c
    if-eqz v0, :cond_d

    .line 104
    invoke-virtual {v0}, Lcom/taobao/agoo/b;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_d
    const-string p3, "AgooDeviceCmd"

    .line 119
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 120
    iget-object p1, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void

    :cond_f
    if-eqz v0, :cond_10

    .line 111
    :try_start_5
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "accs channel error"

    invoke-virtual {v0, p3, p4}, Lcom/taobao/agoo/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_10
    const-string p3, "AgooDeviceCmd"

    .line 119
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 120
    :goto_1
    iget-object p1, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p3

    goto :goto_3

    :catch_0
    move-exception p3

    :try_start_6
    const-string p4, "RequestListener"

    const-string v0, "onResponse"

    .line 117
    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p4, v0, p3, p5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string p3, "AgooDeviceCmd"

    .line 119
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_1

    :cond_11
    :goto_2
    return-void

    :goto_3
    const-string p4, "AgooDeviceCmd"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 120
    iget-object p1, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    throw p3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    return-void
.end method
