.class public final Lcom/mh/movie/core/a/a/v;
.super Ljava/lang/Object;
.source "DaggerCommentDetailComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/v$b;,
        Lcom/mh/movie/core/a/a/v$e;,
        Lcom/mh/movie/core/a/a/v$g;,
        Lcom/mh/movie/core/a/a/v$c;,
        Lcom/mh/movie/core/a/a/v$d;,
        Lcom/mh/movie/core/a/a/v$f;,
        Lcom/mh/movie/core/a/a/v$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/v$f;

.field private b:Lcom/mh/movie/core/a/a/v$d;

.field private c:Lcom/mh/movie/core/a/a/v$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/CommentDetailModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/v$g;

.field private h:Lcom/mh/movie/core/a/a/v$e;

.field private i:Lcom/mh/movie/core/a/a/v$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/v$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/v;->a(Lcom/mh/movie/core/a/a/v$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/v$a;Lcom/mh/movie/core/a/a/v$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/v;-><init>(Lcom/mh/movie/core/a/a/v$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/v$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/v$a;-><init>(Lcom/mh/movie/core/a/a/v$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/v$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/v$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/v$a;->a(Lcom/mh/movie/core/a/a/v$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/v$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/v;->a:Lcom/mh/movie/core/a/a/v$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/v$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/v$a;->a(Lcom/mh/movie/core/a/a/v$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/v$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/v;->b:Lcom/mh/movie/core/a/a/v$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/v$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/v$a;->a(Lcom/mh/movie/core/a/a/v$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/v$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/v;->c:Lcom/mh/movie/core/a/a/v$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/v;->a:Lcom/mh/movie/core/a/a/v$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/v;->b:Lcom/mh/movie/core/a/a/v$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/v;->c:Lcom/mh/movie/core/a/a/v$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/q;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/q;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/v;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/v$a;->b(Lcom/mh/movie/core/a/a/v$a;)Lcom/mh/movie/core/a/b/y;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/v;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/z;->a(Lcom/mh/movie/core/a/b/y;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/z;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/v;->e:Ljavax/inject/Provider;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/v$a;->b(Lcom/mh/movie/core/a/a/v$a;)Lcom/mh/movie/core/a/b/y;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/mh/movie/core/a/b/aa;->a(Lcom/mh/movie/core/a/b/y;)Lcom/mh/movie/core/a/b/aa;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/v;->f:Ljavax/inject/Provider;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/v$g;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/v$a;->a(Lcom/mh/movie/core/a/a/v$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/v$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/v;->g:Lcom/mh/movie/core/a/a/v$g;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/v$e;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/v$a;->a(Lcom/mh/movie/core/a/a/v$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/v$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/v;->h:Lcom/mh/movie/core/a/a/v$e;

    .line 81
    new-instance v0, Lcom/mh/movie/core/a/a/v$b;

    .line 82
    invoke-static {p1}, Lcom/mh/movie/core/a/a/v$a;->a(Lcom/mh/movie/core/a/a/v$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/v$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/v;->i:Lcom/mh/movie/core/a/a/v$b;

    .line 83
    iget-object v1, p0, Lcom/mh/movie/core/a/a/v;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/v;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/v;->g:Lcom/mh/movie/core/a/a/v$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/v;->c:Lcom/mh/movie/core/a/a/v$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/v;->h:Lcom/mh/movie/core/a/a/v$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/v;->i:Lcom/mh/movie/core/a/a/v$b;

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/q;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/q;

    move-result-object p1

    .line 84
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/v;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;)Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/a/a/v;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/v;->b(Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;)Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;

    return-void
.end method
