.class public Lcom/raizlabs/android/dbflow/sql/a;
.super Ljava/lang/Object;
.source "BaseAsyncObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TAsync:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

.field private b:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

.field private c:Lcom/raizlabs/android/dbflow/structure/b/a/g;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/raizlabs/android/dbflow/config/b;

.field private final f:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

.field private final g:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/a$1;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/a$1;-><init>(Lcom/raizlabs/android/dbflow/sql/a;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a;->f:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 89
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/a$2;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/a$2;-><init>(Lcom/raizlabs/android/dbflow/sql/a;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a;->g:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 24
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a;->d:Ljava/lang/Class;

    .line 25
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a;->e:Lcom/raizlabs/android/dbflow/config/b;

    return-void
.end method

.method static synthetic a(Lcom/raizlabs/android/dbflow/sql/a;)Lcom/raizlabs/android/dbflow/structure/b/a/g$b;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/sql/a;->b:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    return-object p0
.end method

.method static synthetic a(Lcom/raizlabs/android/dbflow/sql/a;Lcom/raizlabs/android/dbflow/structure/b/a/g;)Lcom/raizlabs/android/dbflow/structure/b/a/g;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    return-object p1
.end method

.method static synthetic b(Lcom/raizlabs/android/dbflow/sql/a;)Lcom/raizlabs/android/dbflow/structure/b/a/g$c;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/sql/a;->a:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/g$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/g$b;",
            ")TTAsync;"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a;->b:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    return-object p0
.end method

.method public a()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->c()V

    :cond_0
    return-void
.end method

.method protected a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)V
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/a;->a()V

    .line 62
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a;->e:Lcom/raizlabs/android/dbflow/config/b;

    .line 63
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/b;->a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a;->f:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 64
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/a;->g:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 65
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    .line 67
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/a;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->b()V

    return-void
.end method

.method protected a(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected a(Lcom/raizlabs/android/dbflow/structure/b/a/g;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
