.class Lorg/android/agoo/b/f;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/android/agoo/b/a;


# direct methods
.method constructor <init>(Lorg/android/agoo/b/a;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lorg/android/agoo/b/f;->a:Lorg/android/agoo/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 346
    iget-object v0, p0, Lorg/android/agoo/b/f;->a:Lorg/android/agoo/b/a;

    invoke-static {v0}, Lorg/android/agoo/b/a;->a(Lorg/android/agoo/b/a;)Lorg/android/agoo/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/android/agoo/d/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "AgooFactory"

    const-string v2, "reportCacheMsg"

    const/4 v3, 0x2

    .line 348
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "size"

    aput-object v5, v3, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/android/agoo/a/c;

    if-eqz v1, :cond_0

    .line 351
    iput-boolean v5, v1, Lorg/android/agoo/a/c;->m:Z

    .line 352
    iget-object v2, p0, Lorg/android/agoo/b/f;->a:Lorg/android/agoo/b/a;

    iget-object v2, v2, Lorg/android/agoo/b/a;->a:Lorg/android/agoo/b/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/android/agoo/b/c;->b(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method
