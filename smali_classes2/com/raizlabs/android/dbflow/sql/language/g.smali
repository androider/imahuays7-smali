.class public Lcom/raizlabs/android/dbflow/sql/language/g;
.super Ljava/lang/Object;
.source "Delete.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 45
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/h;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/h;-><init>(Lcom/raizlabs/android/dbflow/sql/b;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/c;-><init>()V

    const-string v1, "DELETE"

    .line 51
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
