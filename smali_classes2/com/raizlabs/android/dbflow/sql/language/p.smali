.class public Lcom/raizlabs/android/dbflow/sql/language/p;
.super Ljava/lang/Object;
.source "SQLite.java"


# direct methods
.method public static varargs a([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 21
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/q;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/q;-><init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    return-object v0
.end method

.method public static varargs b([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 33
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/q;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/k;->a([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/k;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/q;-><init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    return-object v0
.end method
