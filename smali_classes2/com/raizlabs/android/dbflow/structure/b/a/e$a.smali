.class public final Lcom/raizlabs/android/dbflow/structure/b/a/e$a;
.super Ljava/lang/Object;
.source "ProcessModelTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/raizlabs/android/dbflow/structure/b/a/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$c<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/e$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$c<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->b:Ljava/util/List;

    .line 102
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    return-void
.end method

.method static synthetic a(Lcom/raizlabs/android/dbflow/structure/b/a/e$a;)Lcom/raizlabs/android/dbflow/structure/b/a/e$c;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    return-object p0
.end method

.method static synthetic b(Lcom/raizlabs/android/dbflow/structure/b/a/e$a;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->d:Z

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$a<",
            "TTModel;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public a()Lcom/raizlabs/android/dbflow/structure/b/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/b/a/e<",
            "TTModel;>;"
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/e;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/b/a/e;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$a;)V

    return-object v0
.end method
