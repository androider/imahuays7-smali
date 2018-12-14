.class public final Lcom/mh/movie/core/a/a/t;
.super Ljava/lang/Object;
.source "DaggerCollectionComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/t$b;,
        Lcom/mh/movie/core/a/a/t$e;,
        Lcom/mh/movie/core/a/a/t$g;,
        Lcom/mh/movie/core/a/a/t$c;,
        Lcom/mh/movie/core/a/a/t$d;,
        Lcom/mh/movie/core/a/a/t$f;,
        Lcom/mh/movie/core/a/a/t$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/t$f;

.field private b:Lcom/mh/movie/core/a/a/t$d;

.field private c:Lcom/mh/movie/core/a/a/t$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/CollectionModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/t$g;

.field private h:Lcom/mh/movie/core/a/a/t$e;

.field private i:Lcom/mh/movie/core/a/a/t$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/t$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/t;->a(Lcom/mh/movie/core/a/a/t$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/t$a;Lcom/mh/movie/core/a/a/t$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/t;-><init>(Lcom/mh/movie/core/a/a/t$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/t$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/t$a;-><init>(Lcom/mh/movie/core/a/a/t$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/t$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/t$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/t$a;->a(Lcom/mh/movie/core/a/a/t$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/t$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/t;->a:Lcom/mh/movie/core/a/a/t$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/t$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/t$a;->a(Lcom/mh/movie/core/a/a/t$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/t$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/t;->b:Lcom/mh/movie/core/a/a/t$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/t$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/t$a;->a(Lcom/mh/movie/core/a/a/t$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/t$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/t;->c:Lcom/mh/movie/core/a/a/t$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/t;->a:Lcom/mh/movie/core/a/a/t$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/t;->b:Lcom/mh/movie/core/a/a/t$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/t;->c:Lcom/mh/movie/core/a/a/t$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/o;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/o;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/t;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/t$a;->b(Lcom/mh/movie/core/a/a/t$a;)Lcom/mh/movie/core/a/b/v;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/t;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/w;->a(Lcom/mh/movie/core/a/b/v;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/w;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/t;->e:Ljavax/inject/Provider;

    .line 75
    invoke-static {p1}, Lcom/mh/movie/core/a/a/t$a;->b(Lcom/mh/movie/core/a/a/t$a;)Lcom/mh/movie/core/a/b/v;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/x;->a(Lcom/mh/movie/core/a/b/v;)Lcom/mh/movie/core/a/b/x;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/t;->f:Ljavax/inject/Provider;

    .line 76
    new-instance v0, Lcom/mh/movie/core/a/a/t$g;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/t$a;->a(Lcom/mh/movie/core/a/a/t$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/t$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/t;->g:Lcom/mh/movie/core/a/a/t$g;

    .line 78
    new-instance v0, Lcom/mh/movie/core/a/a/t$e;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/t$a;->a(Lcom/mh/movie/core/a/a/t$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/t$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/t;->h:Lcom/mh/movie/core/a/a/t$e;

    .line 80
    new-instance v0, Lcom/mh/movie/core/a/a/t$b;

    .line 81
    invoke-static {p1}, Lcom/mh/movie/core/a/a/t$a;->a(Lcom/mh/movie/core/a/a/t$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/t$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/t;->i:Lcom/mh/movie/core/a/a/t$b;

    .line 82
    iget-object v1, p0, Lcom/mh/movie/core/a/a/t;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/t;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/t;->g:Lcom/mh/movie/core/a/a/t$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/t;->c:Lcom/mh/movie/core/a/a/t$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/t;->h:Lcom/mh/movie/core/a/a/t$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/t;->i:Lcom/mh/movie/core/a/a/t$b;

    .line 84
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/o;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/o;

    move-result-object p1

    .line 83
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/t;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;)Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/a/a/t;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/t;->b(Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;)Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;

    return-void
.end method
