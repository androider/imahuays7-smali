.class public final Lcom/mh/movie/core/a/a/av;
.super Ljava/lang/Object;
.source "DaggerPartnerListComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/ct;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/av$b;,
        Lcom/mh/movie/core/a/a/av$e;,
        Lcom/mh/movie/core/a/a/av$g;,
        Lcom/mh/movie/core/a/a/av$c;,
        Lcom/mh/movie/core/a/a/av$d;,
        Lcom/mh/movie/core/a/a/av$f;,
        Lcom/mh/movie/core/a/a/av$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/av$f;

.field private b:Lcom/mh/movie/core/a/a/av$d;

.field private c:Lcom/mh/movie/core/a/a/av$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/PartnerListModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ak$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ak$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/av$g;

.field private h:Lcom/mh/movie/core/a/a/av$e;

.field private i:Lcom/mh/movie/core/a/a/av$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/PartnerListPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/av$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/av;->a(Lcom/mh/movie/core/a/a/av$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/av$a;Lcom/mh/movie/core/a/a/av$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/av;-><init>(Lcom/mh/movie/core/a/a/av$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/av$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/av$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/av$a;-><init>(Lcom/mh/movie/core/a/a/av$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/av$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/av$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/av$a;->a(Lcom/mh/movie/core/a/a/av$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/av$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/av;->a:Lcom/mh/movie/core/a/a/av$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/av$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/av$a;->a(Lcom/mh/movie/core/a/a/av$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/av$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/av;->b:Lcom/mh/movie/core/a/a/av$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/av$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/av$a;->a(Lcom/mh/movie/core/a/a/av$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/av$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/av;->c:Lcom/mh/movie/core/a/a/av$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/av;->a:Lcom/mh/movie/core/a/a/av$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/av;->b:Lcom/mh/movie/core/a/a/av$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/av;->c:Lcom/mh/movie/core/a/a/av$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/bm;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/bm;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/av;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/av$a;->b(Lcom/mh/movie/core/a/a/av$a;)Lcom/mh/movie/core/a/b/cp;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/av;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/cq;->a(Lcom/mh/movie/core/a/b/cp;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/cq;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/av;->e:Ljavax/inject/Provider;

    .line 75
    invoke-static {p1}, Lcom/mh/movie/core/a/a/av$a;->b(Lcom/mh/movie/core/a/a/av$a;)Lcom/mh/movie/core/a/b/cp;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/cr;->a(Lcom/mh/movie/core/a/b/cp;)Lcom/mh/movie/core/a/b/cr;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/av;->f:Ljavax/inject/Provider;

    .line 76
    new-instance v0, Lcom/mh/movie/core/a/a/av$g;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/av$a;->a(Lcom/mh/movie/core/a/a/av$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/av$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/av;->g:Lcom/mh/movie/core/a/a/av$g;

    .line 78
    new-instance v0, Lcom/mh/movie/core/a/a/av$e;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/av$a;->a(Lcom/mh/movie/core/a/a/av$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/av$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/av;->h:Lcom/mh/movie/core/a/a/av$e;

    .line 80
    new-instance v0, Lcom/mh/movie/core/a/a/av$b;

    .line 81
    invoke-static {p1}, Lcom/mh/movie/core/a/a/av$a;->a(Lcom/mh/movie/core/a/a/av$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/av$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/av;->i:Lcom/mh/movie/core/a/a/av$b;

    .line 82
    iget-object v1, p0, Lcom/mh/movie/core/a/a/av;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/av;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/av;->g:Lcom/mh/movie/core/a/a/av$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/av;->c:Lcom/mh/movie/core/a/a/av$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/av;->h:Lcom/mh/movie/core/a/a/av$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/av;->i:Lcom/mh/movie/core/a/a/av$b;

    .line 84
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/bt;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/bt;

    move-result-object p1

    .line 83
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/av;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;)Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/a/a/av;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/av;->b(Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;)Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;

    return-void
.end method
