.class public final Lcom/mh/movie/core/a/a/ad;
.super Ljava/lang/Object;
.source "DaggerFeedBackMessageComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/cb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/ad$b;,
        Lcom/mh/movie/core/a/a/ad$e;,
        Lcom/mh/movie/core/a/a/ad$g;,
        Lcom/mh/movie/core/a/a/ad$c;,
        Lcom/mh/movie/core/a/a/ad$d;,
        Lcom/mh/movie/core/a/a/ad$f;,
        Lcom/mh/movie/core/a/a/ad$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/ad$f;

.field private b:Lcom/mh/movie/core/a/a/ad$d;

.field private c:Lcom/mh/movie/core/a/a/ad$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/FeedBackMessageModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/r$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/ad$g;

.field private h:Lcom/mh/movie/core/a/a/ad$e;

.field private i:Lcom/mh/movie/core/a/a/ad$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/FeedBackMessagePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/ad$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ad;->a(Lcom/mh/movie/core/a/a/ad$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/ad$a;Lcom/mh/movie/core/a/a/ad$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ad;-><init>(Lcom/mh/movie/core/a/a/ad$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/ad$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/ad$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ad$a;-><init>(Lcom/mh/movie/core/a/a/ad$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/ad$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/ad$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ad$a;->a(Lcom/mh/movie/core/a/a/ad$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ad$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ad;->a:Lcom/mh/movie/core/a/a/ad$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/ad$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/ad$a;->a(Lcom/mh/movie/core/a/a/ad$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ad$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ad;->b:Lcom/mh/movie/core/a/a/ad$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/ad$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ad$a;->a(Lcom/mh/movie/core/a/a/ad$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ad$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ad;->c:Lcom/mh/movie/core/a/a/ad$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ad;->a:Lcom/mh/movie/core/a/a/ad$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ad;->b:Lcom/mh/movie/core/a/a/ad$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ad;->c:Lcom/mh/movie/core/a/a/ad$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/ag;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/ag;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ad;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ad$a;->b(Lcom/mh/movie/core/a/a/ad$a;)Lcom/mh/movie/core/a/b/at;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ad;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/au;->a(Lcom/mh/movie/core/a/b/at;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/au;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ad;->e:Ljavax/inject/Provider;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ad$a;->b(Lcom/mh/movie/core/a/a/ad$a;)Lcom/mh/movie/core/a/b/at;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/mh/movie/core/a/b/av;->a(Lcom/mh/movie/core/a/b/at;)Lcom/mh/movie/core/a/b/av;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ad;->f:Ljavax/inject/Provider;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/ad$g;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ad$a;->a(Lcom/mh/movie/core/a/a/ad$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ad$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ad;->g:Lcom/mh/movie/core/a/a/ad$g;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/ad$e;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ad$a;->a(Lcom/mh/movie/core/a/a/ad$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ad$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ad;->h:Lcom/mh/movie/core/a/a/ad$e;

    .line 81
    new-instance v0, Lcom/mh/movie/core/a/a/ad$b;

    .line 82
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ad$a;->a(Lcom/mh/movie/core/a/a/ad$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/ad$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ad;->i:Lcom/mh/movie/core/a/a/ad$b;

    .line 83
    iget-object v1, p0, Lcom/mh/movie/core/a/a/ad;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ad;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/ad;->g:Lcom/mh/movie/core/a/a/ad$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/ad;->c:Lcom/mh/movie/core/a/a/ad$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/ad;->h:Lcom/mh/movie/core/a/a/ad$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/ad;->i:Lcom/mh/movie/core/a/a/ad$b;

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/aj;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/aj;

    move-result-object p1

    .line 84
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/ad;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;)Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ad;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ad;->b(Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;)Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;

    return-void
.end method
