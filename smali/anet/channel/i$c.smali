.class Lanet/channel/i$c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lanet/channel/i;


# direct methods
.method constructor <init>(Lanet/channel/i;Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lanet/channel/i$c;->b:Lanet/channel/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lanet/channel/i$c;->a:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lanet/channel/i$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 98
    iget-object v0, p0, Lanet/channel/i$c;->b:Lanet/channel/i;

    iget-boolean v0, v0, Lanet/channel/i;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "awcn.SessionRequest"

    const-string v1, "Connecting timeout!!! reset status!"

    .line 99
    iget-object v2, p0, Lanet/channel/i$c;->a:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lanet/channel/i$c;->b:Lanet/channel/i;

    iget-object v0, v0, Lanet/channel/i;->e:Lanet/channel/Session;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lanet/channel/i$c;->b:Lanet/channel/i;

    iget-object v0, v0, Lanet/channel/i;->e:Lanet/channel/Session;

    iput-boolean v3, v0, Lanet/channel/Session;->r:Z

    .line 102
    iget-object v0, p0, Lanet/channel/i$c;->b:Lanet/channel/i;

    iget-object v0, v0, Lanet/channel/i;->e:Lanet/channel/Session;

    invoke-virtual {v0}, Lanet/channel/Session;->c()V

    .line 104
    :cond_0
    iget-object v0, p0, Lanet/channel/i$c;->b:Lanet/channel/i;

    invoke-virtual {v0, v3}, Lanet/channel/i;->a(Z)V

    :cond_1
    return-void
.end method
