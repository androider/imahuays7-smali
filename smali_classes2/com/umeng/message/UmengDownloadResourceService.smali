.class public Lcom/umeng/message/UmengDownloadResourceService;
.super Landroid/app/Service;
.source "UmengDownloadResourceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/UmengDownloadResourceService$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.umeng.message.UmengDownloadResourceService"

.field private static e:Ljava/lang/Thread;


# instance fields
.field b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field c:Landroid/content/Context;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)J
    .locals 9

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_4

    .line 332
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 336
    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 338
    invoke-virtual {v2, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_1
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 341
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    .line 343
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 344
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    .line 346
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long v7, v0, v5

    move-wide v0, v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-wide v0

    :cond_4
    :goto_1
    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/umeng/message/entity/a;)Ljava/lang/String;
    .locals 1

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/umeng_push/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 371
    iget-object v0, p1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic a(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 32
    sput-object p0, Lcom/umeng/message/UmengDownloadResourceService;->e:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic a(Ljava/io/File;J)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->b(Ljava/io/File;J)V

    return-void
.end method

.method public static a(Ljava/io/File;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/UmengDownloadResourceService;->a(Ljava/io/File;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    .line 315
    sget-object p1, Lcom/umeng/message/UmengDownloadResourceService;->e:Ljava/lang/Thread;

    if-nez p1, :cond_0

    .line 316
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/umeng/message/UmengDownloadResourceService$1;

    invoke-direct {p2, p0, p3, p4}, Lcom/umeng/message/UmengDownloadResourceService$1;-><init>(Ljava/io/File;J)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p1, Lcom/umeng/message/UmengDownloadResourceService;->e:Ljava/lang/Thread;

    .line 324
    :cond_0
    sget-object p0, Lcom/umeng/message/UmengDownloadResourceService;->e:Ljava/lang/Thread;

    monitor-enter p0

    .line 325
    :try_start_0
    sget-object p1, Lcom/umeng/message/UmengDownloadResourceService;->e:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 326
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Ljava/io/File;J)V
    .locals 9

    if-eqz p0, :cond_3

    .line 360
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 361
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 362
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 363
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long v7, v3, v5

    cmp-long v3, v7, p1

    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private d(Lcom/umeng/message/entity/a;I)Landroid/app/PendingIntent;
    .locals 7

    .line 154
    invoke-virtual {p1}, Lcom/umeng/message/entity/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 157
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Landroid/content/Context;

    const-class v4, Lcom/umeng/message/UmengDownloadResourceService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "body"

    .line 159
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "id"

    .line 160
    iget-object v3, p1, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "task_id"

    .line 161
    iget-object v3, p1, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "OPERATIOIN"

    const/4 v3, 0x2

    .line 162
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "RETRY_TIME"

    .line 163
    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 167
    sget-object v2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v2, Lcom/umeng/message/UmengDownloadResourceService;->a:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PendingIntent: msgId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",requestCode:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",retryTime:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    invoke-static {v2, v3, v4}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 297
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Landroid/content/Context;Lcom/umeng/message/entity/a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v1, 0x100000

    const-wide/32 v3, 0x5265c00

    .line 298
    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/message/UmengDownloadResourceService;->a(Ljava/io/File;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Lcom/umeng/message/entity/a;)V
    .locals 3

    const-string v0, "notificationpullapp"

    .line 111
    iget-object v1, p1, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p0}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/f;->b()Lcom/umeng/message/g;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/f;->a()Lcom/umeng/message/g;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "autoupdate"

    .line 118
    iget-object v2, p1, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/umeng/message/f;->a()Lcom/umeng/message/g;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/k;

    if-eqz v0, :cond_2

    .line 122
    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/umeng/message/k;->b(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    goto :goto_1

    .line 124
    :cond_1
    invoke-interface {v0, p0, p1}, Lcom/umeng/message/g;->a(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/umeng/message/entity/a;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/umeng/message/UmengDownloadResourceService$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/message/UmengDownloadResourceService$a;-><init>(Lcom/umeng/message/UmengDownloadResourceService;Lcom/umeng/message/entity/a;I)V

    .line 131
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x0

    const/16 v1, 0xb

    if-lt p1, v1, :cond_0

    .line 132
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/message/UmengDownloadResourceService$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 134
    :cond_0
    new-array p1, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/umeng/message/UmengDownloadResourceService$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 289
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 291
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Lcom/umeng/message/entity/a;I)V
    .locals 8

    .line 139
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/UmengDownloadResourceService;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "setAlarm"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v0, v3, v2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->d(Lcom/umeng/message/entity/a;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "alarm"

    .line 141
    invoke-virtual {p0, p2}, Lcom/umeng/message/UmengDownloadResourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long v6, v2, v4

    invoke-virtual {p2, v1, v6, v7, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public c(Lcom/umeng/message/entity/a;I)V
    .locals 4

    .line 147
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/UmengDownloadResourceService;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "deleteAlarm"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->d(Lcom/umeng/message/entity/a;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "alarm"

    .line 149
    invoke-virtual {p0, p2}, Lcom/umeng/message/UmengDownloadResourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    .line 150
    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 62
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 64
    iput-object p0, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 71
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_0
    const-string v0, "OPERATIOIN"

    const/4 v1, 0x2

    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "RETRY_TIME"

    const/4 v3, 0x3

    .line 74
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "body"

    .line 75
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    :try_start_0
    new-instance v4, Lcom/umeng/message/entity/a;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/umeng/message/entity/a;-><init>(Lorg/json/JSONObject;)V

    const-string v3, "id"

    .line 80
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    const-string v3, "task_id"

    .line 81
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    .line 82
    iget-object v3, p0, Lcom/umeng/message/UmengDownloadResourceService;->d:Ljava/util/ArrayList;

    iget-object v5, v4, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/umeng/message/UmengDownloadResourceService;->d:Ljava/util/ArrayList;

    iget-object v5, v4, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/UmengDownloadResourceService;->a:Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "\u5f00\u59cb\u4e0b\u8f7d\u8d44\u6e90"

    aput-object v7, v6, v3

    invoke-static {v0, v1, v6}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    sub-int/2addr v2, v5

    .line 89
    invoke-virtual {p0, v4, v2}, Lcom/umeng/message/UmengDownloadResourceService;->b(Lcom/umeng/message/entity/a;I)V

    .line 90
    invoke-virtual {p0}, Lcom/umeng/message/UmengDownloadResourceService;->a()V

    .line 91
    invoke-virtual {p0, v4, v2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Lcom/umeng/message/entity/a;I)V

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-virtual {p0, v4, v2}, Lcom/umeng/message/UmengDownloadResourceService;->c(Lcom/umeng/message/entity/a;I)V

    .line 95
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/UmengDownloadResourceService;->a:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "\u4e0b\u8f7d\u8d44\u6e90\u540e\u663e\u793a\u901a\u77e5"

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v4}, Lcom/umeng/message/UmengDownloadResourceService;->a(Lcom/umeng/message/entity/a;)V

    .line 97
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->d:Ljava/util/ArrayList;

    iget-object v1, v4, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/umeng/message/UmengDownloadResourceService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 106
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
