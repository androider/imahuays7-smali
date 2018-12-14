.class public final Lcom/mh/movie/core/a/a/b/c;
.super Ljava/lang/Object;
.source "DaggerTagComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/b/c$b;,
        Lcom/mh/movie/core/a/a/b/c$e;,
        Lcom/mh/movie/core/a/a/b/c$g;,
        Lcom/mh/movie/core/a/a/b/c$c;,
        Lcom/mh/movie/core/a/a/b/c$d;,
        Lcom/mh/movie/core/a/a/b/c$f;,
        Lcom/mh/movie/core/a/a/b/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/b/c$f;

.field private b:Lcom/mh/movie/core/a/a/b/c$d;

.field private c:Lcom/mh/movie/core/a/a/b/c$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/player/TagModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/b/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/b/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/b/c$g;

.field private h:Lcom/mh/movie/core/a/a/b/c$e;

.field private i:Lcom/mh/movie/core/a/a/b/c$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/b/c$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/b/c;->a(Lcom/mh/movie/core/a/a/b/c$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/b/c$a;Lcom/mh/movie/core/a/a/b/c$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/b/c;-><init>(Lcom/mh/movie/core/a/a/b/c$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/b/c$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/b/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/b/c$a;-><init>(Lcom/mh/movie/core/a/a/b/c$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/b/c$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/b/c$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/b/c$a;->a(Lcom/mh/movie/core/a/a/b/c$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/b/c$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/b/c;->a:Lcom/mh/movie/core/a/a/b/c$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/b/c$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/b/c$a;->a(Lcom/mh/movie/core/a/a/b/c$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/b/c$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/b/c;->b:Lcom/mh/movie/core/a/a/b/c$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/b/c$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/b/c$a;->a(Lcom/mh/movie/core/a/a/b/c$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/b/c$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/b/c;->c:Lcom/mh/movie/core/a/a/b/c$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/b/c;->a:Lcom/mh/movie/core/a/a/b/c$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/b/c;->b:Lcom/mh/movie/core/a/a/b/c$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/b/c;->c:Lcom/mh/movie/core/a/a/b/c$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/player/g;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/player/g;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/b/c;->d:Ljavax/inject/Provider;

    .line 70
    invoke-static {p1}, Lcom/mh/movie/core/a/a/b/c$a;->b(Lcom/mh/movie/core/a/a/b/c$a;)Lcom/mh/movie/core/a/b/b/j;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/b/c;->d:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/b/k;->a(Lcom/mh/movie/core/a/b/b/j;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/b/k;

    move-result-object v0

    .line 69
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/b/c;->e:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/b/c$a;->b(Lcom/mh/movie/core/a/a/b/c$a;)Lcom/mh/movie/core/a/b/b/j;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/b/l;->a(Lcom/mh/movie/core/a/b/b/j;)Lcom/mh/movie/core/a/b/b/l;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/b/c;->f:Ljavax/inject/Provider;

    .line 73
    new-instance v0, Lcom/mh/movie/core/a/a/b/c$g;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/b/c$a;->a(Lcom/mh/movie/core/a/a/b/c$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/b/c$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/b/c;->g:Lcom/mh/movie/core/a/a/b/c$g;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/b/c$e;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/b/c$a;->a(Lcom/mh/movie/core/a/a/b/c$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/b/c$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/b/c;->h:Lcom/mh/movie/core/a/a/b/c$e;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/b/c$b;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/b/c$a;->a(Lcom/mh/movie/core/a/a/b/c$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/b/c$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/b/c;->i:Lcom/mh/movie/core/a/a/b/c$b;

    .line 79
    iget-object v1, p0, Lcom/mh/movie/core/a/a/b/c;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/b/c;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/b/c;->g:Lcom/mh/movie/core/a/a/b/c$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/b/c;->c:Lcom/mh/movie/core/a/a/b/c$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/b/c;->h:Lcom/mh/movie/core/a/a/b/c$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/b/c;->i:Lcom/mh/movie/core/a/a/b/c$b;

    .line 81
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/player/p;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/player/p;

    move-result-object p1

    .line 80
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/b/c;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;)Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/a/a/b/c;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/b/c;->b(Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;)Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;

    return-void
.end method
