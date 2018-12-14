.class public final Lcom/mh/movie/core/a/a/au;
.super Ljava/lang/Object;
.source "DaggerPartnerComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/cs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/au$b;,
        Lcom/mh/movie/core/a/a/au$e;,
        Lcom/mh/movie/core/a/a/au$g;,
        Lcom/mh/movie/core/a/a/au$c;,
        Lcom/mh/movie/core/a/a/au$d;,
        Lcom/mh/movie/core/a/a/au$f;,
        Lcom/mh/movie/core/a/a/au$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/au$f;

.field private b:Lcom/mh/movie/core/a/a/au$d;

.field private c:Lcom/mh/movie/core/a/a/au$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/PartnerModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/aj$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/aj$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/au$g;

.field private h:Lcom/mh/movie/core/a/a/au$e;

.field private i:Lcom/mh/movie/core/a/a/au$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/au$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/au;->a(Lcom/mh/movie/core/a/a/au$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/au$a;Lcom/mh/movie/core/a/a/au$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/au;-><init>(Lcom/mh/movie/core/a/a/au$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/au$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/au$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/au$a;-><init>(Lcom/mh/movie/core/a/a/au$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/au$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/au$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/au$a;->a(Lcom/mh/movie/core/a/a/au$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/au$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/au;->a:Lcom/mh/movie/core/a/a/au$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/au$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/au$a;->a(Lcom/mh/movie/core/a/a/au$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/au$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/au;->b:Lcom/mh/movie/core/a/a/au$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/au$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/au$a;->a(Lcom/mh/movie/core/a/a/au$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/au$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/au;->c:Lcom/mh/movie/core/a/a/au$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/au;->a:Lcom/mh/movie/core/a/a/au$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/au;->b:Lcom/mh/movie/core/a/a/au$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/au;->c:Lcom/mh/movie/core/a/a/au$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/bo;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/bo;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/au;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/au$a;->b(Lcom/mh/movie/core/a/a/au$a;)Lcom/mh/movie/core/a/b/cs;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/au;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/ct;->a(Lcom/mh/movie/core/a/b/cs;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/ct;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/au;->e:Ljavax/inject/Provider;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/au$a;->b(Lcom/mh/movie/core/a/a/au$a;)Lcom/mh/movie/core/a/b/cs;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/cu;->a(Lcom/mh/movie/core/a/b/cs;)Lcom/mh/movie/core/a/b/cu;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/au;->f:Ljavax/inject/Provider;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/au$g;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/au$a;->a(Lcom/mh/movie/core/a/a/au$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/au$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/au;->g:Lcom/mh/movie/core/a/a/au$g;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/au$e;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/au$a;->a(Lcom/mh/movie/core/a/a/au$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/au$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/au;->h:Lcom/mh/movie/core/a/a/au$e;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/au$b;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/au$a;->a(Lcom/mh/movie/core/a/a/au$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/au$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/au;->i:Lcom/mh/movie/core/a/a/au$b;

    .line 81
    iget-object v1, p0, Lcom/mh/movie/core/a/a/au;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/au;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/au;->g:Lcom/mh/movie/core/a/a/au$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/au;->c:Lcom/mh/movie/core/a/a/au$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/au;->h:Lcom/mh/movie/core/a/a/au$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/au;->i:Lcom/mh/movie/core/a/a/au$b;

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/bv;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/bv;

    move-result-object p1

    .line 82
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/au;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;)Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/a/a/au;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/au;->b(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;)Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;

    return-void
.end method
