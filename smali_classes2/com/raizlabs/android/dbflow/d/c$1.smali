.class Lcom/raizlabs/android/dbflow/d/c$1;
.super Ljava/lang/Object;
.source "DBBatchSaveQueue.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/raizlabs/android/dbflow/d/c;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/d/c;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/c$1;->a:Lcom/raizlabs/android/dbflow/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 0

    .line 239
    instance-of p2, p1, Lcom/raizlabs/android/dbflow/structure/d;

    if-eqz p2, :cond_0

    .line 240
    check-cast p1, Lcom/raizlabs/android/dbflow/structure/d;

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/d;->save()Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 244
    invoke-static {p2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->h(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/raizlabs/android/dbflow/structure/e;->save(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
