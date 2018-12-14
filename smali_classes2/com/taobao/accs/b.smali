.class public Lcom/taobao/accs/b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/b$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static b:I = 0x0

.field public static c:Z = false

.field private static d:[Ljava/lang/String;

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/b;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/b;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/b;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Landroid/content/Context;


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v1, 0x3

    .line 27
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "msgacs.m.taobao.com"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "msgacs.wapa.taobao.com"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "msgacs.waptest.taobao.com"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sput-object v2, Lcom/taobao/accs/b;->a:[Ljava/lang/String;

    .line 29
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "accscdn.m.taobao.com"

    aput-object v2, v1, v4

    const-string v2, "acs.wapa.taobao.com"

    aput-object v2, v1, v5

    const-string v2, "acs.waptest.taobao.com"

    aput-object v2, v1, v6

    sput-object v1, Lcom/taobao/accs/b;->d:[Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/taobao/accs/b;->e:Ljava/util/Map;

    .line 37
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/taobao/accs/b;->f:Ljava/util/Map;

    .line 38
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/taobao/accs/b;->g:Ljava/util/Map;

    .line 46
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/accs/utl/l;->f(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "accsConfigTags"

    const/4 v3, 0x0

    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "AccsClientConfig"

    const-string v8, "init config from xml"

    .line 49
    new-array v6, v6, [Ljava/lang/Object;

    const-string v9, "configtags"

    aput-object v9, v6, v4

    aput-object v2, v6, v5

    invoke-static {v7, v8, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "\\|"

    .line 52
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 55
    new-array v6, v5, [Ljava/lang/String;

    aput-object v2, v6, v4

    .line 58
    :cond_0
    array-length v2, v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_4

    aget-object v8, v6, v7

    .line 60
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    move/from16 v16, v2

    move-object/from16 v17, v6

    goto/16 :goto_2

    .line 65
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_accsAppkey"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-gez v9, :cond_2

    move-object v9, v3

    goto :goto_1

    .line 66
    :cond_2
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 67
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_accsAppSecret"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 68
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_authCode"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 69
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_keepAlive"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 70
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_autoUnit"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 71
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_inappPubkey"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 72
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_channelPubkey"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 73
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_inappHost"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 74
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_channelHost"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v2

    const-string v2, "_configEnv"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v1, v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 76
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v6

    const-string v6, "_disableChannel"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 78
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 79
    new-instance v15, Lcom/taobao/accs/b$a;

    invoke-direct {v15}, Lcom/taobao/accs/b$a;-><init>()V

    invoke-virtual {v15, v8}, Lcom/taobao/accs/b$a;->f(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/taobao/accs/b$a;->a(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/taobao/accs/b$a;->b(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/taobao/accs/b$a;->e(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/taobao/accs/b$a;->a(Z)Lcom/taobao/accs/b$a;

    move-result-object v8

    invoke-virtual {v8, v14}, Lcom/taobao/accs/b$a;->b(Z)Lcom/taobao/accs/b$a;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/taobao/accs/b$a;->a(I)Lcom/taobao/accs/b$a;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/taobao/accs/b$a;->b(I)Lcom/taobao/accs/b$a;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/taobao/accs/b$a;->c(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/taobao/accs/b$a;->d(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/taobao/accs/b$a;->c(I)Lcom/taobao/accs/b$a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/taobao/accs/b$a;->c(Z)Lcom/taobao/accs/b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/b$a;->a()Lcom/taobao/accs/b;

    const-string v2, "AccsClientConfig"

    const-string v3, "init config from xml"

    const/4 v4, 0x0

    .line 92
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v16

    move-object/from16 v6, v17

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x1

    .line 95
    sput-boolean v1, Lcom/taobao/accs/b;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "AccsClientConfig"

    const-string v3, "init config from xml"

    const/4 v4, 0x0

    .line 99
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_5
    :goto_3
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/b;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/taobao/accs/b;->t:I

    return p0
.end method

.method static synthetic a(Lcom/taobao/accs/b;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/taobao/accs/b;->o:I

    return p1
.end method

.method public static a()Landroid/content/Context;
    .locals 6

    .line 105
    sget-object v0, Lcom/taobao/accs/b;->h:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/taobao/accs/b;->h:Landroid/content/Context;

    return-object v0

    .line 108
    :cond_0
    const-class v0, Lcom/taobao/accs/b;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lcom/taobao/accs/b;->h:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 110
    sget-object v1, Lcom/taobao/accs/b;->h:Landroid/content/Context;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_1
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    .line 113
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    .line 114
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getApplication"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sput-object v1, Lcom/taobao/accs/b;->h:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 117
    :try_start_2
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 119
    :goto_0
    sget-object v1, Lcom/taobao/accs/b;->h:Landroid/content/Context;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 120
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static a(Ljava/lang/String;)Lcom/taobao/accs/b;
    .locals 3

    .line 162
    sget v0, Lcom/taobao/accs/b;->b:I

    packed-switch v0, :pswitch_data_0

    .line 170
    sget-object v0, Lcom/taobao/accs/b;->e:Ljava/util/Map;

    goto :goto_0

    .line 167
    :pswitch_0
    sget-object v0, Lcom/taobao/accs/b;->g:Ljava/util/Map;

    goto :goto_0

    .line 164
    :pswitch_1
    sget-object v0, Lcom/taobao/accs/b;->f:Ljava/util/Map;

    .line 174
    :goto_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/accs/b;

    if-nez p0, :cond_0

    const-string v0, "AccsClientConfig"

    const-string v1, "getConfig null!"

    const/4 v2, 0x0

    .line 176
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/taobao/accs/b;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/taobao/accs/b;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/taobao/accs/b;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/taobao/accs/b;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/taobao/accs/b;->p:I

    return p1
.end method

.method static synthetic b(Lcom/taobao/accs/b;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/taobao/accs/b;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/taobao/accs/b;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/taobao/accs/b;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/taobao/accs/b;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/taobao/accs/b;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/taobao/accs/b;->t:I

    return p1
.end method

.method static synthetic c(Lcom/taobao/accs/b;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/taobao/accs/b;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/taobao/accs/b;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/taobao/accs/b;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/taobao/accs/b;->u:Z

    return p1
.end method

.method static synthetic d(Lcom/taobao/accs/b;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/taobao/accs/b;->m:I

    return p1
.end method

.method static synthetic d(Lcom/taobao/accs/b;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/taobao/accs/b;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/taobao/accs/b;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/taobao/accs/b;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/taobao/accs/b;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/taobao/accs/b;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/taobao/accs/b;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/taobao/accs/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/taobao/accs/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/taobao/accs/b;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic m()[Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/taobao/accs/b;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n()Ljava/util/Map;
    .locals 1

    .line 21
    sget-object v0, Lcom/taobao/accs/b;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic o()Ljava/util/Map;
    .locals 1

    .line 21
    sget-object v0, Lcom/taobao/accs/b;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic p()Ljava/util/Map;
    .locals 1

    .line 21
    sget-object v0, Lcom/taobao/accs/b;->e:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/taobao/accs/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/taobao/accs/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/taobao/accs/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/taobao/accs/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/taobao/accs/b;->m:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/taobao/accs/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/taobao/accs/b;->o:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/taobao/accs/b;->p:I

    return v0
.end method

.method public j()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/taobao/accs/b;->q:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/taobao/accs/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/taobao/accs/b;->u:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccsClientConfig{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAppKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAppSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInappHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChannelHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSecurity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/accs/b;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAuthCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInappPubKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/accs/b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChannelPubKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/accs/b;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mKeepalive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/accs/b;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/accs/b;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigEnv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/accs/b;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisableChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/accs/b;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
