.class public final Lcom/mh/movie/core/a/a/u;
.super Ljava/lang/Object;
.source "DaggerCommentComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/u$b;,
        Lcom/mh/movie/core/a/a/u$e;,
        Lcom/mh/movie/core/a/a/u$g;,
        Lcom/mh/movie/core/a/a/u$c;,
        Lcom/mh/movie/core/a/a/u$d;,
        Lcom/mh/movie/core/a/a/u$f;,
        Lcom/mh/movie/core/a/a/u$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/u$f;

.field private b:Lcom/mh/movie/core/a/a/u$d;

.field private c:Lcom/mh/movie/core/a/a/u$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/CommentModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/i$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/u$g;

.field private h:Lcom/mh/movie/core/a/a/u$e;

.field private i:Lcom/mh/movie/core/a/a/u$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/CommentPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/u$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/u;->a(Lcom/mh/movie/core/a/a/u$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/u$a;Lcom/mh/movie/core/a/a/u$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/u;-><init>(Lcom/mh/movie/core/a/a/u$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/u$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/u$a;-><init>(Lcom/mh/movie/core/a/a/u$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/u$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/u$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/u$a;->a(Lcom/mh/movie/core/a/a/u$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/u$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/u;->a:Lcom/mh/movie/core/a/a/u$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/u$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/u$a;->a(Lcom/mh/movie/core/a/a/u$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/u$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/u;->b:Lcom/mh/movie/core/a/a/u$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/u$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/u$a;->a(Lcom/mh/movie/core/a/a/u$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/u$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/u;->c:Lcom/mh/movie/core/a/a/u$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/u;->a:Lcom/mh/movie/core/a/a/u$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/u;->b:Lcom/mh/movie/core/a/a/u$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/u;->c:Lcom/mh/movie/core/a/a/u$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/u;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/u;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/u;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/u$a;->b(Lcom/mh/movie/core/a/a/u$a;)Lcom/mh/movie/core/a/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/u;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/af;->a(Lcom/mh/movie/core/a/b/ae;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/af;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/u;->e:Ljavax/inject/Provider;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/u$a;->b(Lcom/mh/movie/core/a/a/u$a;)Lcom/mh/movie/core/a/b/ae;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/ag;->a(Lcom/mh/movie/core/a/b/ae;)Lcom/mh/movie/core/a/b/ag;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/u;->f:Ljavax/inject/Provider;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/u$g;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/u$a;->a(Lcom/mh/movie/core/a/a/u$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/u$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/u;->g:Lcom/mh/movie/core/a/a/u$g;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/u$e;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/u$a;->a(Lcom/mh/movie/core/a/a/u$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/u$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/u;->h:Lcom/mh/movie/core/a/a/u$e;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/u$b;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/u$a;->a(Lcom/mh/movie/core/a/a/u$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/u$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/u;->i:Lcom/mh/movie/core/a/a/u$b;

    .line 81
    iget-object v1, p0, Lcom/mh/movie/core/a/a/u;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/u;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/u;->g:Lcom/mh/movie/core/a/a/u$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/u;->c:Lcom/mh/movie/core/a/a/u$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/u;->h:Lcom/mh/movie/core/a/a/u$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/u;->i:Lcom/mh/movie/core/a/a/u$b;

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/u;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/u;

    move-result-object p1

    .line 82
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/u;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/a/a/u;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/f;->a(Lcom/jess/arms/a/e;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/u;->b(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    return-void
.end method
