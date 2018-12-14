.class public Lcom/umeng/message/UmengMessageCallbackHandlerService;
.super Landroid/app/IntentService;
.source "UmengMessageCallbackHandlerService.java"


# static fields
.field public static final a:Ljava/lang/String; = "com.umeng.message.UmengMessageCallbackHandlerService"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UmengMessageCallbackHandlerService"

    .line 28
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/UmengMessageCallbackHandlerService;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService;->b:Landroid/content/Context;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/deviceToken"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 194
    :cond_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 195
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 196
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/UmengMessageCallbackHandlerService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    .line 207
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 208
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "msg_id"

    .line 209
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "action_type"

    .line 210
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v7, "MsgId=? And ActionType=?"

    .line 213
    new-array v8, v0, [Ljava/lang/String;

    aput-object v6, v8, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 214
    iget-object v9, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService;->b:Landroid/content/Context;

    .line 215
    invoke-static {v9}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v9, Lcom/umeng/message/provider/a;->f:Landroid/net/Uri;

    .line 214
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 216
    invoke-virtual {v9, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    .line 214
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_1

    const-string v5, "MsgId=?"

    .line 220
    new-array v7, v1, [Ljava/lang/String;

    aput-object v6, v7, v2

    .line 221
    iget-object v6, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService;->b:Landroid/content/Context;

    .line 222
    invoke-static {v6}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v6, Lcom/umeng/message/provider/a;->g:Landroid/net/Uri;

    .line 221
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 223
    invoke-virtual {v6, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 221
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 228
    :cond_2
    iget-object p1, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v4, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v4, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz p1, :cond_3

    .line 231
    sget-object v3, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v3, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove cache log:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 231
    invoke-static {v3, v0, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    .line 34
    iget-object v0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService;->b:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/umeng/message/b/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v1, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8fdb\u7a0b\u540d\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    invoke-static {v1, v0, v3}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    if-eqz p1, :cond_a

    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.umeng.messge.registercallback.action"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    const-string v1, "registration_id"

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "status"

    .line 43
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 44
    sget-object v5, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v5, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6ce8\u518c\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\uff0c\u72b6\u6001\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v5, v0, v2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/f;->n()Lcom/umeng/message/b;

    move-result-object v0

    if-eqz v3, :cond_1

    .line 47
    new-instance p1, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;

    invoke-direct {p1, p0, v1}, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;-><init>(Lcom/umeng/message/UmengMessageCallbackHandlerService;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/message/a/d;->a(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_9

    .line 77
    invoke-interface {v0, v1}, Lcom/umeng/message/b;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    if-eqz v0, :cond_9

    const-string v1, "s"

    .line 81
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "s1"

    .line 82
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-interface {v0, v1, p1}, Lcom/umeng/message/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 88
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 90
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.umeng.message.enablecallback.action"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_1
    const-string v1, "status"

    .line 93
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 94
    iget-object v3, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/f;->o()Lcom/umeng/message/a;

    move-result-object v3

    .line 95
    sget-object v5, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v5, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5f00\u542f\u72b6\u6001:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v5, v0, v2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    if-eqz v1, :cond_3

    if-eqz v3, :cond_9

    .line 100
    invoke-interface {v3}, Lcom/umeng/message/a;->a()V

    goto/16 :goto_1

    :cond_3
    if-eqz v3, :cond_9

    const-string v0, "s"

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s1"

    .line 105
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-interface {v3, v0, p1}, Lcom/umeng/message/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 111
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 113
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.umeng.message.disablecallback.action"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_2
    const-string v1, "status"

    .line 116
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 117
    iget-object v3, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/f;->o()Lcom/umeng/message/a;

    move-result-object v3

    .line 118
    sget-object v5, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v5, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5173\u95ed\u72b6\u6001:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v5, v0, v2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    if-eqz v1, :cond_5

    if-eqz v3, :cond_9

    .line 123
    invoke-interface {v3}, Lcom/umeng/message/a;->a()V

    goto/16 :goto_1

    :cond_5
    if-eqz v3, :cond_9

    const-string v0, "s"

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s1"

    .line 128
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-interface {v3, v0, p1}, Lcom/umeng/message/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception p1

    .line 134
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 136
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.umeng.message.message.handler.action"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_3
    const-string v1, "body"

    .line 140
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    new-instance v3, Lcom/umeng/message/entity/a;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/umeng/message/entity/a;-><init>(Lorg/json/JSONObject;)V

    const-string v1, "id"

    .line 142
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    const-string v1, "task_id"

    .line 143
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    const-string p1, "notificationpullapp"

    .line 145
    iget-object v1, v3, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 146
    iget-object p1, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/message/f;->b()Lcom/umeng/message/g;

    move-result-object p1

    goto :goto_0

    .line 148
    :cond_7
    iget-object p1, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/message/f;->a()Lcom/umeng/message/g;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_9

    .line 151
    iget-object v1, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService;->b:Landroid/content/Context;

    invoke-interface {p1, v1, v3}, Lcom/umeng/message/g;->a(Landroid/content/Context;Lcom/umeng/message/entity/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception p1

    if-eqz p1, :cond_9

    .line 154
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 155
    sget-object v1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v1, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_HANDLER_ACTION:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    .line 155
    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.umeng.message.message.sendmessage.action"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :try_start_4
    const-string v1, "KEY_SENDMESSAGE"

    .line 162
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "KEY_UMPX_PATH"

    .line 163
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "jsonHeader"

    .line 165
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "jsonBody"

    .line 166
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 167
    new-instance v5, Lcom/umeng/commonsdk/stateless/a;

    invoke-direct {v5}, Lcom/umeng/commonsdk/stateless/a;-><init>()V

    .line 168
    iget-object v6, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService;->b:Landroid/content/Context;

    invoke-virtual {v5, v6, v1, v3, p1}, Lcom/umeng/commonsdk/stateless/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v1, "exception"

    .line 169
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "push"

    .line 170
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a(Lorg/json/JSONArray;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_4
    move-exception p1

    if-eqz p1, :cond_9

    .line 173
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 174
    sget-object v1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v1, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_SEND_ACTION:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    .line 174
    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    :goto_2
    return-void
.end method
