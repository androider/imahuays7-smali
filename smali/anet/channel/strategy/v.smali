.class Lanet/channel/strategy/v;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/strategy/u;


# direct methods
.method constructor <init>(Lanet/channel/strategy/u;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lanet/channel/strategy/v;->a:Lanet/channel/strategy/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 272
    iget-object v0, p0, Lanet/channel/strategy/v;->a:Lanet/channel/strategy/u;

    invoke-static {v0}, Lanet/channel/strategy/u;->a(Lanet/channel/strategy/u;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lanet/channel/strategy/v;->a:Lanet/channel/strategy/u;

    iget-object v0, v0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    invoke-virtual {v0}, Lanet/channel/strategy/j;->c()V

    :cond_0
    return-void
.end method
