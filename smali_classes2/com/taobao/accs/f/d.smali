.class Lcom/taobao/accs/f/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/f/c;


# direct methods
.method constructor <init>(Lcom/taobao/accs/f/c;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/taobao/accs/f/d;->a:Lcom/taobao/accs/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 130
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object v0

    const-class v1, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-interface {v0, v1}, Lanet/channel/b/b;->a(Ljava/lang/Class;)V

    .line 131
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object v0

    const-class v1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    invoke-interface {v0, v1}, Lanet/channel/b/b;->a(Ljava/lang/Class;)V

    .line 132
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object v0

    const-class v1, Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-interface {v0, v1}, Lanet/channel/b/b;->a(Ljava/lang/Class;)V

    return-void
.end method
