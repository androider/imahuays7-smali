.class Lanet/channel/status/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lanet/channel/status/a;


# direct methods
.method constructor <init>(Lanet/channel/status/a;Landroid/content/Context;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lanet/channel/status/d;->b:Lanet/channel/status/a;

    iput-object p2, p0, Lanet/channel/status/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 81
    iget-object v0, p0, Lanet/channel/status/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lanet/channel/status/c;->a(Landroid/content/Context;)V

    return-void
.end method
