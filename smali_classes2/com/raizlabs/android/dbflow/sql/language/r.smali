.class public Lcom/raizlabs/android/dbflow/sql/language/r;
.super Ljava/lang/Object;
.source "Update.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b;"
    }
.end annotation


# instance fields
.field private a:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    const-string v1, "UPDATE "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/r;->a:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/r;->a:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    sget-object v2, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OR"

    .line 102
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/r;->a:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->a(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/r;->b:Ljava/lang/Class;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    .line 105
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
