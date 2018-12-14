.class public final Lcom/mh/movie/core/a/a/be;
.super Ljava/lang/Object;
.source "DaggerRuleComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/dc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/be$b;,
        Lcom/mh/movie/core/a/a/be$e;,
        Lcom/mh/movie/core/a/a/be$g;,
        Lcom/mh/movie/core/a/a/be$c;,
        Lcom/mh/movie/core/a/a/be$d;,
        Lcom/mh/movie/core/a/a/be$f;,
        Lcom/mh/movie/core/a/a/be$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/be$f;

.field private b:Lcom/mh/movie/core/a/a/be$d;

.field private c:Lcom/mh/movie/core/a/a/be$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/RuleModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/at$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/at$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/be$g;

.field private h:Lcom/mh/movie/core/a/a/be$e;

.field private i:Lcom/mh/movie/core/a/a/be$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/RulePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/be$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/be;->a(Lcom/mh/movie/core/a/a/be$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/be$a;Lcom/mh/movie/core/a/a/be$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/be;-><init>(Lcom/mh/movie/core/a/a/be$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/be$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/be$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/be$a;-><init>(Lcom/mh/movie/core/a/a/be$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/be$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/be$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/be$a;->a(Lcom/mh/movie/core/a/a/be$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/be$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/be;->a:Lcom/mh/movie/core/a/a/be$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/be$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/be$a;->a(Lcom/mh/movie/core/a/a/be$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/be$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/be;->b:Lcom/mh/movie/core/a/a/be$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/be$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/be$a;->a(Lcom/mh/movie/core/a/a/be$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/be$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/be;->c:Lcom/mh/movie/core/a/a/be$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/be;->a:Lcom/mh/movie/core/a/a/be$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/be;->b:Lcom/mh/movie/core/a/a/be$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/be;->c:Lcom/mh/movie/core/a/a/be$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/cg;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/cg;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/be;->d:Ljavax/inject/Provider;

    .line 70
    invoke-static {p1}, Lcom/mh/movie/core/a/a/be$a;->b(Lcom/mh/movie/core/a/a/be$a;)Lcom/mh/movie/core/a/b/dt;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/be;->d:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/du;->a(Lcom/mh/movie/core/a/b/dt;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/du;

    move-result-object v0

    .line 69
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/be;->e:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/be$a;->b(Lcom/mh/movie/core/a/a/be$a;)Lcom/mh/movie/core/a/b/dt;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/dv;->a(Lcom/mh/movie/core/a/b/dt;)Lcom/mh/movie/core/a/b/dv;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/be;->f:Ljavax/inject/Provider;

    .line 73
    new-instance v0, Lcom/mh/movie/core/a/a/be$g;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/be$a;->a(Lcom/mh/movie/core/a/a/be$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/be$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/be;->g:Lcom/mh/movie/core/a/a/be$g;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/be$e;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/be$a;->a(Lcom/mh/movie/core/a/a/be$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/be$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/be;->h:Lcom/mh/movie/core/a/a/be$e;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/be$b;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/be$a;->a(Lcom/mh/movie/core/a/a/be$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/be$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/be;->i:Lcom/mh/movie/core/a/a/be$b;

    .line 79
    iget-object v1, p0, Lcom/mh/movie/core/a/a/be;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/be;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/be;->g:Lcom/mh/movie/core/a/a/be$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/be;->c:Lcom/mh/movie/core/a/a/be$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/be;->h:Lcom/mh/movie/core/a/a/be$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/be;->i:Lcom/mh/movie/core/a/a/be$b;

    .line 81
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/cn;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/cn;

    move-result-object p1

    .line 80
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/be;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;)Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/a/a/be;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/be;->b(Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;)Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;

    return-void
.end method
