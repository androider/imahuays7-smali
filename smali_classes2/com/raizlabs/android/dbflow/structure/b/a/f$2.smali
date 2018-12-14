.class Lcom/raizlabs/android/dbflow/structure/b/a/f$2;
.super Ljava/lang/Object;
.source "QueryTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raizlabs/android/dbflow/structure/b/a/f;->a(Lcom/raizlabs/android/dbflow/structure/b/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/raizlabs/android/dbflow/structure/b/a/f;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/f;Ljava/util/List;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$2;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$2;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f;

    iget-object v0, v0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->c:Lcom/raizlabs/android/dbflow/structure/b/a/f$c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$2;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$2;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/f$c;->onListQueryResult(Lcom/raizlabs/android/dbflow/structure/b/a/f;Ljava/util/List;)V

    return-void
.end method
