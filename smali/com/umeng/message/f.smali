.class public Lcom/umeng/message/f;
.super Ljava/lang/Object;
.source "PushAgent.java"


# static fields
.field public static a:Z = false

.field private static b:Lcom/umeng/message/f; = null

.field private static e:Z = false

.field private static final f:Ljava/lang/String; = "com.umeng.message.f"


# instance fields
.field private c:Lcom/umeng/message/c/a;

.field private d:Landroid/content/Context;

.field private g:Lcom/umeng/message/g;

.field private h:Lcom/umeng/message/g;

.field private i:Lcom/umeng/message/g;

.field private j:Z

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:Lcom/umeng/message/b;

.field private n:Lcom/umeng/message/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/umeng/message/f;->j:Z

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/umeng/message/f;->k:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/umeng/message/f;->j:Z

    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lcom/umeng/message/f;->k:Z

    .line 70
    :try_start_0
    iput-object p1, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    .line 71
    invoke-static {p1}, Lcom/umeng/message/c/a;->a(Landroid/content/Context;)Lcom/umeng/message/c/a;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/message/f;->c:Lcom/umeng/message/c/a;

    .line 74
    new-instance v2, Lcom/umeng/message/k;

    invoke-direct {v2}, Lcom/umeng/message/k;-><init>()V

    iput-object v2, p0, Lcom/umeng/message/f;->g:Lcom/umeng/message/g;

    .line 75
    new-instance v2, Lcom/umeng/message/i;

    invoke-direct {v2}, Lcom/umeng/message/i;-><init>()V

    iput-object v2, p0, Lcom/umeng/message/f;->h:Lcom/umeng/message/g;

    .line 76
    new-instance v2, Lcom/umeng/message/l;

    invoke-direct {v2}, Lcom/umeng/message/l;-><init>()V

    iput-object v2, p0, Lcom/umeng/message/f;->i:Lcom/umeng/message/g;

    .line 77
    invoke-static {p1}, Lcom/umeng/message/util/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 79
    sget-object v3, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v3, Lcom/umeng/message/f;->f:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "PushAgent\u521d\u59cb\u5316\u5931\u8d25"

    aput-object v5, v4, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v0, v4}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 82
    :goto_0
    new-instance v0, Lcom/umeng/message/f$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/f$1;-><init>(Lcom/umeng/message/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/umeng/message/f;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/f;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/message/f;
    .locals 2

    const-class v0, Lcom/umeng/message/f;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/umeng/message/f;->b:Lcom/umeng/message/f;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/umeng/message/f;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/umeng/message/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/message/f;->b:Lcom/umeng/message/f;

    .line 98
    :cond_0
    sget-object p0, Lcom/umeng/message/f;->b:Lcom/umeng/message/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 94
    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/umeng/message/f;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/umeng/message/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    iget-object v1, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.umeng.messge.registercallback.action"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "registration_id"

    .line 200
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "status"

    const/4 v1, 0x1

    .line 201
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    iget-object p1, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.umeng.messge.registercallback.action"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "status"

    const/4 v2, 0x0

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "s"

    .line 216
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "s1"

    .line 217
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object p1, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static l()V
    .locals 1

    const/4 v0, 0x1

    .line 498
    sput-boolean v0, Lcom/umeng/message/f;->e:Z

    return-void
.end method

.method public static m()Z
    .locals 1

    .line 502
    sget-boolean v0, Lcom/umeng/message/f;->e:Z

    return v0
.end method

.method static synthetic u()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/umeng/message/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method private v()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 107
    sget-object v2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v2, Lcom/umeng/message/f;->f:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "U-Push\u6700\u4f4e\u652f\u6301\u7684\u7cfb\u7edf\u7248\u672c\u4e3aAndroid 4.0"

    aput-object v4, v3, v1

    invoke-static {v2, v1, v3}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/message/f;->l:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/umeng/message/b/e;->a(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    sget-object v2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v2, Lcom/umeng/message/f;->f:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "AndroidManifest\u6743\u9650\u6216\u7ec4\u4ef6\u914d\u7f6e\u9519\u8bef"

    aput-object v4, v3, v1

    invoke-static {v2, v1, v3}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void

    .line 115
    :cond_1
    sget-object v2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v2, Lcom/umeng/message/f;->f:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "AndroidManifest\u914d\u7f6e\u6b63\u786e"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-static {v2, v4, v3}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/umeng/message/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/umeng/message/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    const-class v3, Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-static {v2, v3}, Lcom/umeng/message/b/e;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    sget-boolean v2, Lcom/umeng/message/f;->a:Z

    if-eqz v2, :cond_3

    .line 126
    iget-object v2, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/message/f;->l:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/umeng/message/b/e;->b(Landroid/content/Context;Landroid/os/Handler;)V

    .line 129
    :cond_3
    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->a(Z)V

    .line 130
    invoke-static {v1}, Lanet/channel/h/a;->a(Z)V

    .line 132
    iget-object v2, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/taobao/accs/a;->a(Landroid/content/Context;I)V

    .line 133
    new-instance v2, Lcom/taobao/accs/b$a;

    invoke-direct {v2}, Lcom/taobao/accs/b$a;-><init>()V

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "umeng:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/umeng/message/f;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/accs/b$a;->a(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object v2

    .line 135
    invoke-virtual {p0}, Lcom/umeng/message/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/accs/b$a;->b(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object v2

    const-string v3, "umengacs.m.taobao.com"

    .line 136
    invoke-virtual {v2, v3}, Lcom/taobao/accs/b$a;->c(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object v2

    const/16 v3, 0xb

    .line 137
    invoke-virtual {v2, v3}, Lcom/taobao/accs/b$a;->a(I)Lcom/taobao/accs/b$a;

    move-result-object v2

    const-string v5, "umengjmacs.m.taobao.com"

    .line 138
    invoke-virtual {v2, v5}, Lcom/taobao/accs/b$a;->d(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object v2

    .line 139
    invoke-virtual {v2, v3}, Lcom/taobao/accs/b$a;->b(I)Lcom/taobao/accs/b$a;

    move-result-object v2

    .line 140
    invoke-direct {p0}, Lcom/umeng/message/f;->w()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/taobao/accs/b$a;->a(Z)Lcom/taobao/accs/b$a;

    move-result-object v2

    .line 141
    invoke-virtual {v2, v1}, Lcom/taobao/accs/b$a;->b(Z)Lcom/taobao/accs/b$a;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Lcom/taobao/accs/b$a;->a()Lcom/taobao/accs/b;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/taobao/accs/a;->a(Landroid/content/Context;Lcom/taobao/accs/b;)Ljava/lang/String;

    const/4 v2, 0x3

    .line 147
    new-array v3, v2, [Ljava/lang/String;

    const-string v5, "amdcopen.m.taobao.com"

    aput-object v5, v3, v1

    const-string v5, "amdc.wapa.taobao.com"

    aput-object v5, v3, v0

    const-string v5, "amdc.taobao.net"

    aput-object v5, v3, v4

    invoke-static {v3}, Lanet/channel/strategy/a/a;->a([Ljava/lang/String;)V

    .line 149
    new-array v2, v2, [[Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/String;

    const-string v5, "106.11.61.135"

    aput-object v5, v3, v1

    const-string v5, "106.11.61.137"

    aput-object v5, v3, v0

    aput-object v3, v2, v1

    const/4 v3, 0x0

    aput-object v3, v2, v0

    aput-object v3, v2, v4

    invoke-static {v2}, Lanet/channel/strategy/a/a;->a([[Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/umeng/message/a/a;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "com.umeng.message.XiaomiIntentService"

    .line 153
    invoke-static {v2}, Lcom/taobao/agoo/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "com.umeng.message.UmengIntentService"

    .line 155
    invoke-static {v2}, Lcom/taobao/agoo/e;->a(Ljava/lang/String;)V

    .line 158
    :goto_0
    new-instance v2, Lcom/umeng/message/f$2;

    invoke-direct {v2, p0}, Lcom/umeng/message/f$2;-><init>(Lcom/umeng/message/f;)V

    invoke-static {v2}, Lcom/umeng/message/a/d;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 119
    :cond_5
    :goto_1
    sget-object v2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v2, Lcom/umeng/message/f;->f:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "Appkey\u548cSecret key\u5747\u4e0d\u80fd\u4e3a\u7a7a"

    aput-object v4, v3, v1

    invoke-static {v2, v1, v3}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 187
    :catch_0
    sget-object v2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v2, Lcom/umeng/message/f;->f:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "\u6ce8\u518c\u5931\u8d25"

    aput-object v3, v0, v1

    invoke-static {v2, v1, v0}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private w()Z
    .locals 1

    .line 739
    iget-boolean v0, p0, Lcom/umeng/message/f;->k:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/umeng/message/g;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/umeng/message/f;->g:Lcom/umeng/message/g;

    return-object v0
.end method

.method public a(Lcom/umeng/message/b;)V
    .locals 0

    .line 282
    invoke-virtual {p0, p1}, Lcom/umeng/message/f;->b(Lcom/umeng/message/b;)V

    .line 283
    invoke-direct {p0}, Lcom/umeng/message/f;->v()V

    return-void
.end method

.method public b()Lcom/umeng/message/g;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/umeng/message/f;->h:Lcom/umeng/message/g;

    return-object v0
.end method

.method public b(Lcom/umeng/message/b;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/umeng/message/f;->m:Lcom/umeng/message/b;

    return-void
.end method

.method public c()Lcom/umeng/message/g;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/umeng/message/f;->i:Lcom/umeng/message/g;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/umeng/message/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    const-string v1, "UMENG_MESSAGE_SECRET"

    .line 397
    invoke-static {v0, v1}, Lcom/umeng/message/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lcom/umeng/message/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    .line 412
    invoke-static {v0}, Lcom/umeng/message/a/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcom/umeng/message/d;->e()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    .line 427
    invoke-static {v0}, Lcom/umeng/message/a/a;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public g()V
    .locals 4

    .line 436
    iget-object v0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/h;->b(J)V

    .line 438
    invoke-static {}, Lcom/umeng/message/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    sget-wide v2, Lcom/umeng/message/e;->p:J

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 442
    :goto_0
    iget-object v2, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/umeng/message/h;->a(J)V

    return-void
.end method

.method public h()I
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/d;->h()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Lcom/umeng/message/d;->i()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/d;->j()I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/d;->k()I

    move-result v0

    return v0
.end method

.method public n()Lcom/umeng/message/b;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/umeng/message/f;->m:Lcom/umeng/message/b;

    return-object v0
.end method

.method public o()Lcom/umeng/message/a;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/umeng/message/f;->n:Lcom/umeng/message/a;

    return-object v0
.end method

.method public p()Z
    .locals 1

    :try_start_0
    const-string v0, "com.umeng.update.UmengUpdateAgent"

    .line 657
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 660
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public q()Z
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Lcom/umeng/message/d;->q()Z

    move-result v0

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Lcom/umeng/message/d;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 691
    iget-boolean v0, p0, Lcom/umeng/message/f;->j:Z

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/umeng/message/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/d;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
