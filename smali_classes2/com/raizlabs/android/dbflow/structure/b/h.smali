.class public Lcom/raizlabs/android/dbflow/structure/b/h;
.super Lcom/raizlabs/android/dbflow/structure/b/d;
.source "DatabaseStatementWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/structure/b/d;"
    }
.end annotation


# instance fields
.field private final a:Lcom/raizlabs/android/dbflow/structure/b/g;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/raizlabs/android/dbflow/sql/language/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/d<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/raizlabs/android/dbflow/sql/language/d;)V
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/sql/language/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/g;",
            "Lcom/raizlabs/android/dbflow/sql/language/d<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/b/d;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    .line 22
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->b:Lcom/raizlabs/android/dbflow/sql/language/d;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 29
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->a()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object v2

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->b:Lcom/raizlabs/android/dbflow/sql/language/d;

    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/language/d;->h()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->b:Lcom/raizlabs/android/dbflow/sql/language/d;

    .line 30
    invoke-virtual {v4}, Lcom/raizlabs/android/dbflow/sql/language/d;->b()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v4

    .line 29
    invoke-virtual {v2, v3, v4}, Lcom/raizlabs/android/dbflow/d/f;->a(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    :cond_0
    return-wide v0
.end method

.method public a(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(I)V

    return-void
.end method

.method public a(IJ)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b()V

    return-void
.end method

.method public c()J
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->a:Lcom/raizlabs/android/dbflow/structure/b/g;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 60
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->a()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object v2

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->b:Lcom/raizlabs/android/dbflow/sql/language/d;

    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/language/d;->h()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/raizlabs/android/dbflow/structure/b/h;->b:Lcom/raizlabs/android/dbflow/sql/language/d;

    .line 61
    invoke-virtual {v4}, Lcom/raizlabs/android/dbflow/sql/language/d;->b()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v4

    .line 60
    invoke-virtual {v2, v3, v4}, Lcom/raizlabs/android/dbflow/d/f;->a(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    :cond_0
    return-wide v0
.end method
