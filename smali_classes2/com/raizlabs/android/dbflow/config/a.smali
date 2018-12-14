.class public final Lcom/raizlabs/android/dbflow/config/a;
.super Ljava/lang/Object;
.source "DatabaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/config/a$b;,
        Lcom/raizlabs/android/dbflow/config/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/raizlabs/android/dbflow/config/a$a;

.field private final b:Lcom/raizlabs/android/dbflow/config/a$b;

.field private final c:Lcom/raizlabs/android/dbflow/structure/b/f;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/raizlabs/android/dbflow/d/e;

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/g;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/config/g<",
            "TTModel;>;"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/a;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/config/g;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/a;->f:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/raizlabs/android/dbflow/config/a$a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/a;->a:Lcom/raizlabs/android/dbflow/config/a$a;

    return-object v0
.end method

.method public e()Lcom/raizlabs/android/dbflow/structure/b/f;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/a;->c:Lcom/raizlabs/android/dbflow/structure/b/f;

    return-object v0
.end method

.method public f()Lcom/raizlabs/android/dbflow/config/a$b;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/a;->b:Lcom/raizlabs/android/dbflow/config/a$b;

    return-object v0
.end method

.method public g()Lcom/raizlabs/android/dbflow/d/e;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/a;->e:Lcom/raizlabs/android/dbflow/d/e;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/g;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/a;->d:Ljava/util/Map;

    return-object v0
.end method
