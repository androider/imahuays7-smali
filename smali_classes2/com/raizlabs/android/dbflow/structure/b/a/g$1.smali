.class Lcom/raizlabs/android/dbflow/structure/b/a/g$1;
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
.field final synthetic a:Lcom/raizlabs/android/dbflow/structure/b/a/g;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$1;->a:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$1;->a:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    iget-object v0, v0, Lcom/raizlabs/android/dbflow/structure/b/a/g;->b:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/g$1;->a:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    invoke-interface {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$c;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V

    return-void
.end method
