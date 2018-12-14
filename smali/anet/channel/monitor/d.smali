.class Lanet/channel/monitor/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$a;


# instance fields
.field final synthetic a:Lanet/channel/monitor/c;


# direct methods
.method constructor <init>(Lanet/channel/monitor/c;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lanet/channel/monitor/d;->a:Lanet/channel/monitor/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lanet/channel/monitor/d;->a:Lanet/channel/monitor/c;

    invoke-static {p1}, Lanet/channel/monitor/c;->a(Lanet/channel/monitor/c;)Lanet/channel/monitor/e;

    move-result-object p1

    invoke-virtual {p1}, Lanet/channel/monitor/e;->a()V

    const-wide/16 v0, 0x0

    .line 47
    sput-wide v0, Lanet/channel/monitor/c;->f:J

    .line 48
    iget-object p1, p0, Lanet/channel/monitor/d;->a:Lanet/channel/monitor/c;

    invoke-virtual {p1}, Lanet/channel/monitor/c;->c()V

    return-void
.end method
