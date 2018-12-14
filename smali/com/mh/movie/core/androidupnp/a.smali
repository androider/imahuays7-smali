.class public Lcom/mh/movie/core/androidupnp/a;
.super Ljava/lang/Object;
.source "AndroidupnpMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/androidupnp/a$b;,
        Lcom/mh/movie/core/androidupnp/a$c;,
        Lcom/mh/movie/core/androidupnp/a$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "a"

.field private static h:Lcom/mh/movie/core/androidupnp/a;


# instance fields
.field public a:Lcom/mh/movie/core/androidupnp/a/a;

.field private c:Lcom/mh/movie/core/androidupnp/a$b;

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Lcom/mh/movie/core/androidupnp/c/a;

.field private i:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/mh/movie/core/androidupnp/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/androidupnp/a$a;-><init>(Lcom/mh/movie/core/androidupnp/a;Lcom/mh/movie/core/androidupnp/a$1;)V

    iput-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->e:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/mh/movie/core/androidupnp/a/a;

    invoke-direct {v0}, Lcom/mh/movie/core/androidupnp/a/a;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->a:Lcom/mh/movie/core/androidupnp/a/a;

    .line 65
    new-instance v0, Lcom/mh/movie/core/androidupnp/c/a;

    invoke-direct {v0}, Lcom/mh/movie/core/androidupnp/c/a;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->g:Lcom/mh/movie/core/androidupnp/c/a;

    .line 83
    new-instance v0, Lcom/mh/movie/core/androidupnp/a$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/androidupnp/a$1;-><init>(Lcom/mh/movie/core/androidupnp/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->i:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static a()Lcom/mh/movie/core/androidupnp/a;
    .locals 1

    .line 77
    sget-object v0, Lcom/mh/movie/core/androidupnp/a;->h:Lcom/mh/movie/core/androidupnp/a;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/mh/movie/core/androidupnp/a;

    invoke-direct {v0}, Lcom/mh/movie/core/androidupnp/a;-><init>()V

    sput-object v0, Lcom/mh/movie/core/androidupnp/a;->h:Lcom/mh/movie/core/androidupnp/a;

    .line 80
    :cond_0
    sget-object v0, Lcom/mh/movie/core/androidupnp/a;->h:Lcom/mh/movie/core/androidupnp/a;

    return-object v0
.end method

.method static synthetic a(Lcom/mh/movie/core/androidupnp/a;)Lcom/mh/movie/core/androidupnp/c/a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mh/movie/core/androidupnp/a;->g:Lcom/mh/movie/core/androidupnp/c/a;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/androidupnp/a;)Lcom/mh/movie/core/androidupnp/a$b;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mh/movie/core/androidupnp/a;->c:Lcom/mh/movie/core/androidupnp/a$b;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/mh/movie/core/androidupnp/a;->i:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic c(Lcom/mh/movie/core/androidupnp/a;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mh/movie/core/androidupnp/a;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/androidupnp/a;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mh/movie/core/androidupnp/a;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/mh/movie/core/androidupnp/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 120
    new-instance v0, Lcom/mh/movie/core/androidupnp/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/androidupnp/a$c;-><init>(Lcom/mh/movie/core/androidupnp/a;Lcom/mh/movie/core/androidupnp/a$1;)V

    iput-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->f:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zane.androidupnp.action.playing"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zane.androidupnp.action.paused_playback"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zane.androidupnp.action.stopped"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zane.androidupnp.action.transitioning"

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/mh/movie/core/androidupnp/a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/mh/movie/core/androidupnp/a;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private j()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->g:Lcom/mh/movie/core/androidupnp/c/a;

    new-instance v1, Lcom/mh/movie/core/androidupnp/a$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/androidupnp/a$2;-><init>(Lcom/mh/movie/core/androidupnp/a;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/androidupnp/c/a;->a(Lcom/mh/movie/core/androidupnp/c/b;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 189
    invoke-static {}, Lcom/mh/movie/core/androidupnp/b/d;->a()Lcom/mh/movie/core/androidupnp/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/b/d;->b()Ljava/util/Collection;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a;->c:Lcom/mh/movie/core/androidupnp/a$b;

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a;->c:Lcom/mh/movie/core/androidupnp/a$b;

    const-string v0, ""

    invoke-interface {p1, v2, v0}, Lcom/mh/movie/core/androidupnp/a$b;->a(ZLjava/lang/String;)V

    :cond_0
    return-void

    .line 196
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge p1, v1, :cond_7

    if-gez p1, :cond_2

    goto :goto_0

    .line 205
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    check-cast p1, Lcom/mh/movie/core/androidupnp/b/c;

    .line 206
    invoke-static {p1}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a;->c:Lcom/mh/movie/core/androidupnp/a$b;

    if-eqz p1, :cond_3

    .line 208
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a;->c:Lcom/mh/movie/core/androidupnp/a$b;

    const-string v0, ""

    invoke-interface {p1, v2, v0}, Lcom/mh/movie/core/androidupnp/a$b;->a(ZLjava/lang/String;)V

    :cond_3
    return-void

    .line 213
    :cond_4
    invoke-static {}, Lcom/mh/movie/core/androidupnp/service/b/a;->a()Lcom/mh/movie/core/androidupnp/service/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/androidupnp/service/b/a;->a(Lcom/mh/movie/core/androidupnp/b/h;)V

    .line 214
    invoke-virtual {p1}, Lcom/mh/movie/core/androidupnp/b/c;->a()Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    .line 215
    invoke-static {p1}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->c:Lcom/mh/movie/core/androidupnp/a$b;

    if-eqz v0, :cond_6

    .line 219
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->c:Lcom/mh/movie/core/androidupnp/a$b;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/androidupnp/a$b;->a(ZLjava/lang/String;)V

    :cond_6
    return-void

    .line 198
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a;->c:Lcom/mh/movie/core/androidupnp/a$b;

    if-eqz p1, :cond_8

    .line 199
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a;->c:Lcom/mh/movie/core/androidupnp/a$b;

    const-string v0, ""

    invoke-interface {p1, v2, v0}, Lcom/mh/movie/core/androidupnp/a$b;->a(ZLjava/lang/String;)V

    :cond_8
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/a;->d:Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lcom/mh/movie/core/androidupnp/a;->j()V

    .line 113
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a;->d:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/mh/movie/core/androidupnp/a;->b(Landroid/content/Context;)V

    .line 114
    invoke-direct {p0}, Lcom/mh/movie/core/androidupnp/a;->i()V

    return-void
.end method

.method public a(Lcom/mh/movie/core/androidupnp/a$b;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/a;->c:Lcom/mh/movie/core/androidupnp/a$b;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 271
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->a:Lcom/mh/movie/core/androidupnp/a/a;

    new-instance v5, Lcom/mh/movie/core/androidupnp/a$5;

    invoke-direct {v5, p0}, Lcom/mh/movie/core/androidupnp/a$5;-><init>(Lcom/mh/movie/core/androidupnp/a;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mh/movie/core/androidupnp/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mh/movie/core/androidupnp/a/a/a;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/mh/movie/core/androidupnp/a;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 150
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/mh/movie/core/androidupnp/a;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    invoke-static {}, Lcom/mh/movie/core/androidupnp/service/b/a;->a()Lcom/mh/movie/core/androidupnp/service/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/b/a;->g()V

    .line 153
    invoke-static {}, Lcom/mh/movie/core/androidupnp/b/d;->a()Lcom/mh/movie/core/androidupnp/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/b/d;->c()V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->a:Lcom/mh/movie/core/androidupnp/a/a;

    new-instance v1, Lcom/mh/movie/core/androidupnp/a$7;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/androidupnp/a$7;-><init>(Lcom/mh/movie/core/androidupnp/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/mh/movie/core/androidupnp/a/a;->a(ILcom/mh/movie/core/androidupnp/a/a/a;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 157
    invoke-static {}, Lcom/mh/movie/core/androidupnp/b;->a()Lcom/mh/movie/core/androidupnp/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/b;->b()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->a:Lcom/mh/movie/core/androidupnp/a/a;

    new-instance v1, Lcom/mh/movie/core/androidupnp/a$3;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/androidupnp/a$3;-><init>(Lcom/mh/movie/core/androidupnp/a;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/androidupnp/a/a;->c(Lcom/mh/movie/core/androidupnp/a/a/a;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->a:Lcom/mh/movie/core/androidupnp/a/a;

    new-instance v1, Lcom/mh/movie/core/androidupnp/a$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/androidupnp/a$4;-><init>(Lcom/mh/movie/core/androidupnp/a;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/androidupnp/a/a;->a(Lcom/mh/movie/core/androidupnp/a/a/a;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a;->a:Lcom/mh/movie/core/androidupnp/a/a;

    new-instance v1, Lcom/mh/movie/core/androidupnp/a$6;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/androidupnp/a$6;-><init>(Lcom/mh/movie/core/androidupnp/a;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/androidupnp/a/a;->b(Lcom/mh/movie/core/androidupnp/a/a/a;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 386
    invoke-static {}, Lcom/mh/movie/core/androidupnp/service/b/a;->a()Lcom/mh/movie/core/androidupnp/service/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/b/a;->e()Lcom/mh/movie/core/androidupnp/b/h;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/androidupnp/b/c;

    .line 388
    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 392
    :cond_0
    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/b/c;->a()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    .line 394
    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    return-object v0

    .line 397
    :cond_1
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
