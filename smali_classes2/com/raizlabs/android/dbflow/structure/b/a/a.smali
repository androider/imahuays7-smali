.class public Lcom/raizlabs/android/dbflow/structure/b/a/a;
.super Lcom/raizlabs/android/dbflow/d/a;
.source "DefaultTransactionManager.java"


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 2
    .param p1    # Lcom/raizlabs/android/dbflow/config/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/b;

    const-string v1, "DBFlow Transaction Queue"

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/raizlabs/android/dbflow/d/a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/d;Lcom/raizlabs/android/dbflow/config/b;)V

    return-void
.end method
