.class public final Lcom/mh/movie/core/a/a/aw;
.super Ljava/lang/Object;
.source "DaggerPartnerRightComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/cu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/aw$b;,
        Lcom/mh/movie/core/a/a/aw$e;,
        Lcom/mh/movie/core/a/a/aw$g;,
        Lcom/mh/movie/core/a/a/aw$c;,
        Lcom/mh/movie/core/a/a/aw$d;,
        Lcom/mh/movie/core/a/a/aw$f;,
        Lcom/mh/movie/core/a/a/aw$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/aw$f;

.field private b:Lcom/mh/movie/core/a/a/aw$d;

.field private c:Lcom/mh/movie/core/a/a/aw$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/PartnerRightModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/al$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/al$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/aw$g;

.field private h:Lcom/mh/movie/core/a/a/aw$e;

.field private i:Lcom/mh/movie/core/a/a/aw$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/aw$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/aw;->a(Lcom/mh/movie/core/a/a/aw$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/aw$a;Lcom/mh/movie/core/a/a/aw$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/aw;-><init>(Lcom/mh/movie/core/a/a/aw$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/aw$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/aw$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/aw$a;-><init>(Lcom/mh/movie/core/a/a/aw$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/aw$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/aw$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/aw$a;->a(Lcom/mh/movie/core/a/a/aw$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/aw$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aw;->a:Lcom/mh/movie/core/a/a/aw$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/aw$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/aw$a;->a(Lcom/mh/movie/core/a/a/aw$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/aw$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aw;->b:Lcom/mh/movie/core/a/a/aw$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/aw$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/aw$a;->a(Lcom/mh/movie/core/a/a/aw$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/aw$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aw;->c:Lcom/mh/movie/core/a/a/aw$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/aw;->a:Lcom/mh/movie/core/a/a/aw$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/aw;->b:Lcom/mh/movie/core/a/a/aw$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/aw;->c:Lcom/mh/movie/core/a/a/aw$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/bq;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/bq;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aw;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/aw$a;->b(Lcom/mh/movie/core/a/a/aw$a;)Lcom/mh/movie/core/a/b/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/aw;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/cw;->a(Lcom/mh/movie/core/a/b/cv;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/cw;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aw;->e:Ljavax/inject/Provider;

    .line 75
    invoke-static {p1}, Lcom/mh/movie/core/a/a/aw$a;->b(Lcom/mh/movie/core/a/a/aw$a;)Lcom/mh/movie/core/a/b/cv;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/cx;->a(Lcom/mh/movie/core/a/b/cv;)Lcom/mh/movie/core/a/b/cx;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aw;->f:Ljavax/inject/Provider;

    .line 76
    new-instance v0, Lcom/mh/movie/core/a/a/aw$g;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/aw$a;->a(Lcom/mh/movie/core/a/a/aw$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/aw$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aw;->g:Lcom/mh/movie/core/a/a/aw$g;

    .line 78
    new-instance v0, Lcom/mh/movie/core/a/a/aw$e;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/aw$a;->a(Lcom/mh/movie/core/a/a/aw$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/aw$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aw;->h:Lcom/mh/movie/core/a/a/aw$e;

    .line 80
    new-instance v0, Lcom/mh/movie/core/a/a/aw$b;

    .line 81
    invoke-static {p1}, Lcom/mh/movie/core/a/a/aw$a;->a(Lcom/mh/movie/core/a/a/aw$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/aw$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/aw;->i:Lcom/mh/movie/core/a/a/aw$b;

    .line 82
    iget-object v1, p0, Lcom/mh/movie/core/a/a/aw;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/aw;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/aw;->g:Lcom/mh/movie/core/a/a/aw$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/aw;->c:Lcom/mh/movie/core/a/a/aw$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/aw;->h:Lcom/mh/movie/core/a/a/aw$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/aw;->i:Lcom/mh/movie/core/a/a/aw$b;

    .line 84
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/bx;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/bx;

    move-result-object p1

    .line 83
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/aw;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;)Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/a/a/aw;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/aw;->b(Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;)Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;

    return-void
.end method
