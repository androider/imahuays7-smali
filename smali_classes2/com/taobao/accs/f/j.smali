.class Lcom/taobao/accs/f/j;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/a/c$a;


# instance fields
.field final synthetic a:Lcom/taobao/accs/f/i;


# direct methods
.method constructor <init>(Lcom/taobao/accs/f/i;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/taobao/accs/f/j;->a:Lcom/taobao/accs/f/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/strategy/a/b;)V
    .locals 3

    .line 34
    new-instance p1, Lcom/taobao/accs/f/k;

    invoke-direct {p1, p0}, Lcom/taobao/accs/f/k;-><init>(Lcom/taobao/accs/f/j;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7d0

    invoke-static {p1, v1, v2, v0}, Lcom/taobao/accs/common/a;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
