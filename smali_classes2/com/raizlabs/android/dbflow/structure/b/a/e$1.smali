.class Lcom/raizlabs/android/dbflow/structure/b/a/e$1;
.super Ljava/lang/Object;
.source "ProcessModelTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raizlabs/android/dbflow/structure/b/a/e;->a(Lcom/raizlabs/android/dbflow/structure/b/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/raizlabs/android/dbflow/structure/b/a/e;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/e;IILjava/lang/Object;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$1;->d:Lcom/raizlabs/android/dbflow/structure/b/a/e;

    iput p2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$1;->a:I

    iput p3, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$1;->b:I

    iput-object p4, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$1;->d:Lcom/raizlabs/android/dbflow/structure/b/a/e;

    iget-object v1, v0, Lcom/raizlabs/android/dbflow/structure/b/a/e;->a:Lcom/raizlabs/android/dbflow/structure/b/a/e$b;

    iget v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$1;->a:I

    int-to-long v2, v0

    iget v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$1;->b:I

    int-to-long v4, v0

    iget-object v6, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$1;->c:Ljava/lang/Object;

    invoke-interface/range {v1 .. v6}, Lcom/raizlabs/android/dbflow/structure/b/a/e$b;->a(JJLjava/lang/Object;)V

    return-void
.end method
