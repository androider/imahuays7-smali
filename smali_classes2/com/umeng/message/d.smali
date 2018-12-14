.class public Lcom/umeng/message/d;
.super Ljava/lang/Object;
.source "MessageSharedPrefs.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.umeng.message.d"

.field private static c:Lcom/umeng/message/d;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Landroid/content/SharedPreferences;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/umeng/message/d;->b:Landroid/content/Context;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/umeng/message/d;->e:I

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 40
    iget v0, p0, Lcom/umeng/message/d;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/message/d;->e:I

    :cond_0
    const-string v0, "umeng_message_state"

    .line 43
    iget v1, p0, Lcom/umeng/message/d;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/message/d;->d:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/d;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/umeng/message/d;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/message/d;
    .locals 2

    const-class v0, Lcom/umeng/message/d;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/umeng/message/d;->c:Lcom/umeng/message/d;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/umeng/message/d;

    invoke-direct {v1, p0}, Lcom/umeng/message/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/message/d;->c:Lcom/umeng/message/d;

    .line 52
    :cond_0
    sget-object p0, Lcom/umeng/message/d;->c:Lcom/umeng/message/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v0

    throw p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 1039
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "tempkey"

    .line 1040
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "tempkey=?"

    const/4 v1, 0x1

    .line 1042
    new-array v7, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v7, v2

    .line 1043
    iget-object p1, p0, Lcom/umeng/message/d;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object p1, p0, Lcom/umeng/message/d;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v4, Lcom/umeng/message/provider/a;->c:Landroid/net/Uri;

    new-array v5, v1, [Ljava/lang/String;

    const-string p1, "tempvalue"

    aput-object p1, v5, v2

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 1058
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p2

    .line 1047
    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "tempvalue"

    .line 1049
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, v0

    :cond_2
    if-eqz p1, :cond_5

    .line 1058
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    if-eqz p1, :cond_4

    .line 1054
    :try_start_2
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_3

    .line 1058
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p2

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    return-object p2
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1073
    new-instance v0, Lcom/umeng/message/d$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/message/d$1;-><init>(Lcom/umeng/message/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/taobao/accs/common/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const-string v0, "KEY_APP_LAUNCH_LOG_SEND_POLICY"

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const-string v0, "has_register"

    .line 996
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 4

    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/b/h;->a(Landroid/content/Context;)Lcom/umeng/message/b/h;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/umeng/message/b/h;->c()J

    move-result-wide v1

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 96
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 97
    sget-object v2, Lcom/umeng/message/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x6

    .line 100
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 101
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    .line 102
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_MSG_RESOURCE_DOWNLOAD_PREFIX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "false"

    invoke-direct {p0, p1, v0}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()I
    .locals 2

    const-string v0, "KEY_NOTIFICATION_NUMBER"

    const-string v1, "1"

    .line 121
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 2

    const-string v0, "KEY_TAG_SEND_POLICY"

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_MSG_RESOURCE_DOWNLOAD_PREFIX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-direct {p0, p1, v0}, Lcom/umeng/message/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/umeng/message/d;->d:Landroid/content/SharedPreferences;

    const-string v1, "KEY_UMENG_MESSAGE_APP_KEY"

    const-string v2, ""

    .line 142
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 2

    const-string v0, "KEY_REGISTER_TIMES"

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_MSG_RESOURCE_DOWNLOAD_PREFIX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/message/d;->f(Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/umeng/message/d;->d:Landroid/content/SharedPreferences;

    const-string v1, "KEY_UMENG_MESSAGE_APP_SECRET"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "last_msg_id"

    .line 799
    invoke-direct {p0, v0, p1}, Lcom/umeng/message/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/umeng/message/d;->d:Landroid/content/SharedPreferences;

    const-string v1, "KEY_UMENG_MESSAGE_APP_CHANNEL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "device_token"

    .line 937
    invoke-virtual {p0, p1}, Lcom/umeng/message/d;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "device_token"

    .line 939
    invoke-direct {p0, v0, p1}, Lcom/umeng/message/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public f()I
    .locals 2

    const-string v0, "KEY_APP_LAUNCH_LOG_SEND_POLICY"

    const-string v1, "-1"

    .line 211
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1120
    new-instance v0, Lcom/umeng/message/d$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/d$2;-><init>(Lcom/umeng/message/d;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/taobao/accs/common/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()V
    .locals 9

    const/4 v0, 0x0

    .line 572
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 573
    iget-object v2, p0, Lcom/umeng/message/d;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v2, p0, Lcom/umeng/message/d;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v4, Lcom/umeng/message/provider/a;->c:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 574
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 575
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tempkey"

    .line 576
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UMENG_TAG"

    .line 577
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 582
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    const-string v4, "tempkey=?"

    const/4 v5, 0x1

    .line 584
    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v0

    .line 585
    iget-object v6, p0, Lcom/umeng/message/d;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/umeng/message/d;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v7, Lcom/umeng/message/provider/a;->c:Landroid/net/Uri;

    invoke-virtual {v6, v7, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_5

    goto :goto_5

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 589
    :try_start_2
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v2, :cond_3

    .line 593
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method h()I
    .locals 2

    const-string v0, "KEY_NO_DISTURB_START_HOUR"

    const-string v1, "23"

    .line 623
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method i()I
    .locals 2

    const-string v0, "KEY_NO_DISTURB_START_MINUTE"

    const-string v1, "0"

    .line 628
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method j()I
    .locals 2

    const-string v0, "KEY_NO_DISTURB_END_HOUR"

    const-string v1, "7"

    .line 633
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method k()I
    .locals 2

    const-string v0, "KEY_NO_DISTURB_END_MINUTE"

    const-string v1, "0"

    .line 638
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    const-string v0, "KEY_CACHE_FILE_TRANSFER_TO_SQL"

    const-string v1, "false"

    .line 720
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2

    const-string v0, "KEY_CACHE_FILE_TRANSFER_TO_SQL"

    const-string v1, "true"

    .line 732
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    const-string v0, "KEY_PUSH_INTENT_SERVICE_CLASSNAME"

    const-string v1, ""

    .line 750
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 756
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    const-string v0, "last_msg_id"

    const-string v1, ""

    .line 804
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .locals 2

    const-string v0, "mute_duration"

    const-string v1, "60"

    .line 818
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 2

    const-string v0, "KEY_SET_NOTIFICATION_ON_FOREGROUND"

    const-string v1, "true"

    .line 845
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    const-string v0, "KEY_SET_RESOURCE_PACKAGENAME"

    const-string v1, ""

    .line 864
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .locals 2

    const-string v0, "KEY_SET_NOTIFICATION_PLAY_VIBRATE"

    const-string v1, "0"

    .line 881
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 2

    const-string v0, "KEY_SET_NOTIFICATION_PLAY_LIGHTS"

    const-string v1, "0"

    .line 896
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public u()I
    .locals 2

    const-string v0, "KEY_SET_NOTIFICATION_PLAY_SOUND"

    const-string v1, "0"

    .line 912
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    const-string v0, "device_token"

    const-string v1, ""

    .line 947
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method w()Ljava/lang/String;
    .locals 3

    .line 969
    iget-object v0, p0, Lcom/umeng/message/d;->d:Landroid/content/SharedPreferences;

    const-string v1, "KEY_NOTIFICATION_CHANNEL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 2

    const-string v0, "has_register"

    const-string v1, "false"

    .line 1006
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 1007
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public y()I
    .locals 3

    .line 1014
    iget-object v0, p0, Lcom/umeng/message/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    const-string v1, "KEY_REGISTER_TIMES"

    const-string v2, "0"

    .line 1015
    invoke-direct {v0, v1, v2}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 3

    .line 1023
    iget-object v0, p0, Lcom/umeng/message/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    const-string v1, "ucode"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/umeng/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
