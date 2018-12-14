.class public final Lcom/mh/movie/core/a/a/bm;
.super Ljava/lang/Object;
.source "DaggerSystemMessageComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/dk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bm$b;,
        Lcom/mh/movie/core/a/a/bm$e;,
        Lcom/mh/movie/core/a/a/bm$g;,
        Lcom/mh/movie/core/a/a/bm$c;,
        Lcom/mh/movie/core/a/a/bm$d;,
        Lcom/mh/movie/core/a/a/bm$f;,
        Lcom/mh/movie/core/a/a/bm$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bm$f;

.field private b:Lcom/mh/movie/core/a/a/bm$d;

.field private c:Lcom/mh/movie/core/a/a/bm$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/SystemMessageModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bc$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bc$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/bm$g;

.field private h:Lcom/mh/movie/core/a/a/bm$e;

.field private i:Lcom/mh/movie/core/a/a/bm$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/SystemMessagePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bm$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bm;->a(Lcom/mh/movie/core/a/a/bm$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bm$a;Lcom/mh/movie/core/a/a/bm$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bm;-><init>(Lcom/mh/movie/core/a/a/bm$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bm$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/bm$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bm$a;-><init>(Lcom/mh/movie/core/a/a/bm$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bm$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/bm$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bm$a;->a(Lcom/mh/movie/core/a/a/bm$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bm$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bm;->a:Lcom/mh/movie/core/a/a/bm$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/bm$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/bm$a;->a(Lcom/mh/movie/core/a/a/bm$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bm$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bm;->b:Lcom/mh/movie/core/a/a/bm$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/bm$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bm$a;->a(Lcom/mh/movie/core/a/a/bm$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bm$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bm;->c:Lcom/mh/movie/core/a/a/bm$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bm;->a:Lcom/mh/movie/core/a/a/bm$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bm;->b:Lcom/mh/movie/core/a/a/bm$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bm;->c:Lcom/mh/movie/core/a/a/bm$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/cw;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/cw;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bm;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bm$a;->b(Lcom/mh/movie/core/a/a/bm$a;)Lcom/mh/movie/core/a/b/er;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bm;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/es;->a(Lcom/mh/movie/core/a/b/er;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/es;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bm;->e:Ljavax/inject/Provider;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bm$a;->b(Lcom/mh/movie/core/a/a/bm$a;)Lcom/mh/movie/core/a/b/er;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/mh/movie/core/a/b/et;->a(Lcom/mh/movie/core/a/b/er;)Lcom/mh/movie/core/a/b/et;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bm;->f:Ljavax/inject/Provider;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/bm$g;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bm$a;->a(Lcom/mh/movie/core/a/a/bm$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bm$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bm;->g:Lcom/mh/movie/core/a/a/bm$g;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/bm$e;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bm$a;->a(Lcom/mh/movie/core/a/a/bm$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bm$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bm;->h:Lcom/mh/movie/core/a/a/bm$e;

    .line 81
    new-instance v0, Lcom/mh/movie/core/a/a/bm$b;

    .line 82
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bm$a;->a(Lcom/mh/movie/core/a/a/bm$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/bm$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bm;->i:Lcom/mh/movie/core/a/a/bm$b;

    .line 83
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bm;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bm;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bm;->g:Lcom/mh/movie/core/a/a/bm$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bm;->c:Lcom/mh/movie/core/a/a/bm$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bm;->h:Lcom/mh/movie/core/a/a/bm$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bm;->i:Lcom/mh/movie/core/a/a/bm$b;

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/df;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/df;

    move-result-object p1

    .line 84
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bm;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;)Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bm;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bm;->b(Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;)Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;

    return-void
.end method
