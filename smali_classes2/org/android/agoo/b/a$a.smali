.class Lorg/android/agoo/b/a$a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/b/a;

.field private b:Landroid/content/Intent;

.field private c:Ljava/lang/String;

.field private d:Lorg/android/agoo/e/b;

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Lorg/android/agoo/b/a;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lorg/android/agoo/b/a$a;->a:Lorg/android/agoo/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Lorg/android/agoo/b/a$a;->c:Ljava/lang/String;

    .line 619
    iput-object p3, p0, Lorg/android/agoo/b/a$a;->b:Landroid/content/Intent;

    .line 620
    iput-object p0, p0, Lorg/android/agoo/b/a$a;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lorg/android/agoo/b/a$a;)Landroid/content/Intent;
    .locals 0

    .line 609
    iget-object p0, p0, Lorg/android/agoo/b/a$a;->b:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic a(Lorg/android/agoo/b/a$a;Lorg/android/agoo/e/b;)Lorg/android/agoo/e/b;
    .locals 0

    .line 609
    iput-object p1, p0, Lorg/android/agoo/b/a$a;->d:Lorg/android/agoo/e/b;

    return-object p1
.end method

.method static synthetic b(Lorg/android/agoo/b/a$a;)Lorg/android/agoo/e/b;
    .locals 0

    .line 609
    iget-object p0, p0, Lorg/android/agoo/b/a$a;->d:Lorg/android/agoo/e/b;

    return-object p0
.end method

.method static synthetic c(Lorg/android/agoo/b/a$a;)Landroid/content/ServiceConnection;
    .locals 0

    .line 609
    iget-object p0, p0, Lorg/android/agoo/b/a$a;->e:Landroid/content/ServiceConnection;

    return-object p0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "AgooFactory"

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageConnection conneted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    invoke-static {p2}, Lorg/android/agoo/e/b$a;->a(Landroid/os/IBinder;)Lorg/android/agoo/e/b;

    move-result-object p1

    iput-object p1, p0, Lorg/android/agoo/b/a$a;->d:Lorg/android/agoo/e/b;

    const-string p1, "AgooFactory"

    .line 632
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConnected current tid:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "AgooFactory"

    .line 633
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MessageConnection sent:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/android/agoo/b/a$a;->b:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    iget-object p1, p0, Lorg/android/agoo/b/a$a;->d:Lorg/android/agoo/e/b;

    if-eqz p1, :cond_0

    .line 635
    iget-object p1, p0, Lorg/android/agoo/b/a$a;->a:Lorg/android/agoo/b/a;

    invoke-static {p1}, Lorg/android/agoo/b/a;->b(Lorg/android/agoo/b/a;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    new-instance p2, Lorg/android/agoo/b/h;

    invoke-direct {p2, p0}, Lorg/android/agoo/b/h;-><init>(Lorg/android/agoo/b/a$a;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "AgooFactory"

    const-string v0, "MessageConnection disConnected"

    const/4 v1, 0x0

    .line 625
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
