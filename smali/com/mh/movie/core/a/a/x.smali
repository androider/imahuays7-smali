.class public final Lcom/mh/movie/core/a/a/x;
.super Ljava/lang/Object;
.source "DaggerConCurrentComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/x$b;,
        Lcom/mh/movie/core/a/a/x$e;,
        Lcom/mh/movie/core/a/a/x$g;,
        Lcom/mh/movie/core/a/a/x$c;,
        Lcom/mh/movie/core/a/a/x$d;,
        Lcom/mh/movie/core/a/a/x$f;,
        Lcom/mh/movie/core/a/a/x$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/x$f;

.field private b:Lcom/mh/movie/core/a/a/x$d;

.field private c:Lcom/mh/movie/core/a/a/x$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/ConCurrentModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/l$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/x$g;

.field private h:Lcom/mh/movie/core/a/a/x$e;

.field private i:Lcom/mh/movie/core/a/a/x$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/ConCurrentPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/x$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/x;->a(Lcom/mh/movie/core/a/a/x$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/x$a;Lcom/mh/movie/core/a/a/x$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/x;-><init>(Lcom/mh/movie/core/a/a/x$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/x$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/x$a;-><init>(Lcom/mh/movie/core/a/a/x$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/x$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/x$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/x$a;->a(Lcom/mh/movie/core/a/a/x$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/x$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/x;->a:Lcom/mh/movie/core/a/a/x$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/x$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/x$a;->a(Lcom/mh/movie/core/a/a/x$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/x$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/x;->b:Lcom/mh/movie/core/a/a/x$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/x$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/x$a;->a(Lcom/mh/movie/core/a/a/x$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/x$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/x;->c:Lcom/mh/movie/core/a/a/x$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/x;->a:Lcom/mh/movie/core/a/a/x$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/x;->b:Lcom/mh/movie/core/a/a/x$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/x;->c:Lcom/mh/movie/core/a/a/x$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/w;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/w;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/x;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/x$a;->b(Lcom/mh/movie/core/a/a/x$a;)Lcom/mh/movie/core/mvp/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/x;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/c/b;->a(Lcom/mh/movie/core/mvp/c/a;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/c/b;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/x;->e:Ljavax/inject/Provider;

    .line 75
    invoke-static {p1}, Lcom/mh/movie/core/a/a/x$a;->b(Lcom/mh/movie/core/a/a/x$a;)Lcom/mh/movie/core/mvp/c/a;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/c/c;->a(Lcom/mh/movie/core/mvp/c/a;)Lcom/mh/movie/core/mvp/c/c;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/x;->f:Ljavax/inject/Provider;

    .line 76
    new-instance v0, Lcom/mh/movie/core/a/a/x$g;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/x$a;->a(Lcom/mh/movie/core/a/a/x$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/x$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/x;->g:Lcom/mh/movie/core/a/a/x$g;

    .line 78
    new-instance v0, Lcom/mh/movie/core/a/a/x$e;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/x$a;->a(Lcom/mh/movie/core/a/a/x$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/x$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/x;->h:Lcom/mh/movie/core/a/a/x$e;

    .line 80
    new-instance v0, Lcom/mh/movie/core/a/a/x$b;

    .line 81
    invoke-static {p1}, Lcom/mh/movie/core/a/a/x$a;->a(Lcom/mh/movie/core/a/a/x$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/x$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/x;->i:Lcom/mh/movie/core/a/a/x$b;

    .line 82
    iget-object v1, p0, Lcom/mh/movie/core/a/a/x;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/x;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/x;->g:Lcom/mh/movie/core/a/a/x$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/x;->c:Lcom/mh/movie/core/a/a/x$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/x;->h:Lcom/mh/movie/core/a/a/x$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/x;->i:Lcom/mh/movie/core/a/a/x$b;

    .line 84
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/w;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/w;

    move-result-object p1

    .line 83
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/x;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;)Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/a/a/x;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/x;->b(Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;)Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;

    return-void
.end method
