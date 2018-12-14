.class public Lcom/raizlabs/android/dbflow/sql/language/h;
.super Lcom/raizlabs/android/dbflow/sql/language/e;
.source "From.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/e<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/raizlabs/android/dbflow/sql/b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/raizlabs/android/dbflow/sql/language/l;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/Join;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/b;Ljava/lang/Class;)V
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/sql/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b;",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p2}, Lcom/raizlabs/android/dbflow/sql/language/e;-><init>(Ljava/lang/Class;)V

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->c:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->a:Lcom/raizlabs/android/dbflow/sql/b;

    return-void
.end method

.method private k()Lcom/raizlabs/android/dbflow/sql/language/l;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->b:Lcom/raizlabs/android/dbflow/sql/language/l;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/l$a;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/h;->h()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->a()Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->b:Lcom/raizlabs/android/dbflow/sql/language/l;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->b:Lcom/raizlabs/android/dbflow/sql/language/l;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 205
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/c;-><init>()V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->a:Lcom/raizlabs/android/dbflow/sql/b;

    .line 206
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/sql/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->a:Lcom/raizlabs/android/dbflow/sql/b;

    instance-of v1, v1, Lcom/raizlabs/android/dbflow/sql/language/r;

    if-nez v1, :cond_0

    const-string v1, "FROM "

    .line 208
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/h;->k()Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 213
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->a:Lcom/raizlabs/android/dbflow/sql/b;

    instance-of v1, v1, Lcom/raizlabs/android/dbflow/sql/language/q;

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/sql/language/Join;

    .line 218
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/Join;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    .line 224
    :cond_3
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->a:Lcom/raizlabs/android/dbflow/sql/b;

    instance-of v0, v0, Lcom/raizlabs/android/dbflow/sql/language/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->DELETE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    :goto_0
    return-object v0
.end method

.method public j()Lcom/raizlabs/android/dbflow/sql/b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->a:Lcom/raizlabs/android/dbflow/sql/b;

    return-object v0
.end method
