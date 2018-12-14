.class public Lcom/raizlabs/android/dbflow/sql/language/q;
.super Ljava/lang/Object;
.source "Select.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# instance fields
.field private a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->a:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    .line 44
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 46
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/h<",
            "TTModel;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/h;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/h;-><init>(Lcom/raizlabs/android/dbflow/sql/b;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    .line 82
    iget v1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 83
    iget v1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->a:I

    if-nez v1, :cond_0

    const-string v1, "DISTINCT"

    .line 84
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    goto :goto_0

    .line 85
    :cond_0
    iget v1, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "ALL"

    .line 86
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 88
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    :cond_2
    const-string v1, ","

    .line 91
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/q;->b:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 92
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    .line 93
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/q;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
