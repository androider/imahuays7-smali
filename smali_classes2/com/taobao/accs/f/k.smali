.class Lcom/taobao/accs/f/k;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/f/j;


# direct methods
.method constructor <init>(Lcom/taobao/accs/f/j;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/taobao/accs/f/k;->a:Lcom/taobao/accs/f/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 37
    invoke-static {}, Lanet/channel/strategy/h;->a()Lanet/channel/strategy/e;

    move-result-object v0

    invoke-interface {v0}, Lanet/channel/strategy/e;->b()V

    return-void
.end method
