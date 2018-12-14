.class Lcom/raizlabs/android/dbflow/structure/b/a/g$2;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raizlabs/android/dbflow/structure/b/a/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/raizlabs/android/dbflow/structure/b/a/g;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/g;Ljava/lang/Throwable;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$2;->b:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$2;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$2;->b:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    iget-object v0, v0, Lcom/raizlabs/android/dbflow/structure/b/a/g;->a:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$2;->b:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$2;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/g$b;->onError(Lcom/raizlabs/android/dbflow/structure/b/a/g;Ljava/lang/Throwable;)V

    return-void
.end method
