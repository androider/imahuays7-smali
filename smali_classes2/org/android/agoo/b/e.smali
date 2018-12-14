.class Lorg/android/agoo/b/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

.field final synthetic d:Lorg/android/agoo/b/a;


# direct methods
.method constructor <init>(Lorg/android/agoo/b/a;[BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/android/agoo/b/e;->d:Lorg/android/agoo/b/a;

    iput-object p2, p0, Lorg/android/agoo/b/e;->a:[B

    iput-object p3, p0, Lorg/android/agoo/b/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/android/agoo/b/e;->c:Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 135
    iget-object v0, p0, Lorg/android/agoo/b/e;->d:Lorg/android/agoo/b/a;

    iget-object v1, p0, Lorg/android/agoo/b/e;->a:[B

    iget-object v2, p0, Lorg/android/agoo/b/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/android/agoo/b/e;->c:Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/android/agoo/b/a;->a([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;Z)Landroid/os/Bundle;

    return-void
.end method
