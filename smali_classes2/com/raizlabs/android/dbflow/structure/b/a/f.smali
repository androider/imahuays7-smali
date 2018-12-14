.class public Lcom/raizlabs/android/dbflow/structure/b/a/f;
.super Ljava/lang/Object;
.source "QueryTransaction.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/structure/b/a/f$a;,
        Lcom/raizlabs/android/dbflow/structure/b/a/f$d;,
        Lcom/raizlabs/android/dbflow/structure/b/a/f$c;,
        Lcom/raizlabs/android/dbflow/structure/b/a/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/structure/b/a/c;"
    }
.end annotation


# instance fields
.field final a:Lcom/raizlabs/android/dbflow/sql/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field final b:Lcom/raizlabs/android/dbflow/structure/b/a/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$b<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field final c:Lcom/raizlabs/android/dbflow/structure/b/a/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$c<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field final d:Lcom/raizlabs/android/dbflow/structure/b/a/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$d<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field final e:Z


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$a<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;->a:Lcom/raizlabs/android/dbflow/sql/b/d;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->a:Lcom/raizlabs/android/dbflow/sql/b/d;

    .line 74
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f$b;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f$b;

    .line 75
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/f$c;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->c:Lcom/raizlabs/android/dbflow/structure/b/a/f$c;

    .line 76
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;->d:Lcom/raizlabs/android/dbflow/structure/b/a/f$d;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->d:Lcom/raizlabs/android/dbflow/structure/b/a/f$d;

    .line 77
    iget-boolean p1, p1, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;->e:Z

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 3

    .line 82
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->a:Lcom/raizlabs/android/dbflow/sql/b/d;

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/b/d;->c()Lcom/raizlabs/android/dbflow/sql/language/f;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f$b;

    if-eqz v0, :cond_1

    .line 84
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->e:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f$b;

    invoke-interface {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/f$b;->a(Lcom/raizlabs/android/dbflow/structure/b/a/f;Lcom/raizlabs/android/dbflow/sql/language/f;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/f$1;

    invoke-direct {v1, p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/f$1;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/f;Lcom/raizlabs/android/dbflow/sql/language/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->c:Lcom/raizlabs/android/dbflow/structure/b/a/f$c;

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/f;->a()Ljava/util/List;

    move-result-object v0

    .line 98
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->e:Z

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->c:Lcom/raizlabs/android/dbflow/structure/b/a/f$c;

    invoke-interface {v1, p0, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/f$c;->onListQueryResult(Lcom/raizlabs/android/dbflow/structure/b/a/f;Ljava/util/List;)V

    goto :goto_1

    .line 101
    :cond_2
    invoke-static {}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/raizlabs/android/dbflow/structure/b/a/f$2;

    invoke-direct {v2, p0, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/f$2;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/f;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->d:Lcom/raizlabs/android/dbflow/structure/b/a/f$d;

    if-eqz v0, :cond_5

    .line 111
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/f;->b()Ljava/lang/Object;

    move-result-object p1

    .line 112
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->e:Z

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->d:Lcom/raizlabs/android/dbflow/structure/b/a/f$d;

    invoke-interface {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/f$d;->a(Lcom/raizlabs/android/dbflow/structure/b/a/f;Ljava/lang/Object;)V

    goto :goto_2

    .line 115
    :cond_4
    invoke-static {}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/f$3;

    invoke-direct {v1, p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/f$3;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/f;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_2
    return-void
.end method
