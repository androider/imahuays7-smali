.class public Lcom/raizlabs/android/dbflow/structure/a;
.super Lcom/raizlabs/android/dbflow/sql/a;
.source "AsyncModel.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/structure/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/a<",
        "Lcom/raizlabs/android/dbflow/structure/a<",
        "TTModel;>;>;",
        "Lcom/raizlabs/android/dbflow/structure/d;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTModel;"
        }
    .end annotation
.end field

.field private transient b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/raizlabs/android/dbflow/structure/a$a<",
            "TTModel;>;>;"
        }
    .end annotation
.end field

.field private c:Lcom/raizlabs/android/dbflow/structure/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/e<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/a;-><init>(Ljava/lang/Class;)V

    .line 38
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/a;->a:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/raizlabs/android/dbflow/structure/a;)Lcom/raizlabs/android/dbflow/structure/e;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/a;->b()Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object p0

    return-object p0
.end method

.method private b()Lcom/raizlabs/android/dbflow/structure/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/e<",
            "TTModel;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/a;->c:Lcom/raizlabs/android/dbflow/structure/e;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->h(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/a;->c:Lcom/raizlabs/android/dbflow/structure/e;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/a;->c:Lcom/raizlabs/android/dbflow/structure/e;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 165
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/a;->b:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/structure/a$a;

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/a;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/a$a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public save()Z
    .locals 2

    .line 66
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/a$1;

    invoke-direct {v1, p0}, Lcom/raizlabs/android/dbflow/structure/a$1;-><init>(Lcom/raizlabs/android/dbflow/structure/a;)V

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/a;->a:Ljava/lang/Object;

    .line 72
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)V

    const/4 v0, 0x0

    return v0
.end method
