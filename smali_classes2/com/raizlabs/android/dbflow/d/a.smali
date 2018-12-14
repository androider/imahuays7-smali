.class public abstract Lcom/raizlabs/android/dbflow/d/a;
.super Ljava/lang/Object;
.source "BaseTransactionManager.java"


# instance fields
.field private final a:Lcom/raizlabs/android/dbflow/structure/b/a/d;

.field private b:Lcom/raizlabs/android/dbflow/d/c;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/d;Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/raizlabs/android/dbflow/config/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/a;->a:Lcom/raizlabs/android/dbflow/structure/b/a/d;

    .line 21
    new-instance p1, Lcom/raizlabs/android/dbflow/d/c;

    invoke-direct {p1, p2}, Lcom/raizlabs/android/dbflow/d/c;-><init>(Lcom/raizlabs/android/dbflow/config/b;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/a;->b:Lcom/raizlabs/android/dbflow/d/c;

    .line 22
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/d/a;->b()V

    return-void
.end method


# virtual methods
.method public a()Lcom/raizlabs/android/dbflow/structure/b/a/d;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/a;->a:Lcom/raizlabs/android/dbflow/structure/b/a/d;

    return-object v0
.end method

.method public a(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/d/a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/d;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/d/a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/d;->a()V

    return-void
.end method

.method public b(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/d/a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/d;->b(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V

    return-void
.end method
