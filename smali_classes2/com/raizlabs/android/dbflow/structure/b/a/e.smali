.class public Lcom/raizlabs/android/dbflow/structure/b/a/e;
.super Ljava/lang/Object;
.source "ProcessModelTransaction.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/structure/b/a/e$a;,
        Lcom/raizlabs/android/dbflow/structure/b/a/e$b;,
        Lcom/raizlabs/android/dbflow/structure/b/a/e$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/structure/b/a/c;"
    }
.end annotation


# instance fields
.field final a:Lcom/raizlabs/android/dbflow/structure/b/a/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field final c:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$c<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field final d:Z


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$a<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a:Lcom/raizlabs/android/dbflow/structure/b/a/e$b;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e;->a:Lcom/raizlabs/android/dbflow/structure/b/a/e$b;

    .line 58
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e;->b:Ljava/util/List;

    .line 59
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/e$a;)Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e;->c:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    .line 60
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->b(Lcom/raizlabs/android/dbflow/structure/b/a/e$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 9

    .line 65
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 68
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 69
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e;->c:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    invoke-interface {v2, v8, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$c;->a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V

    .line 71
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e;->a:Lcom/raizlabs/android/dbflow/structure/b/a/e$b;

    if-eqz v2, :cond_1

    .line 72
    iget-boolean v2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e;->d:Z

    if-eqz v2, :cond_0

    .line 73
    iget-object v3, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e;->a:Lcom/raizlabs/android/dbflow/structure/b/a/e$b;

    int-to-long v4, v1

    int-to-long v6, v0

    invoke-interface/range {v3 .. v8}, Lcom/raizlabs/android/dbflow/structure/b/a/e$b;->a(JJLjava/lang/Object;)V

    goto :goto_1

    .line 76
    :cond_0
    invoke-static {}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->a()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/raizlabs/android/dbflow/structure/b/a/e$1;

    invoke-direct {v3, p0, v1, v0, v8}, Lcom/raizlabs/android/dbflow/structure/b/a/e$1;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e;IILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
