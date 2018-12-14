.class Lorg/android/agoo/d/b;
.super Lorg/android/agoo/e/b$a;
.source "Taobao"


# instance fields
.field final synthetic a:Lorg/android/agoo/d/a;


# direct methods
.method constructor <init>(Lorg/android/agoo/d/a;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lorg/android/agoo/d/b;->a:Lorg/android/agoo/d/a;

    invoke-direct {p0}, Lorg/android/agoo/e/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/android/agoo/d/b;->a:Lorg/android/agoo/d/a;

    invoke-virtual {v0}, Lorg/android/agoo/d/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/d/b;->a:Lorg/android/agoo/d/a;

    iget-object v2, p0, Lorg/android/agoo/d/b;->a:Lorg/android/agoo/d/a;

    invoke-virtual {v2}, Lorg/android/agoo/d/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/d/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/android/agoo/b/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
