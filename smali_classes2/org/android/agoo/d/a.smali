.class public abstract Lorg/android/agoo/d/a;
.super Landroid/app/Service;
.source "Taobao"


# instance fields
.field a:Lorg/android/agoo/e/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Lorg/android/agoo/d/b;

    invoke-direct {v0, p0}, Lorg/android/agoo/d/b;-><init>(Lorg/android/agoo/d/a;)V

    iput-object v0, p0, Lorg/android/agoo/d/a;->a:Lorg/android/agoo/e/b$a;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    const-string v0, "MessageReceiverService"

    const-string v1, "Message receiver aidl was binded {}"

    const/4 v2, 0x1

    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "org.android.agoo.client.MessageReceiverService"

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lorg/android/agoo/d/a;->a:Lorg/android/agoo/e/b$a;

    return-object p1

    .line 40
    :cond_0
    iget-object p1, p0, Lorg/android/agoo/d/a;->a:Lorg/android/agoo/e/b$a;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
