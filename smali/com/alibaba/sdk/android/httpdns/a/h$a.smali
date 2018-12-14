.class Lcom/alibaba/sdk/android/httpdns/a/h$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/httpdns/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/a/h;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/a/h;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/a/h$a;->a:Lcom/alibaba/sdk/android/httpdns/a/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/h$a;->a:Lcom/alibaba/sdk/android/httpdns/a/h;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/httpdns/a/h;->a(Lcom/alibaba/sdk/android/httpdns/a/h;Landroid/content/Context;)V

    return-void
.end method
