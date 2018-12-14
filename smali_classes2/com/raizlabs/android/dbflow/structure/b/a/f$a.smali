.class public final Lcom/raizlabs/android/dbflow/structure/b/a/f$a;
.super Ljava/lang/Object;
.source "QueryTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/b/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/raizlabs/android/dbflow/sql/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field b:Lcom/raizlabs/android/dbflow/structure/b/a/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$b<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field c:Lcom/raizlabs/android/dbflow/structure/b/a/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$c<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field d:Lcom/raizlabs/android/dbflow/structure/b/a/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$d<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field e:Z


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/b/d;)V
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/sql/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;->a:Lcom/raizlabs/android/dbflow/sql/b/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/raizlabs/android/dbflow/structure/b/a/f$b;)Lcom/raizlabs/android/dbflow/structure/b/a/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$b<",
            "TTResult;>;)",
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$a<",
            "TTResult;>;"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f$b;

    return-object p0
.end method

.method public a(Lcom/raizlabs/android/dbflow/structure/b/a/f$c;)Lcom/raizlabs/android/dbflow/structure/b/a/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$c<",
            "TTResult;>;)",
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$a<",
            "TTResult;>;"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/f$c;

    return-object p0
.end method

.method public a(Lcom/raizlabs/android/dbflow/structure/b/a/f$d;)Lcom/raizlabs/android/dbflow/structure/b/a/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$d<",
            "TTResult;>;)",
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$a<",
            "TTResult;>;"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;->d:Lcom/raizlabs/android/dbflow/structure/b/a/f$d;

    return-object p0
.end method

.method public a()Lcom/raizlabs/android/dbflow/structure/b/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/b/a/f<",
            "TTResult;>;"
        }
    .end annotation

    .line 180
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/f;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/b/a/f;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/f$a;)V

    return-object v0
.end method
