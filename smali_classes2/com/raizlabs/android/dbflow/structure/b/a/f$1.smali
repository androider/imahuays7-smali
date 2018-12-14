.class Lcom/raizlabs/android/dbflow/structure/b/a/f$1;
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
.field final synthetic a:Lcom/raizlabs/android/dbflow/sql/language/f;

.field final synthetic b:Lcom/raizlabs/android/dbflow/structure/b/a/f;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/f;Lcom/raizlabs/android/dbflow/sql/language/f;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$1;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$1;->a:Lcom/raizlabs/android/dbflow/sql/language/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$1;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f;

    iget-object v0, v0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f$b;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$1;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$1;->a:Lcom/raizlabs/android/dbflow/sql/language/f;

    invoke-interface {v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/f$b;->a(Lcom/raizlabs/android/dbflow/structure/b/a/f;Lcom/raizlabs/android/dbflow/sql/language/f;)V

    return-void
.end method
