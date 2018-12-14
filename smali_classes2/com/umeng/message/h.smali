.class public Lcom/umeng/message/h;
.super Ljava/lang/Object;
.source "UTrack.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.umeng.message.h"

.field private static d:Lcom/umeng/message/h; = null

.field private static e:Lcom/umeng/message/a/b/b; = null

.field private static i:Z = false

.field private static j:Z = false

.field private static k:Z = false


# instance fields
.field private b:Lorg/json/JSONObject;

.field private c:Lorg/json/JSONObject;

.field private f:Landroid/content/Context;

.field private g:Z

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "appkey"

    .line 65
    iput-object v0, p0, Lcom/umeng/message/h;->h:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/umeng/message/h;->e()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/h;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/message/h;
    .locals 2

    const-class v0, Lcom/umeng/message/h;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/umeng/message/h;->d:Lcom/umeng/message/h;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/umeng/message/h;

    invoke-direct {v1, p0}, Lcom/umeng/message/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/message/h;->d:Lcom/umeng/message/h;

    .line 90
    new-instance v1, Lcom/umeng/message/a/a/a/b;

    invoke-direct {v1, p0}, Lcom/umeng/message/a/a/a/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/message/h;->e:Lcom/umeng/message/a/b/b;

    .line 105
    :cond_0
    sget-object p0, Lcom/umeng/message/h;->d:Lcom/umeng/message/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 87
    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/umeng/message/h;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/umeng/message/h;->c(Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/h;Lorg/json/JSONArray;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/umeng/message/h;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method private a(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 15

    move/from16 v8, p2

    .line 203
    invoke-direct {p0}, Lcom/umeng/message/h;->f()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_1

    .line 206
    sget-object v1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v1, Lcom/umeng/message/h;->a:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "trackMsgLog: msgId\u4e3a\u7a7a"

    aput-object v3, v2, v10

    invoke-static {v1, v10, v2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void

    .line 210
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v13, 0x2

    move-object v7, p0

    .line 212
    :try_start_0
    iget-object v1, v7, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/b/h;->a(Landroid/content/Context;)Lcom/umeng/message/b/h;

    move-result-object v1

    move-object/from16 v2, p1

    move v3, v8

    move-wide v4, v11

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/umeng/message/b/h;->a(Ljava/lang/String;IJLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 214
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 215
    sget-object v2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v2, Lcom/umeng/message/h;->a:Ljava/lang/String;

    new-array v3, v13, [Ljava/lang/String;

    const-string v4, "trackMsgLog: "

    aput-object v4, v3, v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v2, v13, v3}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 218
    :goto_0
    new-instance v5, Lcom/umeng/message/h$1;

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, p1

    move v4, v8

    move-object v14, v5

    move-wide v5, v11

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/umeng/message/h$1;-><init>(Lcom/umeng/message/h;Ljava/lang/String;IJLjava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_2

    if-eq v8, v9, :cond_2

    const/16 v3, 0x15

    if-eq v8, v3, :cond_2

    .line 228
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    rem-long v1, v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 229
    :cond_2
    sget-object v3, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v3, Lcom/umeng/message/h;->a:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "trackMsgLog(msgId=%s, actionType=%d, random=%d, delay=%d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v10

    .line 231
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v13

    const/4 v7, 0x3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 229
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v13, v4}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 232
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v4, v14

    invoke-static {v4, v1, v2, v3}, Lcom/umeng/message/a/d;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 418
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 420
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 421
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "msg_id"

    .line 422
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "action_type"

    .line 423
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "MsgId=? And ActionType=?"

    const/4 v6, 0x2

    .line 426
    new-array v6, v6, [Ljava/lang/String;

    aput-object v4, v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 427
    iget-object v7, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v7}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v7, Lcom/umeng/message/provider/a;->f:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1

    const-string v3, "MsgId=?"

    .line 431
    new-array v5, v8, [Ljava/lang/String;

    aput-object v4, v5, v1

    .line 432
    iget-object v4, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v4, Lcom/umeng/message/provider/a;->g:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :cond_2
    iget-object p1, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/umeng/message/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/message/h;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/umeng/message/h;->h()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0

    .line 239
    invoke-direct/range {p0 .. p5}, Lcom/umeng/message/h;->a(Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 261
    new-instance v0, Lcom/umeng/message/h$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/umeng/message/h$3;-><init>(Lcom/umeng/message/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {v0}, Lcom/umeng/message/a/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    .line 53
    sput-boolean p0, Lcom/umeng/message/h;->i:Z

    return p0
.end method

.method static synthetic c()Lcom/umeng/message/a/b/b;
    .locals 1

    .line 53
    sget-object v0, Lcom/umeng/message/h;->e:Lcom/umeng/message/a/b/b;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/message/h;)Lorg/json/JSONArray;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/umeng/message/h;->d()Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private c(J)V
    .locals 4

    .line 315
    invoke-direct {p0}, Lcom/umeng/message/h;->f()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 318
    :cond_0
    sget-boolean p1, Lcom/umeng/message/h;->i:Z

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 319
    sget-object p1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p1, Lcom/umeng/message/h;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "appCachedPushlog\u5df2\u7ecf\u5728\u961f\u5217\u91cc, \u5ffd\u7565\u8fd9\u6b21\u8bf7\u6c42"

    aput-object v2, v1, p2

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void

    .line 322
    :cond_1
    sget-object p1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p1, Lcom/umeng/message/h;->a:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "appCachedPushlog\u5f00\u59cb, \u8bbe\u7f6eappLaunchSending\u6807\u5fd7\u4f4d"

    aput-object v3, v2, p2

    invoke-static {p1, v0, v2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 323
    sput-boolean v1, Lcom/umeng/message/h;->i:Z

    .line 325
    iget-object p1, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/b/e;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 327
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/umeng/message/h$4;

    invoke-direct {p2, p0}, Lcom/umeng/message/h$4;-><init>(Lcom/umeng/message/h;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 337
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 340
    :cond_2
    new-instance p1, Lcom/umeng/message/h$5;

    invoke-direct {p1, p0}, Lcom/umeng/message/h$5;-><init>(Lcom/umeng/message/h;)V

    .line 390
    invoke-static {p1}, Lcom/umeng/message/a/d;->a(Ljava/lang/Runnable;)V

    .line 392
    new-instance p1, Lcom/umeng/message/h$6;

    invoke-direct {p1, p0}, Lcom/umeng/message/h$6;-><init>(Lcom/umeng/message/h;)V

    .line 409
    invoke-static {p1}, Lcom/umeng/message/a/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-nez p5, :cond_0

    :try_start_0
    const-string p5, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 277
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/umeng/message/h;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "msg_id"

    .line 278
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action_type"

    .line 279
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ts"

    .line 280
    invoke-virtual {v0, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p3, "pa"

    .line 281
    invoke-virtual {v0, p3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    sget-object p3, Lcom/umeng/message/h;->e:Lcom/umeng/message/a/b/b;

    invoke-interface {p3, v0, p1, p2}, Lcom/umeng/message/a/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 286
    :try_start_2
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    :goto_1
    monitor-exit p0

    return-void

    .line 271
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Z)Z
    .locals 0

    .line 53
    sput-boolean p0, Lcom/umeng/message/h;->j:Z

    return p0
.end method

.method static synthetic d(Lcom/umeng/message/h;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/umeng/message/h;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()Lorg/json/JSONArray;
    .locals 5

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v1, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/d;->z()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, ""

    .line 512
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 514
    :try_start_0
    invoke-static {v1}, Lcom/umeng/message/b/e;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 516
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    return-object v2

    :cond_1
    const/4 v3, 0x0

    .line 522
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    const-string v4, "{"

    .line 523
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"p\":"

    .line 524
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    .line 525
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/message/entity/Ucode;

    iget-object v4, v4, Lcom/umeng/message/entity/Ucode;->p:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    .line 527
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 528
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"t\":"

    .line 529
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/message/entity/Ucode;

    iget-boolean v4, v4, Lcom/umeng/message/entity/Ucode;->b:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "}"

    .line 531
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2

    const-string v4, ","

    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "]"

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 541
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_2
    return-object v1
.end method

.method private d(J)V
    .locals 8

    .line 474
    sget-boolean v0, Lcom/umeng/message/h;->j:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 475
    sget-object p1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p1, Lcom/umeng/message/h;->a:Ljava/lang/String;

    new-array p2, v3, [Ljava/lang/String;

    const-string v0, "trackAppLaunch\u5df2\u7ecf\u5728\u961f\u5217\u91cc, \u5ffd\u7565\u8fd9\u6b21\u8bf7\u6c42"

    aput-object v0, p2, v2

    invoke-static {p1, v1, p2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void

    .line 478
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/h;->a:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "trackAppLaunch\u5f00\u59cb, \u8bbe\u7f6eappLaunchSending\u6807\u5fd7\u4f4d"

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 479
    sput-boolean v3, Lcom/umeng/message/h;->j:Z

    .line 481
    new-instance v0, Lcom/umeng/message/h$7;

    invoke-direct {v0, p0}, Lcom/umeng/message/h$7;-><init>(Lcom/umeng/message/h;)V

    .line 503
    sget-object v4, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v4, Lcom/umeng/message/h;->a:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "trackAppLaunch(delay=%d)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v1, v5}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 504
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p1, p2, v1}, Lcom/umeng/message/a/d;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method static synthetic d(Z)Z
    .locals 0

    .line 53
    sput-boolean p0, Lcom/umeng/message/h;->k:Z

    return p0
.end method

.method private e()V
    .locals 7

    .line 661
    iget-object v0, p0, Lcom/umeng/message/h;->b:Lorg/json/JSONObject;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Lcom/umeng/message/a/b;

    invoke-direct {v0}, Lcom/umeng/message/a/b;-><init>()V

    .line 663
    iget-object v4, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/umeng/message/a/b;->b(Landroid/content/Context;[Ljava/lang/String;)V

    .line 664
    iget-object v4, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    new-array v5, v2, [Ljava/lang/String;

    iget-object v6, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v6

    .line 665
    invoke-virtual {v6}, Lcom/umeng/message/f;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v6

    .line 666
    invoke-virtual {v6}, Lcom/umeng/message/f;->f()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 664
    invoke-virtual {v0, v4, v5}, Lcom/umeng/message/a/b;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 667
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/umeng/message/h;->b:Lorg/json/JSONObject;

    .line 669
    :try_start_0
    iget-object v4, p0, Lcom/umeng/message/h;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lcom/umeng/message/a/b;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 671
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 676
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/umeng/message/h;->c:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 677
    new-instance v0, Lcom/umeng/message/a/b;

    invoke-direct {v0}, Lcom/umeng/message/a/b;-><init>()V

    .line 678
    iget-object v4, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/umeng/message/a/b;->c(Landroid/content/Context;[Ljava/lang/String;)V

    .line 679
    iget-object v4, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v5, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v5

    .line 680
    invoke-virtual {v5}, Lcom/umeng/message/f;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v3, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v3

    .line 681
    invoke-virtual {v3}, Lcom/umeng/message/f;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 679
    invoke-virtual {v0, v4, v2}, Lcom/umeng/message/a/b;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 682
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/message/h;->c:Lorg/json/JSONObject;

    .line 684
    :try_start_1
    iget-object v1, p0, Lcom/umeng/message/h;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/umeng/message/a/b;->b(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 686
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private f()Z
    .locals 4

    .line 1038
    iget-object v0, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/a/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1039
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/h;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "UTDID\u4e3a\u7a7a"

    aput-object v3, v1, v2

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    return v2

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/d;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1043
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/h;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "Device token\u4e3a\u7a7a"

    aput-object v3, v1, v2

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    return v2

    :cond_1
    return v1
.end method

.method private g()Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1057
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 1062
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    .line 1063
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1064
    sget-object v2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v2, Lcom/umeng/message/h;->a:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 1065
    new-instance v2, Ljava/io/File;

    const-string v3, "umeng-message.config"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    if-nez v1, :cond_1

    return-object v0

    .line 1071
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1074
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "sign="

    .line 1075
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "sign="

    .line 1076
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 1087
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1090
    :try_start_4
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    :cond_3
    :goto_0
    return-object v2

    :cond_4
    if-eqz v1, :cond_6

    .line 1087
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_6

    :catch_1
    move-exception v1

    .line 1090
    :goto_1
    :try_start_6
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_6

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v1, v0

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v1, v0

    .line 1083
    :goto_2
    :try_start_7
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_6

    .line 1087
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v2

    move-object v1, v0

    .line 1081
    :goto_3
    :try_start_9
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_6

    .line 1087
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    :goto_4
    if-eqz v1, :cond_5

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_5

    :catch_8
    move-exception v1

    .line 1090
    :try_start_c
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 1091
    :cond_5
    :goto_5
    throw v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    :catch_9
    move-exception v1

    .line 1094
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    return-object v0
.end method

.method private h()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1101
    iget-object v0, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/d;->v()Ljava/lang/String;

    move-result-object v0

    .line 1102
    iget-object v1, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/a/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1103
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1105
    iget-object v3, p0, Lcom/umeng/message/h;->b:Lorg/json/JSONObject;

    const-string v4, "umid"

    .line 1106
    iget-object v5, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/message/a/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "header"

    .line 1108
    iget-object v4, p0, Lcom/umeng/message/h;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "utdid"

    .line 1109
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_token"

    .line 1110
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2
.end method

.method private i()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1117
    iget-object v0, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/d;->v()Ljava/lang/String;

    move-result-object v0

    .line 1118
    iget-object v1, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/a/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1119
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1121
    iget-object v3, p0, Lcom/umeng/message/h;->b:Lorg/json/JSONObject;

    const-string v4, "umid"

    .line 1122
    iget-object v5, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/message/a/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "header"

    .line 1124
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "utdid"

    .line 1125
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_token"

    .line 1126
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2
.end method


# virtual methods
.method a()V
    .locals 8

    .line 549
    invoke-direct {p0}, Lcom/umeng/message/h;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/d;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 555
    :cond_1
    sget-boolean v0, Lcom/umeng/message/h;->k:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 556
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/h;->a:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "sendRegisterLog\u5df2\u7ecf\u5728\u961f\u5217\u91cc\uff0c\u5ffd\u7565\u8fd9\u6b21\u8bf7\u6c42"

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void

    .line 559
    :cond_2
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/h;->a:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "trackRegisterLog\u5f00\u59cb, \u8bbe\u7f6eregisterSending\u6807\u5fd7\u4f4d"

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 560
    sput-boolean v3, Lcom/umeng/message/h;->k:Z

    .line 562
    new-instance v0, Lcom/umeng/message/h$2;

    invoke-direct {v0, p0}, Lcom/umeng/message/h$2;-><init>(Lcom/umeng/message/h;)V

    .line 586
    sget-object v4, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v4, Lcom/umeng/message/h;->a:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "trackRegister(delay=%d)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v1, v5}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 587
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/message/a/d;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 449
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/h;->c(J)V

    return-void
.end method

.method public a(Lcom/umeng/message/entity/a;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 109
    iget-object v0, p1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v2, p1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    .line 112
    iget-wide v0, p1, Lcom/umeng/message/entity/a;->D:J

    const-wide/32 v4, 0xea60

    mul-long v4, v4, v0

    iget-object v6, p1, Lcom/umeng/message/entity/a;->z:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/umeng/message/h;->b(Ljava/lang/String;IJLjava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/umeng/message/entity/a;I)V
    .locals 7

    if-eqz p1, :cond_0

    .line 195
    iget-object v0, p1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 196
    iget-object v2, p1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    iget-wide v0, p1, Lcom/umeng/message/entity/a;->D:J

    const-wide/32 v3, 0xea60

    mul-long v4, v0, v3

    iget-object v6, p1, Lcom/umeng/message/entity/a;->z:Ljava/lang/String;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/umeng/message/h;->b(Ljava/lang/String;IJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 293
    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/h;->a:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMsgLogForAgoo-->msgId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",taskId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    const-string v0, "8"

    .line 294
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/taobao/agoo/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/taobao/agoo/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    iget-object p2, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/message/b/h;->a(Landroid/content/Context;)Lcom/umeng/message/b/h;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/umeng/message/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "7"

    .line 302
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 303
    iget-object p2, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/message/b/h;->a(Landroid/content/Context;)Lcom/umeng/message/b/h;

    move-result-object p2

    .line 304
    invoke-virtual {p2, p1}, Lcom/umeng/message/b/h;->b(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 292
    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/umeng/message/h;->g:Z

    return-void
.end method

.method public b(J)V
    .locals 3

    .line 459
    invoke-direct {p0}, Lcom/umeng/message/h;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lcom/umeng/message/d;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 464
    sget-object p1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p1, Lcom/umeng/message/h;->a:Ljava/lang/String;

    const/4 p2, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "launch_policy=1, \u8df3\u8fc7\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f\u542f\u52a8\u4fe1\u606f"

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Lcom/umeng/message/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/h;->d(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/umeng/message/entity/a;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 119
    iget-object v2, p1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    const/4 v3, 0x1

    .line 120
    iget-wide v0, p1, Lcom/umeng/message/entity/a;->D:J

    const-wide/32 v4, 0xea60

    mul-long v4, v4, v0

    iget-object v6, p1, Lcom/umeng/message/entity/a;->z:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/umeng/message/h;->b(Ljava/lang/String;IJLjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 123
    iget-object v0, p1, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p1, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    .line 125
    iget-object v1, p1, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    const-string v2, "8"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/message/h;->g:Z

    if-eqz v0, :cond_3

    const-string v0, "notificationpullapp"

    .line 129
    iget-object p1, p1, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 130
    iget-object p1, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/message/f;->b()Lcom/umeng/message/g;

    move-result-object p1

    check-cast p1, Lcom/umeng/message/i;

    .line 131
    invoke-virtual {p1, v0}, Lcom/umeng/message/i;->a(Lcom/umeng/message/entity/a;)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object p1, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/message/f;->a()Lcom/umeng/message/g;

    move-result-object p1

    check-cast p1, Lcom/umeng/message/k;

    .line 134
    invoke-virtual {p1, v0}, Lcom/umeng/message/k;->a(Lcom/umeng/message/entity/a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(Lcom/umeng/message/entity/a;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 142
    iget-object v2, p1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    const/16 v3, 0x15

    .line 143
    iget-wide v0, p1, Lcom/umeng/message/entity/a;->D:J

    const-wide/32 v4, 0xea60

    mul-long v4, v4, v0

    iget-object v6, p1, Lcom/umeng/message/entity/a;->z:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/umeng/message/h;->b(Ljava/lang/String;IJLjava/lang/String;)V

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/message/h;->g:Z

    if-eqz v0, :cond_2

    const-string v0, "notificationpullapp"

    .line 147
    iget-object p1, p1, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/message/f;->b()Lcom/umeng/message/g;

    move-result-object p1

    check-cast p1, Lcom/umeng/message/i;

    .line 149
    invoke-virtual {p1, v0}, Lcom/umeng/message/i;->a(Lcom/umeng/message/entity/a;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/message/f;->a()Lcom/umeng/message/g;

    move-result-object p1

    check-cast p1, Lcom/umeng/message/k;

    .line 152
    invoke-virtual {p1, v0}, Lcom/umeng/message/k;->a(Lcom/umeng/message/entity/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Lcom/umeng/message/entity/a;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 160
    iget-object v2, p1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    const/4 v3, 0x2

    .line 161
    iget-wide v0, p1, Lcom/umeng/message/entity/a;->D:J

    const-wide/32 v4, 0xea60

    mul-long v4, v4, v0

    iget-object v6, p1, Lcom/umeng/message/entity/a;->z:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/umeng/message/h;->b(Ljava/lang/String;IJLjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 164
    iget-object v0, p1, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p1, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    .line 166
    iget-object v1, p1, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    const-string v2, "9"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "notificationpullapp"

    .line 169
    iget-object p1, p1, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 170
    iget-object p1, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/message/f;->b()Lcom/umeng/message/g;

    move-result-object p1

    check-cast p1, Lcom/umeng/message/i;

    .line 171
    invoke-virtual {p1, v0}, Lcom/umeng/message/i;->a(Lcom/umeng/message/entity/a;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/umeng/message/h;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/message/f;->a()Lcom/umeng/message/g;

    move-result-object p1

    check-cast p1, Lcom/umeng/message/k;

    .line 174
    invoke-virtual {p1, v0}, Lcom/umeng/message/k;->a(Lcom/umeng/message/entity/a;)V

    :goto_0
    return-void
.end method

.method e(Lcom/umeng/message/entity/a;)V
    .locals 6

    .line 179
    iget-object v1, p1, Lcom/umeng/message/entity/a;->t:Ljava/lang/String;

    iget-wide v2, p1, Lcom/umeng/message/entity/a;->D:J

    const-wide/32 v4, 0xea60

    mul-long v3, v2, v4

    iget-object v5, p1, Lcom/umeng/message/entity/a;->z:Ljava/lang/String;

    const/4 v2, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/message/h;->b(Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method f(Lcom/umeng/message/entity/a;)V
    .locals 6

    .line 184
    iget-object v1, p1, Lcom/umeng/message/entity/a;->t:Ljava/lang/String;

    iget-wide v2, p1, Lcom/umeng/message/entity/a;->D:J

    const-wide/32 v4, 0xea60

    mul-long v3, v2, v4

    iget-object v5, p1, Lcom/umeng/message/entity/a;->z:Ljava/lang/String;

    const/4 v2, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/message/h;->b(Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method
