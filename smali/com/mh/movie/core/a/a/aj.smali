.class public final Lcom/mh/movie/core/a/a/aj;
.super Ljava/lang/Object;
.source "DaggerLikeComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/aj$b;,
        Lcom/mh/movie/core/a/a/aj$e;,
        Lcom/mh/movie/core/a/a/aj$g;,
        Lcom/mh/movie/core/a/a/aj$c;,
        Lcom/mh/movie/core/a/a/aj$d;,
        Lcom/mh/movie/core/a/a/aj$f;,
        Lcom/mh/movie/core/a/a/aj$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/aj$f;

.field private b:Lcom/mh/movie/core/a/a/aj$d;

.field private c:Lcom/mh/movie/core/a/a/aj$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/player/LikeModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/b/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/aj$g;

.field private h:Lcom/mh/movie/core/a/a/aj$e;

.field private i:Lcom/mh/movie/core/a/a/aj$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/player/LikePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/aj$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/aj;->a(Lcom/mh/movie/core/a/a/aj$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/aj$a;Lcom/mh/movie/core/a/a/aj$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/aj;-><init>(Lcom/mh/movie/core/a/a/aj$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/aj$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/aj$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/aj$a;-><init>(Lcom/mh/movie/core/a/a/aj$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/aj$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/aj$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/aj$a;->a(Lcom/mh/movie/core/a/a/aj$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/aj$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aj;->a:Lcom/mh/movie/core/a/a/aj$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/aj$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/aj$a;->a(Lcom/mh/movie/core/a/a/aj$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/aj$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aj;->b:Lcom/mh/movie/core/a/a/aj$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/aj$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/aj$a;->a(Lcom/mh/movie/core/a/a/aj$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/aj$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aj;->c:Lcom/mh/movie/core/a/a/aj$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/aj;->a:Lcom/mh/movie/core/a/a/aj$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/aj;->b:Lcom/mh/movie/core/a/a/aj$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/aj;->c:Lcom/mh/movie/core/a/a/aj$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/player/a;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/player/a;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aj;->d:Ljavax/inject/Provider;

    .line 70
    invoke-static {p1}, Lcom/mh/movie/core/a/a/aj$a;->b(Lcom/mh/movie/core/a/a/aj$a;)Lcom/mh/movie/core/a/b/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/aj;->d:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/b/b;->a(Lcom/mh/movie/core/a/b/b/a;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/b/b;

    move-result-object v0

    .line 69
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aj;->e:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/aj$a;->b(Lcom/mh/movie/core/a/a/aj$a;)Lcom/mh/movie/core/a/b/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/b/c;->a(Lcom/mh/movie/core/a/b/b/a;)Lcom/mh/movie/core/a/b/b/c;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aj;->f:Ljavax/inject/Provider;

    .line 73
    new-instance v0, Lcom/mh/movie/core/a/a/aj$g;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/aj$a;->a(Lcom/mh/movie/core/a/a/aj$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/aj$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aj;->g:Lcom/mh/movie/core/a/a/aj$g;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/aj$e;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/aj$a;->a(Lcom/mh/movie/core/a/a/aj$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/aj$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aj;->h:Lcom/mh/movie/core/a/a/aj$e;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/aj$b;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/aj$a;->a(Lcom/mh/movie/core/a/a/aj$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/aj$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aj;->i:Lcom/mh/movie/core/a/a/aj$b;

    .line 79
    iget-object v1, p0, Lcom/mh/movie/core/a/a/aj;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/aj;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/aj;->g:Lcom/mh/movie/core/a/a/aj$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/aj;->c:Lcom/mh/movie/core/a/a/aj$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/aj;->h:Lcom/mh/movie/core/a/a/aj$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/aj;->i:Lcom/mh/movie/core/a/a/aj$b;

    .line 81
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/player/a;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/player/a;

    move-result-object p1

    .line 80
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/aj;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;)Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/a/a/aj;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/aj;->b(Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;)Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;

    return-void
.end method
