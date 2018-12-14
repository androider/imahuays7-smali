.class public abstract Lcom/taobao/accs/base/TaoBaseService;
.super Landroid/app/Service;
.source "Taobao"

# interfaces
.implements Lcom/taobao/accs/base/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;,
        Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;,
        Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    }
.end annotation


# instance fields
.field private a:Lcom/taobao/accs/base/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 97
    new-instance v0, Lcom/taobao/accs/base/g;

    invoke-direct {v0, p0}, Lcom/taobao/accs/base/g;-><init>(Lcom/taobao/accs/base/TaoBaseService;)V

    iput-object v0, p0, Lcom/taobao/accs/base/TaoBaseService;->a:Lcom/taobao/accs/base/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/taobao/accs/base/TaoBaseService;->a:Lcom/taobao/accs/base/a;

    invoke-virtual {v0, p1}, Lcom/taobao/accs/base/a;->a(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V

    return-void
.end method

.method public a(ZLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/taobao/accs/base/TaoBaseService;->a:Lcom/taobao/accs/base/a;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/base/a;->a(ZLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    return-void
.end method

.method public b(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/taobao/accs/base/TaoBaseService;->a:Lcom/taobao/accs/base/a;

    invoke-virtual {v0, p1}, Lcom/taobao/accs/base/a;->b(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 183
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 188
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 193
    invoke-static {p0, p1, p0}, Lcom/taobao/accs/base/a;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/taobao/accs/base/b;)I

    move-result p1

    return p1
.end method
