.class Lanet/channel/g/g;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/request/d;

.field final synthetic b:Lanet/channel/statist/RequestStatistic;

.field final synthetic c:Lanet/channel/f;

.field final synthetic d:Lanet/channel/g/e;


# direct methods
.method constructor <init>(Lanet/channel/g/e;Lanet/channel/request/d;Lanet/channel/statist/RequestStatistic;Lanet/channel/f;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lanet/channel/g/g;->d:Lanet/channel/g/e;

    iput-object p2, p0, Lanet/channel/g/g;->a:Lanet/channel/request/d;

    iput-object p3, p0, Lanet/channel/g/g;->b:Lanet/channel/statist/RequestStatistic;

    iput-object p4, p0, Lanet/channel/g/g;->c:Lanet/channel/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 133
    iget-object v0, p0, Lanet/channel/g/g;->a:Lanet/channel/request/d;

    new-instance v1, Lanet/channel/g/h;

    invoke-direct {v1, p0}, Lanet/channel/g/h;-><init>(Lanet/channel/g/g;)V

    invoke-static {v0, v1}, Lanet/channel/g/c;->a(Lanet/channel/request/d;Lanet/channel/f;)Lanet/channel/g/c$a;

    return-void
.end method
