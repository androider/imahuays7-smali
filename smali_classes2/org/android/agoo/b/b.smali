.class public abstract Lorg/android/agoo/b/b;
.super Landroid/app/IntentService;
.source "Taobao"


# instance fields
.field private a:Lorg/android/agoo/b/c;

.field private b:Lorg/android/agoo/d/c;

.field private c:Lorg/android/agoo/b/a;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "AgooIntentService"

    .line 45
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    return-void
.end method

.method private final a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    const/4 p1, 0x0

    .line 372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unknow"

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 375
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "unknow"

    .line 378
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "appkey"

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "|"

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p2, "|"

    .line 382
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p2, "|"

    .line 384
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "|"

    .line 386
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 394
    :try_start_0
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "BaseIntentService"

    const-string p2, "runIntentInService"

    const/4 v0, 0x0

    .line 397
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p0, v0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    .line 398
    :goto_1
    throw p0
.end method

.method private final c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 182
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    .line 186
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 188
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BaseIntentService"

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRemovePackage---->[replacing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "],uninstallPack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-nez p2, :cond_4

    .line 193
    iget-object v0, p0, Lorg/android/agoo/b/b;->a:Lorg/android/agoo/b/c;

    invoke-virtual {v0, p1, p2}, Lorg/android/agoo/b/c;->a(Ljava/lang/String;Z)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method private final d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    :try_start_0
    const-string v5, "id"

    .line 206
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "body"

    .line 207
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    .line 208
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "message_source"

    .line 209
    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "report"

    .line 210
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "encrypted"

    .line 211
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "extData"

    .line 212
    invoke-virtual {v2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "oriData"

    .line 213
    invoke-virtual {v2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_c

    :try_start_1
    const-string v15, "trace"

    const-wide/16 v3, -0x1

    .line 219
    invoke-virtual {v2, v15, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v15, p1

    :try_start_2
    invoke-direct {v1, v15, v3, v4}, Lorg/android/agoo/b/b;->a(Landroid/content/Context;J)Ljava/lang/String;

    const-string v3, "msg_agoo_bundle"

    .line 221
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "accs_extra"

    .line 223
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_3
    const-string v4, "source"

    .line 225
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 226
    :try_start_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    const-string v16, "oldsdk"
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :cond_1
    move-object/from16 v16, v4

    :goto_1
    :try_start_5
    const-string v4, "fromAppkey"

    .line 227
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-object v13, v3

    move-object/from16 v3, v16

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v16, v4

    :goto_2
    move-object v4, v3

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v4, v3

    const/16 v16, 0x0

    :goto_3
    move-object v3, v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v15, p1

    :goto_4
    move-object v3, v0

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_5
    :try_start_6
    const-string v13, "BaseIntentService"

    .line 229
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    const-string v4, "_trace,t="

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v13, v3, v14}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v3, v16

    move-object/from16 v13, v18

    const/4 v4, 0x0

    .line 231
    :goto_6
    sget-object v14, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v14}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v14

    move-object/from16 v19, v7

    const/16 v16, 0x1

    if-eqz v14, :cond_2

    const-string v14, "BaseIntentService"

    const-string v7, "handleRemoteMessage"

    move-object/from16 v22, v12

    const/16 v12, 0xc

    .line 232
    new-array v12, v12, [Ljava/lang/Object;

    const-string v18, "message"

    const/16 v17, 0x0

    aput-object v18, v12, v17

    aput-object v6, v12, v16

    const-string v18, "source"

    const/16 v21, 0x2

    aput-object v18, v12, v21

    const/16 v18, 0x3

    aput-object v8, v12, v18

    const-string v18, "msgId"

    const/16 v20, 0x4

    aput-object v18, v12, v20

    const/16 v18, 0x5

    aput-object v5, v12, v18

    const/16 v18, 0x6

    const-string v23, "utdid"

    aput-object v23, v12, v18

    const/16 v18, 0x7

    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v12, v18

    const/16 v18, 0x8

    const-string v23, "fromPkg"

    aput-object v23, v12, v18

    const/16 v18, 0x9

    aput-object v3, v12, v18

    const/16 v18, 0xa

    const-string v23, "fromAppkey"

    aput-object v23, v12, v18

    const/16 v18, 0xb

    aput-object v4, v12, v18

    invoke-static {v14, v7, v12}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_2
    move-object/from16 v22, v12

    .line 235
    :goto_7
    new-instance v7, Lorg/android/agoo/a/c;

    invoke-direct {v7}, Lorg/android/agoo/a/c;-><init>()V

    .line 236
    iput-object v5, v7, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    .line 237
    iput-object v11, v7, Lorg/android/agoo/a/c;->b:Ljava/lang/String;

    .line 238
    iput-object v8, v7, Lorg/android/agoo/a/c;->e:Ljava/lang/String;

    const-string v11, "4"

    .line 239
    iput-object v11, v7, Lorg/android/agoo/a/c;->l:Ljava/lang/String;

    .line 240
    iput-object v9, v7, Lorg/android/agoo/a/c;->j:Ljava/lang/String;

    .line 241
    iput-object v3, v7, Lorg/android/agoo/a/c;->g:Ljava/lang/String;

    .line 242
    iput-object v4, v7, Lorg/android/agoo/a/c;->h:Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/taobao/accs/client/c;->c()Z

    move-result v3

    iput-boolean v3, v7, Lorg/android/agoo/a/c;->k:Z

    .line 244
    iget-object v3, v1, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lorg/android/agoo/a/c;->n:Ljava/lang/String;

    .line 246
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x4

    .line 247
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "BaseIntentService"

    const-string v4, "message is encrypted, attemp to decrypt msg"

    const/4 v9, 0x0

    .line 248
    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-static {v6}, Lorg/android/agoo/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "22"

    .line 251
    iput-object v2, v7, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    .line 252
    iget-object v2, v1, Lorg/android/agoo/b/b;->a:Lorg/android/agoo/b/c;

    invoke-virtual {v2, v7, v13}, Lorg/android/agoo/b/c;->a(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    return-void

    :cond_3
    const-string v2, "BaseIntentService"

    const-string v3, "msg encrypted flag not exist~~"

    const/4 v4, 0x0

    .line 256
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_c

    :try_start_7
    const-string v2, "24"

    .line 258
    iput-object v2, v7, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    .line 259
    iget-object v2, v1, Lorg/android/agoo/b/b;->a:Lorg/android/agoo/b/c;

    invoke-virtual {v2, v7, v13}, Lorg/android/agoo/b/c;->b(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    return-void

    .line 267
    :cond_4
    :try_start_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_c

    if-eqz v3, :cond_5

    :try_start_9
    const-string v2, "21"

    .line 269
    iput-object v2, v7, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    .line 271
    iget-object v2, v1, Lorg/android/agoo/b/b;->a:Lorg/android/agoo/b/c;

    invoke-virtual {v2, v7, v13}, Lorg/android/agoo/b/c;->b(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    :try_start_a
    const-string v2, "BaseIntentService"

    const-string v3, "handleMessage--->[null]"

    const/4 v4, 0x0

    .line 275
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    const-string v3, "body"

    .line 278
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_c

    .line 283
    :try_start_b
    iget-object v3, v1, Lorg/android/agoo/b/b;->a:Lorg/android/agoo/b/c;

    invoke-virtual {v3, v7, v13}, Lorg/android/agoo/b/c;->b(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    .line 284
    iget-object v3, v1, Lorg/android/agoo/b/b;->b:Lorg/android/agoo/d/c;

    const-string v4, "0"

    move-object/from16 v9, v22

    invoke-virtual {v3, v5, v9, v4}, Lorg/android/agoo/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v22

    const/16 v23, 0x4e1f

    const-string v24, "Page_Push"

    const-string v25, "agoo_arrive_id"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v9, 0x0

    aput-object v9, v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "messageId="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v16

    move-object/from16 v28, v4

    invoke-virtual/range {v22 .. v28}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    const-string v3, "accs"

    const-string v4, "agoo_arrive"

    const-string v9, "arrive"

    const-wide/16 v10, 0x0

    .line 287
    invoke-static {v3, v4, v9, v10, v11}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v3, v0

    :try_start_c
    const-string v4, "BaseIntentService"

    .line 289
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "report message Throwable--->t="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v4, v3, v10}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :goto_8
    iget-object v3, v1, Lorg/android/agoo/b/b;->b:Lorg/android/agoo/d/c;

    invoke-virtual {v3, v5}, Lorg/android/agoo/d/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 293
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "BaseIntentService"

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRemoteMessage hasMessageDuplicate,messageId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",utdid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    const-string v2, "accs"

    const-string v3, "agoo_arrive"

    const-string v4, "arrive_dup"

    const-wide/16 v5, 0x0

    .line 296
    invoke-static {v2, v3, v4, v5, v6}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void

    .line 299
    :cond_7
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "BaseIntentService"

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage--->["

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "],["

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v9}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    :cond_8
    :try_start_d
    const-string v3, "duplicate"

    .line 304
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 308
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 309
    iget-object v4, v1, Lorg/android/agoo/b/b;->b:Lorg/android/agoo/d/c;

    invoke-virtual {v4, v5, v3}, Lorg/android/agoo/d/c;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "accs"

    const-string v4, "agoo_arrive"

    const-string v8, "arrive_dupbody"

    const-wide/16 v9, 0x0

    .line 311
    invoke-static {v3, v4, v8, v9, v10}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    return-void

    :catch_8
    move-exception v0

    move-object v3, v0

    .line 316
    :try_start_e
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "BaseIntentService"

    .line 317
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasMessageDuplicate message,e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v4, v3, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_c

    :cond_9
    const/4 v3, -0x1

    :try_start_f
    const-string v4, "notify"

    .line 322
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    move v3, v4

    :catch_9
    :try_start_10
    const-string v4, ""
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_c

    :try_start_11
    const-string v8, "has_test"

    .line 329
    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 331
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "1"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 332
    iget-object v8, v1, Lorg/android/agoo/b/b;->b:Lorg/android/agoo/d/c;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a

    move-object/from16 v9, v19

    :try_start_12
    invoke-virtual {v8, v5, v6, v9, v3}, Lorg/android/agoo/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v8, "accs"

    const-string v10, "agoo_arrive"

    const-string v11, "arrive_test"

    const-wide/16 v12, 0x0

    .line 334
    invoke-static {v8, v10, v11, v12, v13}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void

    :cond_a
    move-object/from16 v9, v19

    .line 337
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_b

    move-object v4, v8

    goto :goto_9

    :catch_a
    move-object/from16 v9, v19

    .line 342
    :catch_b
    :goto_9
    :try_start_13
    iget-object v8, v1, Lorg/android/agoo/b/b;->b:Lorg/android/agoo/d/c;

    invoke-virtual {v8, v5, v6, v9, v3}, Lorg/android/agoo/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 345
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v22

    const/16 v23, 0x4e1f

    const-string v24, "Page_Push"

    const-string v25, "agoo_arrive_real_id"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v16

    move-object/from16 v28, v3

    invoke-virtual/range {v22 .. v28}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    const-string v3, "accs"

    const-string v5, "agoo_arrive"

    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "arrive_real_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v3, v5, v4, v6, v7}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 347
    invoke-virtual/range {p0 .. p2}, Lorg/android/agoo/b/b;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_c

    goto :goto_a

    :catch_c
    move-exception v0

    move-object v2, v0

    const-string v3, "accs"

    const-string v4, "agoo_arrive"

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arrive_exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v2, v5, v6}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :goto_a
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 61
    sget-object v0, Lcom/taobao/accs/client/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 62
    new-instance v0, Lorg/android/agoo/b/c;

    invoke-direct {v0}, Lorg/android/agoo/b/c;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/b/b;->a:Lorg/android/agoo/b/c;

    .line 63
    iget-object v0, p0, Lorg/android/agoo/b/b;->a:Lorg/android/agoo/b/c;

    invoke-virtual {p0}, Lorg/android/agoo/b/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/b/c;->a(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lorg/android/agoo/d/c;

    invoke-direct {v0}, Lorg/android/agoo/d/c;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/b/b;->b:Lorg/android/agoo/d/c;

    .line 65
    iget-object v0, p0, Lorg/android/agoo/b/b;->b:Lorg/android/agoo/d/c;

    invoke-virtual {p0}, Lorg/android/agoo/b/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/d/c;->a(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lorg/android/agoo/b/a;

    invoke-direct {v0}, Lorg/android/agoo/b/a;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/b/b;->c:Lorg/android/agoo/b/a;

    .line 67
    iget-object v0, p0, Lorg/android/agoo/b/b;->c:Lorg/android/agoo/b/a;

    invoke-virtual {p0}, Lorg/android/agoo/b/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/b/b;->a:Lorg/android/agoo/b/c;

    iget-object v3, p0, Lorg/android/agoo/b/b;->b:Lorg/android/agoo/d/c;

    invoke-virtual {v0, v1, v2, v3}, Lorg/android/agoo/b/a;->a(Landroid/content/Context;Lorg/android/agoo/b/c;Lorg/android/agoo/d/c;)V

    .line 68
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .line 73
    invoke-virtual {p0}, Lorg/android/agoo/b/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/c/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseIntentService"

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleIntent,action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",agooCommand="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mipushCommand="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :try_start_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "command"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseIntentService"

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionCommand --->["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "message_readed"

    .line 90
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "message_deleted"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 94
    :cond_2
    iget-object v0, p0, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lorg/android/agoo/b/b;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 96
    :cond_3
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "command"

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thirdPushId"

    .line 99
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mipushId_report"

    .line 100
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    iget-object v0, p0, Lorg/android/agoo/b/b;->a:Lorg/android/agoo/b/c;

    const-string v1, "MI_TOKEN"

    invoke-virtual {v0, p1, v1, v5}, Lorg/android/agoo/b/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "huaweipushId_report"

    .line 103
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "BaseIntentService"

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HW_TOKEN report begin..regid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lorg/android/agoo/b/b;->a:Lorg/android/agoo/b/c;

    const-string v1, "HW_TOKEN"

    invoke-virtual {v0, p1, v1, v5}, Lorg/android/agoo/b/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "gcmpushId_report"

    .line 107
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "BaseIntentService"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCM_TOKEN report begin..regid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lorg/android/agoo/b/b;->a:Lorg/android/agoo/b/c;

    const-string v1, "gcm"

    invoke-virtual {v0, p1, v1, v5}, Lorg/android/agoo/b/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "org.agoo.android.intent.action.RECEIVE"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 115
    iget-object v0, p0, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lorg/android/agoo/b/b;->d(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 117
    iget-object v0, p0, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lorg/android/agoo/b/b;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    const-string p1, "org.agoo.android.intent.action.REPORT"

    .line 118
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "android.intent.action.PACKAGE_REPLACED"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "android.intent.action.USER_PRESENT"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_c

    :cond_9
    :try_start_1
    const-string p1, "BaseIntentService"

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is report cache msg,Config.isReportCacheMsg(mContext)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/a/b;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    invoke-static {p1}, Lorg/android/agoo/a/b;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 131
    iget-object p1, p0, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/c;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 133
    iget-object p1, p0, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    invoke-static {p1}, Lorg/android/agoo/a/b;->d(Landroid/content/Context;)V

    .line 135
    iget-object p1, p0, Lorg/android/agoo/b/b;->c:Lorg/android/agoo/b/a;

    invoke-virtual {p1}, Lorg/android/agoo/b/a;->a()V

    .line 136
    iget-object p1, p0, Lorg/android/agoo/b/b;->b:Lorg/android/agoo/d/c;

    invoke-virtual {p1}, Lorg/android/agoo/d/c;->a()V

    .line 139
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 140
    sget-object p1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "BaseIntentService"

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is clear all msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lorg/android/agoo/a/b;->b(Landroid/content/Context;J)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_b
    iget-object p1, p0, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lorg/android/agoo/a/b;->b(Landroid/content/Context;J)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 145
    iget-object p1, p0, Lorg/android/agoo/b/b;->d:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lorg/android/agoo/a/b;->a(Landroid/content/Context;J)V

    .line 147
    iget-object p1, p0, Lorg/android/agoo/b/b;->b:Lorg/android/agoo/d/c;

    invoke-virtual {p1}, Lorg/android/agoo/d/c;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "BaseIntentService"

    const-string v1, "reportCacheMsg"

    .line 151
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 155
    :try_start_3
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "BaseIntentService"

    const-string v1, "onHandleIntent deal error"

    .line 156
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    :cond_c
    :goto_0
    sget-object p1, Lcom/taobao/accs/client/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :goto_1
    sget-object v0, Lcom/taobao/accs/client/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    throw p1
.end method
