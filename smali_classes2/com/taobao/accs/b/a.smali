.class public Lcom/taobao/accs/b/a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/b/a$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/concurrent/ScheduledFuture; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile c:Z = false

.field private static d:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/taobao/accs/b/a;->e:Landroid/content/BroadcastReceiver;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/b/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/b/a;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/taobao/accs/b/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 93
    sput-boolean v0, Lcom/taobao/accs/b/a;->c:Z

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const/16 v2, 0x68

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "anti_brush_ret"

    .line 97
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-static {p0, v0}, Lcom/taobao/accs/data/e;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 99
    sget-object p1, Lcom/taobao/accs/b/a;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    .line 100
    sget-object p1, Lcom/taobao/accs/b/a;->b:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p1, 0x0

    .line 101
    sput-object p1, Lcom/taobao/accs/b/a;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 103
    :cond_0
    sget-object p1, Lcom/taobao/accs/b/a;->d:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 104
    sget-object p1, Lcom/taobao/accs/b/a;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/accs/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {p0, p1}, Lcom/taobao/accs/utl/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .line 111
    sget-boolean v0, Lcom/taobao/accs/b/a;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "AntiBrush"

    const-string v0, "handleantiBrush return"

    const/4 v3, 0x2

    .line 112
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "mIsInCheckCodeActivity"

    aput-object v4, v3, v2

    sget-boolean v2, Lcom/taobao/accs/b/a;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {p1, v0, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 118
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "mtopsdk.mtop.antiattack.checkcode.validate.activity_action"

    .line 119
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v3, p0, Lcom/taobao/accs/b/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 121
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "Location"

    .line 122
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "AntiBrush"

    const-string v3, "handleAntiBrush:"

    .line 123
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lcom/taobao/accs/b/a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
    sput-boolean v1, Lcom/taobao/accs/b/a;->c:Z

    .line 126
    iget-object p1, p0, Lcom/taobao/accs/b/a;->e:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    .line 127
    new-instance p1, Lcom/taobao/accs/b/a$a;

    invoke-direct {p1}, Lcom/taobao/accs/b/a$a;-><init>()V

    iput-object p1, p0, Lcom/taobao/accs/b/a;->e:Landroid/content/BroadcastReceiver;

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/taobao/accs/b/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/taobao/accs/b/a;->e:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "mtopsdk.extra.antiattack.result.notify.action"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AntiBrush"

    const-string v1, "handleantiBrush"

    .line 132
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/net/URL;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/taobao/accs/b/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/b;->o(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    sget-object v2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    const/16 v3, 0x1a3

    if-ne v2, v3, :cond_3

    .line 47
    sget-object v2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_LOCATION:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v2}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AntiBrush"

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start anti bursh location:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-direct {p0, p2}, Lcom/taobao/accs/b/a;->a(Ljava/lang/String;)V

    .line 51
    sget-object p2, Lcom/taobao/accs/b/a;->b:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 52
    sget-object p2, Lcom/taobao/accs/b/a;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p2, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 53
    sput-object v2, Lcom/taobao/accs/b/a;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 55
    :cond_1
    new-instance p2, Lcom/taobao/accs/b/b;

    invoke-direct {p2, p0}, Lcom/taobao/accs/b/b;-><init>(Lcom/taobao/accs/b/a;)V

    const-wide/32 v3, 0xea60

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p2, v3, v4, v5}, Lcom/taobao/accs/common/a;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    sput-object p2, Lcom/taobao/accs/b/a;->b:Ljava/util/concurrent/ScheduledFuture;

    if-nez p1, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    :goto_1
    sput-object v2, Lcom/taobao/accs/b/a;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 71
    :goto_2
    :try_start_1
    sget-object p1, Lcom/taobao/accs/client/a;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/taobao/accs/b/a;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/accs/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "AntiBrush"

    const-string p2, "cookie invalid, clear"

    .line 73
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lcom/taobao/accs/b/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/b;->y(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_3
    const-string p2, "AntiBrush"

    const-string v2, "checkAntiBrush error"

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v2, p1, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    :goto_4
    return v0
.end method
