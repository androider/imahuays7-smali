.class public Lorg/android/agoo/b/c;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .line 35
    sget-object v0, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Lorg/android/agoo/a/c;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "api"

    const-string v2, "agooReport"

    .line 164
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/android/agoo/a/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ext"

    .line 166
    iget-object v2, p1, Lorg/android/agoo/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "status"

    .line 167
    iget-object v2, p1, Lorg/android/agoo/a/c;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, p1, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ec"

    .line 169
    iget-object v2, p1, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    iget-object v1, p1, Lorg/android/agoo/a/c;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "type"

    .line 172
    iget-object v2, p1, Lorg/android/agoo/a/c;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_1
    iget-object v1, p1, Lorg/android/agoo/a/c;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "fromPkg"

    .line 175
    iget-object v2, p1, Lorg/android/agoo/a/c;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_2
    iget-object v1, p1, Lorg/android/agoo/a/c;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "fromAppkey"

    .line 178
    iget-object v2, p1, Lorg/android/agoo/a/c;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_3
    iget-object v1, p1, Lorg/android/agoo/a/c;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "notifyEnable"

    .line 181
    iget-object v2, p1, Lorg/android/agoo/a/c;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_4
    iget-object v1, p1, Lorg/android/agoo/a/c;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ext"

    .line 184
    iget-object v2, p1, Lorg/android/agoo/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "isStartProc"

    .line 186
    iget-boolean p1, p1, Lorg/android/agoo/a/c;->k:Z

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appkey"

    .line 189
    sget-object v1, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "utdid"

    .line 190
    sget-object v1, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 192
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private c(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "NotifManager"

    const-string p2, "reportMethod msg null"

    .line 199
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 202
    :cond_0
    invoke-direct {p0, p1}, Lorg/android/agoo/b/c;->b(Lorg/android/agoo/a/c;)[B

    move-result-object v4

    .line 203
    new-instance v9, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v2, 0x0

    const-string v3, "agooAck"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 205
    iget-object v1, p1, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTag(Ljava/lang/String;)V

    .line 206
    sget-object v1, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    sget-object v2, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lorg/android/agoo/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/c;

    move-result-object v1

    sget-object v2, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-interface {v1, v2, v9, p2}, Lcom/taobao/accs/c;->a(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;

    move-result-object p2

    .line 207
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NotifManager"

    const-string v2, "report"

    const/4 v3, 0x6

    .line 208
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "dataId"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/4 p2, 0x2

    const-string v0, "status"

    aput-object v0, v3, p2

    const/4 p2, 0x3

    iget-object v0, p1, Lorg/android/agoo/a/c;->l:Ljava/lang/String;

    aput-object v0, v3, p2

    const/4 p2, 0x4

    const-string v0, "errorcode"

    aput-object v0, v3, p2

    const/4 p2, 0x5

    iget-object p1, p1, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    aput-object p1, v3, p2

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p2, "accs"

    const-string v0, "error"

    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-static {p2, v0, p1, v1, v2}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 48
    sput-object p1, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    .line 49
    invoke-static {}, Lorg/android/agoo/a/f;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lorg/android/agoo/b/c;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 270
    invoke-virtual {p0, p1, p2, v0}, Lorg/android/agoo/b/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 223
    new-instance v0, Lorg/android/agoo/b/i;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/android/agoo/b/i;-><init>(Lorg/android/agoo/b/c;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0xa

    invoke-static {v0, p2, p3, p1}, Lcom/taobao/accs/common/a;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 8

    .line 275
    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "pack"

    .line 276
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appkey"

    .line 278
    sget-object v0, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "utdid"

    .line 279
    sget-object v0, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 281
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 284
    new-instance p1, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v1, 0x0

    const-string v2, "agooKick"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 287
    sget-object p2, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    sget-object v0, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/c;

    move-result-object p2

    sget-object v0, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    new-instance v1, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-direct {v1}, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;-><init>()V

    invoke-interface {p2, v0, p1, v1}, Lcom/taobao/accs/c;->a(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "NotifManager"

    const-string v0, "[doUninstall] is error"

    const/4 v1, 0x0

    .line 290
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, p1, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Lorg/android/agoo/a/c;)V
    .locals 14

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_0
    const-string v3, "accs"

    const-string v4, "agoo_report_id"

    .line 142
    iget-object v5, p1, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    invoke-static {v3, v4, v5, v1, v2}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 143
    invoke-direct {p0, p1}, Lorg/android/agoo/b/c;->b(Lorg/android/agoo/a/c;)[B

    move-result-object v9

    .line 144
    new-instance v3, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v7, 0x0

    const-string v8, "agooAck"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 146
    sget-object v4, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    sget-object v5, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v6}, Lorg/android/agoo/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/c;

    move-result-object v4

    .line 147
    sget-object v5, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-interface {v4, v5, v3}, Lcom/taobao/accs/c;->b(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v5

    .line 148
    sget-object v6, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v3, v7}, Lcom/taobao/accs/c;->a(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;

    .line 149
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "NotifManager"

    const-string v4, "reportNotifyMessage"

    const/4 v6, 0x4

    .line 150
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "dataId"

    aput-object v7, v6, v0

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const/4 v5, 0x2

    const-string v7, "status"

    aput-object v7, v6, v5

    const/4 v5, 0x3

    iget-object v7, p1, Lorg/android/agoo/a/c;->l:Ljava/lang/String;

    aput-object v7, v6, v5

    invoke-static {v3, v4, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v3, "accs"

    const-string v4, "agoo_click"

    .line 152
    iget-object v5, p1, Lorg/android/agoo/a/c;->l:Ljava/lang/String;

    invoke-static {v3, v4, v5, v1, v2}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    const-string v3, "accs"

    const-string v4, "agoo_ack"

    .line 153
    iget-object p1, p1, Lorg/android/agoo/a/c;->l:Ljava/lang/String;

    invoke-static {v3, v4, p1, v1, v2}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v3, "NotifManager"

    const-string v4, "[reportNotifyMessage] is error"

    .line 156
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, p1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string v0, "accs"

    const-string v3, "error"

    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1, v1, v2}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p1, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/android/agoo/a/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v1

    const v2, 0x101d2

    const-string v3, "accs.ackMessage"

    sget-object p2, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "handlerACKMessageRetuen"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "msgids="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",removePacks="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lorg/android/agoo/a/c;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",errorCode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 67
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "api"

    const-string v3, "agooAck"

    .line 68
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "id"

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/android/agoo/a/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v2, p1, Lorg/android/agoo/a/c;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "del_pack"

    .line 71
    iget-object v3, p1, Lorg/android/agoo/a/c;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_2
    iget-object v2, p1, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ec"

    .line 74
    iget-object v3, p1, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_3
    iget-object v2, p1, Lorg/android/agoo/a/c;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "type"

    .line 77
    iget-object v3, p1, Lorg/android/agoo/a/c;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_4
    iget-object v2, p1, Lorg/android/agoo/a/c;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ext"

    .line 80
    iget-object v3, p1, Lorg/android/agoo/a/c;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v2, "appkey"

    .line 83
    sget-object v3, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lorg/android/agoo/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "utdid"

    .line 84
    sget-object v3, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 87
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 89
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v7

    const v8, 0x101d2

    const-string v9, "accs.ackMessage"

    sget-object v1, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "handlerACKMessageSendData"

    iget-object v12, p1, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    invoke-virtual/range {v7 .. v12}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "accs"

    const-string v2, "agoo_ack"

    const-string v3, "handlerACKMessage"

    const-wide/16 v4, 0x0

    .line 90
    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 92
    new-instance v1, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v4, 0x0

    const-string v5, "agooAck"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 95
    iget-object v2, p1, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTag(Ljava/lang/String;)V

    .line 99
    :cond_6
    sget-object v2, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    sget-object v3, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lorg/android/agoo/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {v4}, Lorg/android/agoo/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/c;

    move-result-object v2

    sget-object v3, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-interface {v2, v3, v1, p2}, Lcom/taobao/accs/c;->a(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "NotifManager"

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlerACKMessage,endRequest,dataId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p2, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 104
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "NotifManager"

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlerACKMessage Throwable,msgIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/android/agoo/a/c;->f:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",e="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_7
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v2

    const v3, 0x101d2

    const-string v4, "accs.ackMessage"

    sget-object p1, Lorg/android/agoo/b/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "handlerACKMessageExceptionFailed"

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 3

    .line 117
    iget-object v0, p1, Lorg/android/agoo/a/c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p1, Lorg/android/agoo/a/c;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    .line 122
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/b/c;->c(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    .line 123
    iget-boolean p2, p1, Lorg/android/agoo/a/c;->m:Z

    if-nez p2, :cond_0

    const-string p2, "accs"

    const-string v0, "agoo_ack"

    .line 124
    iget-object p1, p1, Lorg/android/agoo/a/c;->l:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {p2, v0, p1, v1, v2}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "NotifManager"

    const-string v0, "[report] is error"

    const/4 v1, 0x0

    .line 128
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, p1, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
