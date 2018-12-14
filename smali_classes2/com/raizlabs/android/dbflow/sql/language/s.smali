.class public Lcom/raizlabs/android/dbflow/sql/language/s;
.super Lcom/raizlabs/android/dbflow/sql/language/b;
.source "Where.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/b<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/b/d<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/raizlabs/android/dbflow/sql/language/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private b:Lcom/raizlabs/android/dbflow/sql/language/n;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/l;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/raizlabs/android/dbflow/sql/language/n;

.field private f:I

.field private g:I


# direct methods
.method public varargs constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/t;[Lcom/raizlabs/android/dbflow/sql/language/o;)V
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/sql/language/t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TTModel;>;[",
            "Lcom/raizlabs/android/dbflow/sql/language/o;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->h()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/b;-><init>(Ljava/lang/Class;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->c:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->d:Ljava/util/List;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->f:I

    .line 47
    iput v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->g:I

    .line 57
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->a:Lcom/raizlabs/android/dbflow/sql/language/t;

    .line 58
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/n;->i()Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->b:Lcom/raizlabs/android/dbflow/sql/language/n;

    .line 59
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/n;->i()Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->e:Lcom/raizlabs/android/dbflow/sql/language/n;

    .line 61
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->b:Lcom/raizlabs/android/dbflow/sql/language/n;

    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/n;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/n;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->a:Lcom/raizlabs/android/dbflow/sql/language/t;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->j()Lcom/raizlabs/android/dbflow/sql/b;

    move-result-object v0

    instance-of v0, v0, Lcom/raizlabs/android/dbflow/sql/language/q;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please use "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(). The beginning is not a ISelect"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/raizlabs/android/dbflow/sql/language/s;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/raizlabs/android/dbflow/sql/language/s<",
            "TTModel;>;"
        }
    .end annotation

    .line 158
    iput p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->f:I

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->a:Lcom/raizlabs/android/dbflow/sql/language/t;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Lcom/raizlabs/android/dbflow/sql/c;

    invoke-direct {v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>()V

    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    const-string v1, "WHERE"

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->b:Lcom/raizlabs/android/dbflow/sql/language/n;

    .line 191
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    const-string v1, "GROUP BY"

    const-string v2, ","

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->c:Ljava/util/List;

    .line 192
    invoke-static {v2, v3}, Lcom/raizlabs/android/dbflow/sql/c;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    const-string v1, "HAVING"

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->e:Lcom/raizlabs/android/dbflow/sql/language/n;

    .line 193
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    const-string v1, "ORDER BY"

    const-string v2, ","

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->d:Ljava/util/List;

    .line 194
    invoke-static {v2, v3}, Lcom/raizlabs/android/dbflow/sql/c;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    .line 196
    iget v1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->f:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const-string v1, "LIMIT"

    .line 197
    iget v3, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->f:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/raizlabs/android/dbflow/sql/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 199
    :cond_0
    iget v1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->g:I

    if-le v1, v2, :cond_1

    const-string v1, "OFFSET"

    .line 200
    iget v2, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 203
    :cond_1
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->a:Lcom/raizlabs/android/dbflow/sql/language/t;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->b()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    const-string v0, "query"

    .line 235
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/s;->a(Ljava/lang/String;)V

    .line 236
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 2
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 213
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->a:Lcom/raizlabs/android/dbflow/sql/language/t;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->j()Lcom/raizlabs/android/dbflow/sql/b;

    move-result-object v0

    instance-of v0, v0, Lcom/raizlabs/android/dbflow/sql/language/q;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/i;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object p1

    goto :goto_0

    .line 216
    :cond_0
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/b;->e(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    const-string v0, "query"

    .line 247
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/s;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 248
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/s;->a(I)Lcom/raizlabs/android/dbflow/sql/language/s;

    .line 249
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->h()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/b;->f()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/s;->e(Lcom/raizlabs/android/dbflow/structure/b/i;)Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object v0

    return-object v0
.end method
